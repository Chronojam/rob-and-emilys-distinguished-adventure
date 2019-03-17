package main

import (
	"engo.io/engo"
	cruiser "github.com/chronojam/hazard/pkg/scenes/dylan-cruiser"
)

func main() {
	opts := engo.RunOptions{
		Title:          "Hazard",
		Width:          400,
		Height:         400,
		StandardInputs: true,
	}
	engo.Run(opts, &cruiser.Scene{})
}
