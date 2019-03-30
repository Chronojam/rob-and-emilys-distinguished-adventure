package components

type WeaponStateComponent struct {
	// How much of this ammo we can carry
	MaxAmmo int

	ClipSize    int
	MaxClipSize int
}

func (p *WeaponStateComponent) GetWeaponState() *WeaponStateComponent {
	return p
}

type WeaponState interface {
	GetWeaponState() *WeaponStateComponent
}
