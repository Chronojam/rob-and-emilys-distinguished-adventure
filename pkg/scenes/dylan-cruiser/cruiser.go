package cruiser

import (
	"log"

	"engo.io/ecs"
	"engo.io/engo"
	"engo.io/engo/common"
	v1 "github.com/chronojam/hazard/pkg/api/v1"
	"github.com/chronojam/hazard/pkg/components"
	"github.com/chronojam/hazard/pkg/entities"
	"github.com/chronojam/hazard/pkg/systems"
)

type Scene struct{}

// Type uniquely defines your game type
func (*Scene) Type() string {
	return "DylanCruiser"
}

// Preload is called before loading any assets from the disk,
// to allow you to register / queue them
func (*Scene) Preload() {
	engo.Files.Load("sprites/rob-and-emily.png")
	engo.Files.Load("textures/box_top.jpg")
}

// Setup is called before the main loop starts. It allows you
// to add entities and systems to your Scene.
func (*Scene) Setup(u engo.Updater) {
	b1Player := entities.Player{BasicEntity: ecs.NewBasic()}
	b1Player.SpaceComponent = common.SpaceComponent{
		Position: engo.Point{10, 10},
		Width:    400,
		Height:   400,
	}
	b1Player.PlayerStateComponent = components.PlayerStateComponent{
		Speed: 10.0,
	}
	texture, err := common.LoadedSprite("sprites/rob-and-emily.png")
	if err != nil {
		log.Println("Unable to load texture: " + err.Error())
	}
	b1Player.RenderComponent = common.RenderComponent{
		Drawable: texture,
		Scale:    engo.Point{1, 1},
	}
	b1Player.CollisionComponent = common.CollisionComponent{
		Main: v1.CollisionsPlayer,
	}

	// Generic Obstacle
	textureBox, err := common.LoadedSprite("textures/box_top.jpg")
	if err != nil {
		log.Println("Unable to load texture: " + err.Error())
	}
	box := entities.Obstacle{BasicEntity: ecs.NewBasic()}
	box.SpaceComponent = common.SpaceComponent{
		Position: engo.Point{20, 20},
		Width:    200,
		Height:   200,
	}
	box.RenderComponent = common.RenderComponent{
		Drawable: textureBox,
		Scale:    engo.Point{0.25, 0.25},
	}
	box.CollisionComponent = common.CollisionComponent{
		Group: v1.CollisionsPlayer,
	}

	world, _ := u.(*ecs.World)
	// Special case playermovement for now.
	pms := &systems.PlayerMovementSystem{}
	pms.Add(&b1Player.BasicEntity, &b1Player.SpaceComponent, &b1Player.PlayerStateComponent)
	world.AddSystem(pms)

	var collidable *common.Collisionable
	world.AddSystemInterface(&common.CollisionSystem{Solids: 1}, collidable, nil)

	var renderable *common.Renderable
	world.AddSystemInterface(&common.RenderSystem{}, renderable, nil)

	world.AddEntity(&b1Player)
	world.AddEntity(&box)

}
