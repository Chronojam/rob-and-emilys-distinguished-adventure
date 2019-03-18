package systems

import (
	"time"

	"engo.io/engo/common"

	"engo.io/ecs"
	"engo.io/engo"
	"github.com/chronojam/hazard/pkg/components"
)

type PlayerWeaponSystem struct {
	BasicComponent       *ecs.BasicEntity
	RenderComponent      *common.RenderComponent
	PlayerStateComponent *components.PlayerStateComponent
}

func (p *PlayerWeaponSystem) Add(basic *ecs.BasicEntity, render *common.RenderComponent, state *components.PlayerStateComponent) {
	p.BasicComponent = basic
	p.PlayerStateComponent = state
	p.RenderComponent = render
}

func (p *PlayerWeaponSystem) Update(d float32) {
	// Weapon Mappings.
	if engo.Input.Button("F1").JustPressed() {
		p.SwitchToWeapon("stand")
	}
	if engo.Input.Button("F2").JustPressed() {
		p.SwitchToWeapon("gun")
	}
	if engo.Input.Button("F3").JustPressed() {
		p.SwitchToWeapon("machine")
	}
	if engo.Input.Button("F4").JustPressed() {
		p.SwitchToWeapon("silencer")
	}
	if engo.Input.Button("r").JustPressed() {
		p.ReloadCurrentWeapon()
	}
}

func (p *PlayerWeaponSystem) SwitchToWeapon(name string) {
	for _, w := range p.PlayerStateComponent.WeaponInventory {
		if w.Name == name {
			p.PlayerStateComponent.CurrentWeapon = w
			p.RenderComponent.Drawable = p.PlayerStateComponent.CurrentWeapon.PlayerTexture
		}
	}
}

func (p *PlayerWeaponSystem) ReloadCurrentWeapon() {
	currentWeaponName := p.PlayerStateComponent.CurrentWeapon
	p.SwitchToWeapon("reload")
	// Dont block.
	go func() {
		time.Sleep(time.Second * 2)
		newVal := currentWeaponName.AmmoCount - currentWeaponName.AmmoClipMax
		if newVal <= 0 {
			// Theres not enough ammo to fill this entirely.
			currentWeaponName.AmmoInClip = currentWeaponName.AmmoCount
			p.SwitchToWeapon(currentWeaponName.Name)
			return
		}

		currentWeaponName.AmmoCount = newVal
		currentWeaponName.AmmoInClip = currentWeaponName.AmmoClipMax
		p.SwitchToWeapon(currentWeaponName.Name)
		return
	}()
}

func (p *PlayerWeaponSystem) Remove(ecs.BasicEntity) {

}
