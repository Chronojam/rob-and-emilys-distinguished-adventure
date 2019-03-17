package entities

import (
	"engo.io/ecs"
	"engo.io/engo/common"
)

type Obstacle struct {
	ecs.BasicEntity
	common.SpaceComponent
	common.RenderComponent
	common.CollisionComponent
}
