package module

import "core-api/pkg/repository"

type Module interface {
	RepositoryModule() repository.Module
}
