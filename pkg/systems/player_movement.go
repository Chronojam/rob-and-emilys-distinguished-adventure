package systems

import (
	"engo.io/ecs"
	"engo.io/engo"
	"engo.io/engo/common"
	"github.com/chronojam/hazard/pkg/components"
)

type PlayerMovementSystem struct {
	// References to only the components we need.
	BasicComponent       *ecs.BasicEntity
	SpaceComponent       *common.SpaceComponent
	PlayerStateComponent *components.PlayerStateComponent
}

func (p *PlayerMovementSystem) New(w *ecs.World) {
}

/*func (p *PlayerMovementSystem) AddByInterface(i ecs.Identifier) {
	obj := o.(PlayerAble)
	p.Set(obj.GetBasicEntity(), obj.GetComponentA())
}*/

// Add - Only call me once per scene with the components to the player we want to move
// with the camera.
func (p *PlayerMovementSystem) Add(basic *ecs.BasicEntity, space *common.SpaceComponent, state *components.PlayerStateComponent) {
	p.BasicComponent = basic
	p.SpaceComponent = space
	p.PlayerStateComponent = state
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
