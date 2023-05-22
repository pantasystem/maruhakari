package seeder

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/module"
	"fmt"
)

func Seed(ctx context.Context, module module.Module) {
	list, _ := module.RepositoryModule().ContainerTemplateRepository().FindAll(ctx)
	if len(list) > 0 {
		fmt.Printf("Skip seeding container template\n")
		return
	}
	module.RepositoryModule().ContainerTemplateRepository().Create(
		ctx,
		&entity.ContainerTemplate{
			Label:                  "1Lペットボトル",
			ContainerWeightGram:    45,
			ContainerMaxWeightGram: 1000,
			ImagePath:              "container-images/image-1-0L-bottle.png",
		},
	)
	module.RepositoryModule().ContainerTemplateRepository().Create(
		ctx,
		&entity.ContainerTemplate{
			Label:                  "1.5Lペットボトル",
			ContainerWeightGram:    50,
			ContainerMaxWeightGram: 1500,
			ImagePath:              "container-images/image-1-5-liter-bottle.png",
		},
	)

	module.RepositoryModule().ContainerTemplateRepository().Create(
		ctx,
		&entity.ContainerTemplate{
			Label:                  "一升瓶",
			ContainerWeightGram:    950,
			ContainerMaxWeightGram: 1800,
			ImagePath:              "container-images/image-1-8-liter-bottle.png",
		},
	)
	module.RepositoryModule().ContainerTemplateRepository().Create(
		ctx,
		&entity.ContainerTemplate{
			Label:                  "2L紙パック",
			ContainerWeightGram:    42,
			ContainerMaxWeightGram: 2000,
			ImagePath:              "container-images/image-2-0L-paper-pack.png",
		},
	)

	module.RepositoryModule().ContainerTemplateRepository().Create(
		ctx,
		&entity.ContainerTemplate{
			Label:                  "2Lペットボトル",
			ContainerWeightGram:    50,
			ContainerMaxWeightGram: 2000,
			ImagePath:              "container-images/image-2l-bottle.png",
		},
	)

	module.RepositoryModule().ContainerTemplateRepository().Create(
		ctx,
		&entity.ContainerTemplate{
			Label:                  "350ml缶",
			ContainerWeightGram:    16,
			ContainerMaxWeightGram: 350,
			ImagePath:              "container-images/image-350ml-can.png",
		},
	)

	module.RepositoryModule().ContainerTemplateRepository().Create(
		ctx,
		&entity.ContainerTemplate{
			Label:                  "500mlペットボトル",
			ContainerWeightGram:    30,
			ContainerMaxWeightGram: 500,
			ImagePath:              "container-images/image-500ml-bottle.png",
		},
	)

	module.RepositoryModule().ContainerTemplateRepository().Create(
		ctx,
		&entity.ContainerTemplate{
			Label:                  "500ml缶",
			ContainerWeightGram:    19,
			ContainerMaxWeightGram: 500,
			ImagePath:              "container-images/image-500ml-can.png",
		},
	)

	module.RepositoryModule().ContainerTemplateRepository().Create(
		ctx,
		&entity.ContainerTemplate{
			Label:                  "500mlガラス瓶",
			ContainerWeightGram:    290,
			ContainerMaxWeightGram: 500,
			ImagePath:              "container-images/image-500ml-glass-bottle.png",
		},
	)

}
