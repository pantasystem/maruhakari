package main

import (
	"context"
	"core-api/pkg/config"
	"core-api/pkg/entity"
	"core-api/pkg/module"
	"core-api/pkg/seeder"
	"fmt"

	"github.com/joho/godotenv"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

func main() {
	fmt.Printf("Start Server!!\n")
	err := godotenv.Load("../.env")
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

	ctx := context.Background()
	seeder.Seed(ctx, m)
}
