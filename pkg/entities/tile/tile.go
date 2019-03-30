package tile

import (
	"engo.io/ecs"
	"engo.io/engo/common"
)

type Tile struct {
	ecs.BasicEntity
	common.RenderComponent
	common.SpaceComponent
	common.CollisionComponent
}
