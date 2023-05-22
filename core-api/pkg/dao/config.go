package dao

import (
	"context"
	"core-api/pkg/config"
	"sync"
)

var (
	cf    *config.Config
	mutex *sync.Mutex = &sync.Mutex{}
)

type ConfigRepositoryImpl struct {
}

func (r *ConfigRepositoryImpl) Get(ctx context.Context) (*config.Config, error) {
	mutex.Lock()
	if cf == nil {
		c := config.Config{}
		e := c.LoadFromEnv()
		if e != nil {
			return nil, e
		}
		cf = &c
	}
	defer mutex.Unlock()
	return cf, nil
}

func NewConfigRepository() *ConfigRepositoryImpl {
	return &ConfigRepositoryImpl{}
}
