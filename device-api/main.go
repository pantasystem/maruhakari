package main

import (
	"bytes"
	"device-api/pkg/handler/config"
	"encoding/json"
	"fmt"
	"io"
	"net/http"

	"device-api/pkg/schema"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

func main() {
	fmt.Printf("Hello, world.\n")
	err := godotenv.Load()
	if err != nil {
		fmt.Printf("Error loading .env file: %v\n", err)
		panic(err)
	}
	config := config.Config{}
	err = config.LoadFromEnv()
	if err != nil {
		fmt.Printf("Error loading config from env: %v\n", err)
		panic(err)
	}

	engine := gin.Default()
	engine.POST("api/v1/measurement-histories", func(c *gin.Context) {
		var req schema.RecordHistoryRequest
		err := c.BindJSON(&req)
		if err != nil {
			c.JSON(400, gin.H{
				"message": "Bad Request",
			})
			return
		}

		baseUrl := config.CoreApiBaseUrl
		payload, err := json.Marshal(req)
		if err != nil {
			c.JSON(500, gin.H{
				"message": "Internal Server Error",
			})
			return
		}
		httpClient := http.Client{}
		cr, err := http.NewRequest(http.MethodPost, baseUrl+"/api/v1/measurement-histories", bytes.NewBuffer(payload))
		if err != nil {
			c.JSON(500, gin.H{
				"message": "Internal Server Error",
			})
			return
		}
		cr.Header.Set("Content-Type", "application/json")
		resp, err := httpClient.Do(cr)
		if err != nil {
			c.JSON(500, gin.H{
				"message": "Internal Server Error",
			})
			return
		}
		defer resp.Body.Close()
		bodyBytes, err := io.ReadAll(resp.Body)
		if err != nil {
			c.JSON(500, gin.H{
				"message": "Internal Server Error",
			})
			return
		}
		var measurementHistory schema.MeasurementHistory
		err = json.Unmarshal(bodyBytes, &measurementHistory)
		if err != nil {
			fmt.Println("Error unmarshalling response body:", err)
			c.JSON(500, gin.H{
				"message": "Internal Server Error",
			})
			return
		}
		fmt.Printf("measurementHistory: %+v\n", measurementHistory)
		c.Status(resp.StatusCode)

	})

	engine.Run(fmt.Sprintf(":%d", config.Port))

}
