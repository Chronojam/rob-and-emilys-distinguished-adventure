package components

// PlayerState is the state of the player
// and is a component.
type PlayerStateComponent struct {
	Speed  float32
	Health int

	Inventory map[string]interface{}
}

func (p *PlayerStateComponent) GetPlayerState() *PlayerStateComponent {
	return p
}

type PlayerStateFace interface {
	GetPlayerState() *PlayerStateComponent
}
