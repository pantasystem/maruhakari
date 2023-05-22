package repository

import (
	"context"
	"core-api/pkg/config"
)

type ConfigRepository interface {
	Get(ctx context.Context) (*config.Config, error)
}
