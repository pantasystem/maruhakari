package config

import (
	"os"
	"strconv"
)

type Config struct {
	CoreApiBaseUrl string
	Port           int
}

func (c *Config) LoadFromEnv() error {
	c.CoreApiBaseUrl = os.Getenv("CORE_API_BASE_URL")
	p, e := strconv.Atoi(os.Getenv("PORT"))
	if e != nil {
		return e
	}
	c.Port = p
	return nil
}
