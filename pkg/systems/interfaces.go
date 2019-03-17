package systems

import (
	"engo.io/ecs"
	"github.com/chronojam/hazard/pkg/components"
)

type PlayerAble interface {
	BasicFace

	components.PlayerState
}

type BasicFace interface {
	ID() uint64
	GetBasicEntity() *ecs.BasicEntity
}
