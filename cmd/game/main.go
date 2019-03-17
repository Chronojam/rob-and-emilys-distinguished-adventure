package main

import (
	"engo.io/engo"
	cruiser "github.com/chronojam/hazard/pkg/scenes/dylan-cruiser"
)

func main() {
	opts := engo.RunOptions{
		Title:          "Hazard",
		Width:          800,
		Height:         800,
		StandardInputs: true,
	}
	engo.Run(opts, &cruiser.Scene{})
}
