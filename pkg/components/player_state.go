package components

import (
	"engo.io/engo/common"
)

// PlayerState is the state of the player
// and is a component.
type PlayerStateComponent struct {
	// Speed represents the speed at which this player can move.
	Speed float32

	// A map of weapons => ammo count
	WeaponInventory []*Weapon
	CurrentWeapon   *Weapon
}

func (p *PlayerStateComponent) GetPlayerState() *PlayerStateComponent {
	return p
}

type PlayerState interface {
	GetPlayerState() *PlayerStateComponent
}

type Weapon struct {
	// Whats the name?
	Name string

	// Texture of the player with the given weapon.
	PlayerTexture *common.Texture

	// How much ammo does it have?
	AmmoCount int

	// Ammo clips
	AmmoInClip  int
	AmmoClipMax int
}
