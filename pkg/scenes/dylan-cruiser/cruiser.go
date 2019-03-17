package cruiser

import (
	"log"

	"engo.io/ecs"
	"engo.io/engo"
	"engo.io/engo/common"
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
}

// Setup is called before the main loop starts. It allows you
// to add entities and systems to your Scene.
func (*Scene) Setup(u engo.Updater) {
	/*engo.Input.RegisterButton("MoveLeft", engo.KeyA)
	engo.Input.RegisterButton("MoveRight", engo.KeyD)
	engo.Input.RegisterButton("MoveUp", engo.KeyW)
	engo.Input.RegisterButton("MoveDown", engo.KeyS)*/

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

	world, _ := u.(*ecs.World)
	world.AddSystem(&common.RenderSystem{})
	world.AddSystem(&systems.PlayerMovementSystem{})
	for _, system := range world.Systems() {
		switch sys := system.(type) {
		case *common.RenderSystem:
			sys.Add(&b1Player.BasicEntity, &b1Player.RenderComponent, &b1Player.SpaceComponent)
		case *systems.PlayerMovementSystem:
			sys.Add(&b1Player.BasicEntity, &b1Player.SpaceComponent, &b1Player.PlayerStateComponent)
		}
	}
}
