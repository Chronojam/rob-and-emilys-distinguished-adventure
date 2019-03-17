package entities

import (
	"engo.io/ecs"
	"engo.io/engo/common"
)

type HUD struct {
	ecs.BasicEntity
	common.SpaceComponent
	common.RenderComponent
}
