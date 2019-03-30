package main

import (
	"engo.io/engo"
	cruiser "github.com/chronojam/hazard/pkg/scenes/dylan-cruiser"
)

func main() {
	opts := engo.RunOptions{
		Title:          "Hazard",
		Width:          1600,
		Height:         1600,
		StandardInputs: true,
		GlobalScale:    engo.Point{2, 2},
	}
	engo.Run(opts, &cruiser.Scene{})
}
