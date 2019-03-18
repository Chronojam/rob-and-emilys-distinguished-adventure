package cruiser

import (
	"log"

	"engo.io/ecs"
	"engo.io/engo"
	"engo.io/engo/common"
	v1 "github.com/chronojam/hazard/pkg/api/v1"
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
	engo.Files.Load(
		"sprites/emily_gun.png",
		"sprites/emily_hold.png",
		"sprites/emily_machine.png",
		"sprites/emily_reload.png",
		"sprites/emily_silencer.png",
		"sprites/emily_stand.png",
		"sprites/rob_gun.png",
		"sprites/rob_hold.png",
		"sprites/rob_machine.png",
		"sprites/rob_reload.png",
		"sprites/rob_silencer.png",
		"sprites/rob_stand.png",
		"textures/box_top.jpg",
	)

	engo.Input.RegisterButton("F1", engo.KeyF1)
	engo.Input.RegisterButton("F2", engo.KeyF2)
	engo.Input.RegisterButton("F3", engo.KeyF3)
	engo.Input.RegisterButton("F4", engo.KeyF4)
	engo.Input.RegisterButton("r", engo.KeyR)
}

// Setup is called before the main loop starts. It allows you
// to add entities and systems to your Scene.
func (*Scene) Setup(u engo.Updater) {
	player := entities.NewPlayer("emily")
	player.MouseComponent.Track = true

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
	// Special case playermovement||playerweapons for now.
	pms := &systems.PlayerMovementSystem{}
	pms.Add(&player.BasicEntity, &player.SpaceComponent, &player.PlayerStateComponent, &player.MouseComponent)
	world.AddSystem(pms)

	pws := &systems.PlayerWeaponSystem{}
	pws.Add(&player.BasicEntity, &player.RenderComponent, &player.PlayerStateComponent)
	world.AddSystem(pws)

	var collidable *common.Collisionable
	world.AddSystemInterface(&common.CollisionSystem{Solids: 1}, collidable, nil)

	var renderable *common.Renderable
	world.AddSystemInterface(&common.RenderSystem{}, renderable, nil)

	var animatiable *common.Animationable
	world.AddSystemInterface(&common.AnimationSystem{}, animatiable, nil)

	var mouseable *common.Mouseable
	world.AddSystemInterface(&common.MouseSystem{}, mouseable, nil)

	world.AddEntity(&player)
	world.AddEntity(&box)
}
