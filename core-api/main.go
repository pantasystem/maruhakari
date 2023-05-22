package main

import (
	"core-api/pkg/config"
	"core-api/pkg/entity"
	"core-api/pkg/handler/endpoint"
	"core-api/pkg/module"
	"fmt"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
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
	setupHandler := endpoint.SetupHandler{
		Module: m,
	}
	schemaModule := endpoint.ModuleImpl{
		Module: m,
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
