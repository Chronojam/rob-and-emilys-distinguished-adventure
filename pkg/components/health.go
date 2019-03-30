package components

type HealthComponent struct {
	Health int
}

func (p *HealthComponent) GetHealthComponent() *HealthComponent {
	return p
}

type HealthComponentFace interface {
	GetHealthComponent() *HealthComponent
}
