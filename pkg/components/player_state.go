package components

// PlayerState is the state of the player
// and is a component.
type PlayerStateComponent struct {
	// Speed represents the speed at which this player can move.
	Speed float32
}

func (p *PlayerStateComponent) GetPlayerState() *PlayerStateComponent {
	return p
}

type PlayerState interface {
	GetPlayerState() *PlayerStateComponent
}
