package weapon

import (
	"engo.io/ecs"
	"engo.io/engo/common"
)

type Weapon struct {
	ecs.BasicEntity
	common.RenderComponent
	common.SpaceComponent
}
