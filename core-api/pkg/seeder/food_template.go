package seeder

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/module"
)

func SeedFoodTemplates(ctx context.Context, module module.Module) {

	r := module.RepositoryModule().FoodTemplateRepository()

	templates, _ := r.FindAll(ctx)
	if len(templates) > 0 {
		return
	}

	w := float32(1.2)
	r.Create(
		ctx,
		&entity.FoodTemplate{
			Name:          "しょうゆ",
			GramPerMiller: &w,
		},
	)

	r.Create(
		ctx,
		&entity.FoodTemplate{
			Name:          "みりん",
			GramPerMiller: &w,
		},
	)

	r.Create(
		ctx,
		&entity.FoodTemplate{
			Name: "サラダ油",
		},
	)

	w = float32(1)
	r.Create(
		ctx,
		&entity.FoodTemplate{
			Name:          "ポン酢",
			GramPerMiller: &w,
		},
	)

	r.Create(
		ctx,
		&entity.FoodTemplate{
			Name: "マヨネーズ",
		},
	)

	r.Create(
		ctx,
		&entity.FoodTemplate{
			Name: "ケチャップ",
		},
	)

	w = float32(1)
	r.Create(
		ctx,
		&entity.FoodTemplate{
			Name:          "レモン汁",
			GramPerMiller: &w,
		},
	)

	r.Create(
		ctx,
		&entity.FoodTemplate{
			Name: "胡椒",
		},
	)
}
