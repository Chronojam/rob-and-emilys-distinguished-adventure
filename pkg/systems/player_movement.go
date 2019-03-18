package systems

import (
	"math"

	"engo.io/ecs"
	"engo.io/engo"
	"engo.io/engo/common"
	"github.com/chronojam/hazard/pkg/components"
)

// Responsible for handling movement and charcter animation
type PlayerMovementSystem struct {
	// References to only the components we need.
	BasicComponent       *ecs.BasicEntity
	SpaceComponent       *common.SpaceComponent
	PlayerStateComponent *components.PlayerStateComponent
	MouseComponent       *common.MouseComponent
}

func (p *PlayerMovementSystem) New(w *ecs.World) {
	/*engo.Mailbox.Listen("CollisionMessage", func(message engo.Message) {
		log.Println("collision")
	})*/
	//p.StopAction = &common.Animation{Name: "stop", Frames: []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}}
	//p.WalkAction = &common.Animation{Name: "walk", Frames: []int{0, 1, 2, 3, 4, 5}, Loop: true}
	//p.SkillAction = &common.Animation{Name: "skill", Frames: []int{44, 45, 46, 47, 48, 49, 50, 51, 52, 53}}
}

// Add - Only call me once per scene with the components to the player we want to move
// with the camera.
func (p *PlayerMovementSystem) Add(basic *ecs.BasicEntity, space *common.SpaceComponent, state *components.PlayerStateComponent, mouse *common.MouseComponent) {
	p.BasicComponent = basic
	p.SpaceComponent = space
	p.PlayerStateComponent = state
	p.MouseComponent = mouse
}

func (p *PlayerMovementSystem) Update(d float32) {
	current := p.SpaceComponent.Center()
	if engo.Input.Axis("horizontal").Value() > 0.0 {
		p.SpaceComponent.SetCenter(*current.Add(engo.Point{p.PlayerStateComponent.Speed, 0}))
	}
	if engo.Input.Axis("horizontal").Value() < 0.0 {
		p.SpaceComponent.SetCenter(*current.Add(engo.Point{-p.PlayerStateComponent.Speed, 0}))
	}
	if engo.Input.Axis("vertical").Value() > 0.0 {
		p.SpaceComponent.SetCenter(*current.Add(engo.Point{0, p.PlayerStateComponent.Speed}))
	}
	if engo.Input.Axis("vertical").Value() < 0.0 {
		p.SpaceComponent.SetCenter(*current.Add(engo.Point{0, -p.PlayerStateComponent.Speed}))
	}

	// Rotate ourselves to point at the mouse.

	// mouse.X

	targetX := p.MouseComponent.MouseX - p.SpaceComponent.Center().X
	targetY := p.MouseComponent.MouseY - p.SpaceComponent.Center().Y

	p.SpaceComponent.Rotation = float32(math.Atan2(float64(targetY), float64(targetX))) * 180 / math.Pi

	// Ask the camera to move to our current position.
	engo.Mailbox.Dispatch(common.CameraMessage{
		Axis:        common.YAxis,
		Value:       p.SpaceComponent.Center().Y,
		Incremental: false,
	})
	engo.Mailbox.Dispatch(common.CameraMessage{
		Axis:        common.XAxis,
		Value:       p.SpaceComponent.Center().X,
		Incremental: false,
	})
}
func (p *PlayerMovementSystem) Remove(ecs.BasicEntity) {}
