package entities

import (
	"engo.io/ecs"
	"engo.io/engo/common"
	"github.com/chronojam/hazard/pkg/components"
)

type Door struct {
	ecs.BasicEntity
	common.SpaceComponent
	common.RenderComponent
	common.CollisionComponent

	components.HealthComponent
}
