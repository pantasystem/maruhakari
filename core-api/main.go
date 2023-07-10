package main

import (
	"context"
	"core-api/pkg/config"
	"core-api/pkg/entity"
	"core-api/pkg/handler/endpoint"
	"core-api/pkg/module"
	"encoding/base64"
	"errors"
	"fmt"
	"log"
	"os"

	firebase "firebase.google.com/go"
	"firebase.google.com/go/messaging"
	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
	"golang.org/x/oauth2/google"
	"google.golang.org/api/option"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

func main() {
	fmt.Printf("Start Server!!\n")
	err := godotenv.Load(".env")
	if err != nil {
		fmt.Printf("Error loading .env file")
		panic(err)
	}

	config := &config.Config{}
	config.LoadFromEnv()
	db, err := gorm.Open(postgres.Open(config.Dsn), &gorm.Config{})
	if err != nil {
		fmt.Printf("Error connecting to database")
		panic(err)
	}

	db.AutoMigrate(&entity.Account{}, &entity.ContainerTemplate{}, &entity.Device{}, &entity.Food{}, &entity.FoodTemplate{}, &entity.MeasurementHistory{})
	m := &module.ModuleImpl{
		DB: db,
	}
	engine := gin.Default()
	fac, err := setupFirebase()
	if err != nil {
		panic(err)
	}

	setupHandler := endpoint.SetupHandler{
		Module: m,
	}
	schemaModule := endpoint.ModuleImpl{
		Module:                 m,
		FirebaseMssagingClient: fac,
	}
	setupHandler.Setup(engine, &schemaModule)
	engine.Run(fmt.Sprintf(":%d", config.Port))
	// listener, err := net.Listen("tcp", fmt.Sprintf(":%d", config.Port))
	// if err != nil {
	// 	fmt.Printf("Error starting the server")
	// 	panic(err)
	// }
	// m := &module.ModuleImpl{
	// 	DB: db,
	// }

	// s := handler.Setup(m)
	// go func() {
	// 	fmt.Printf("start gRPC server port: %v", config.Port)
	// 	s.Serve(listener)
	// }()

	// quit := make(chan os.Signal, 1)
	// signal.Notify(quit, os.Interrupt)
	// <-quit
	// fmt.Println("stopping gRPC server...")
	// s.GracefulStop()
}

func setupFirebase() (*messaging.Client, error) {
	ctx := context.Background()
	encodedKey := os.Getenv("BASE64_FIREBASE_KEYFILE_JSON")
	if encodedKey == "" {
		fmt.Println("BASE64_FIREBASE_KEYFILE_JSON is not set")
		return nil, errors.New("BASE64_FIREBASE_KEYFILE_JSON is not set")
	}

	// base64デコード
	decodedKey, err := base64.StdEncoding.DecodeString(encodedKey)
	if err != nil {
		fmt.Println("Failed to decode base64:", err)
		return nil, err
	}

	credentials, err := google.CredentialsFromJSON(ctx, decodedKey)
	if err != nil {
		log.Printf("error credentials from json: %v\n", err)
	}
	sa := option.WithCredentials(credentials)
	app, err := firebase.NewApp(ctx, nil, sa)
	if err != nil {
		log.Fatalln(err)
		return nil, err
	}

	client, err := app.Messaging(ctx)
	if err != nil {
		log.Fatalln(err)
		return nil, err
	}

	return client, nil
}
