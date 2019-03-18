package entities

import (
	"fmt"
	"log"

	"engo.io/ecs"
	"engo.io/engo"
	"engo.io/engo/common"
	v1 "github.com/chronojam/hazard/pkg/api/v1"
	"github.com/chronojam/hazard/pkg/components"
)

const (
	// Starting Defaults
	PlayerSizeX = 35 //70
	PlayerSizeY = 43 //86
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
func NewPlayer(prefix string) Player {
	Weapons := []*components.Weapon{}
	for _, s := range []string{"stand", "gun", "machine", "silencer", "reload"} {
		tex, err := common.LoadedSprite(fmt.Sprintf("sprites/%s_%s.png", prefix, s))
		if err != nil {
			log.Fatalf("Unable to load texture: " + err.Error())
		}
		Weapons = append(Weapons, &components.Weapon{
			Name:          s,
			PlayerTexture: tex,
			AmmoCount:     0,
		})
	}

	entity := Player{BasicEntity: ecs.NewBasic()}
	entity.SpaceComponent = common.SpaceComponent{
		Position: engo.Point{10, 10},
		Width:    PlayerSizeX,
		Height:   PlayerSizeY,
	}
	entity.PlayerStateComponent = components.PlayerStateComponent{
		Speed:           PlayerSpeed,
		WeaponInventory: Weapons,
		CurrentWeapon:   Weapons[0],
	}
	entity.RenderComponent = common.RenderComponent{
		Drawable: Weapons[0].PlayerTexture,
		Scale:    engo.Point{1, 1},
	}
	entity.CollisionComponent = common.CollisionComponent{
		Main: v1.CollisionsPlayer,
	}

	return entity
}
