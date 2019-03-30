package player

import (
	"log"

	"engo.io/ecs"
	"engo.io/engo"
	"engo.io/engo/common"
	v1 "github.com/chronojam/hazard/pkg/api/v1"
	"github.com/chronojam/hazard/pkg/components"
)

const (
	// Starting Defaults
	PlayerSizeX = 16 //70
	PlayerSizeY = 16 //86
	PlayerSpeed = 5
)

type Player struct {
	ecs.BasicEntity
	common.RenderComponent
	common.SpaceComponent
	common.CollisionComponent
	common.MouseComponent

	components.PlayerStateComponent
}

// NewPlayer returns a new player entity. It is the callers responsibilty to set position
// etc to sensible defaults.
func New(prefix string) Player {
	defaultTexture, err := common.LoadedSprite("textures/dev_16x16.png")
	if err != nil {
		log.Println("Unable to load texture: " + err.Error())
	}

	entity := Player{BasicEntity: ecs.NewBasic()}
	entity.SpaceComponent = common.SpaceComponent{
		Position: engo.Point{0, 0},
		Width:    PlayerSizeX,
		Height:   PlayerSizeY,
	}
	entity.PlayerStateComponent = components.PlayerStateComponent{
		Speed:     PlayerSpeed,
		Health:    100,
		Inventory: map[string]interface{}{},
	}
	entity.RenderComponent = common.RenderComponent{
		Drawable: defaultTexture,
		Scale:    engo.Point{1, 1},
	}
	entity.CollisionComponent = common.CollisionComponent{
		Main: v1.CollisionsPlayer | v1.CollisionsPlayerPickup,
	}

	return entity
}
