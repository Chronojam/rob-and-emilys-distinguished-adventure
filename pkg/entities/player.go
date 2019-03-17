package entities

import (
	"engo.io/ecs"
	"engo.io/engo/common"
	"github.com/chronojam/hazard/pkg/components"
)

type Player struct {
	ecs.BasicEntity
	common.RenderComponent
	common.SpaceComponent

	components.PlayerStateComponent
}
