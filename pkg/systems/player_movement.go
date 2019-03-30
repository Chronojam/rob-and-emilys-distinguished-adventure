package systems

import (
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

	Active bool
}
type PlayerMovementAble interface {
	components.PlayerStateFace
	common.SpaceFace
	common.MouseFace
	common.BasicFace
}

func (p *PlayerMovementSystem) New(w *ecs.World) {}

func (p *PlayerMovementSystem) AddByInterface(o ecs.Identifier) {
	obj := o.(PlayerMovementAble)
	p.Add(obj.GetBasicEntity(), obj.GetSpaceComponent(), obj.GetPlayerState(), obj.GetMouseComponent())
}

// Add - Only call me once per scene with the components to the player we want to move
// with the camera.
func (p *PlayerMovementSystem) Add(basic *ecs.BasicEntity, space *common.SpaceComponent, state *components.PlayerStateComponent, mouse *common.MouseComponent) {
	p.BasicComponent = basic
	p.PlayerStateComponent = state
	p.SpaceComponent = space
	p.MouseComponent = mouse
	p.Active = true
}

func (p *PlayerMovementSystem) Update(d float32) {
	if !p.Active {
		return
	}

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

	/*targetX := p.MouseComponent.MouseX - p.SpaceComponent.Center().X
	targetY := p.MouseComponent.MouseY - p.SpaceComponent.Center().Y

	p.SpaceComponent.Rotation = float32(math.Atan2(float64(targetY), float64(targetX))) * 180 / math.Pi*/

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
