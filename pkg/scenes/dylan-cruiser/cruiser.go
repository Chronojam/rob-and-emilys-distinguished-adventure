package cruiser

import (
	"log"
	"strconv"

	"engo.io/ecs"
	"engo.io/engo"
	"engo.io/engo/common"
	v1 "github.com/chronojam/hazard/pkg/api/v1"
	"github.com/chronojam/hazard/pkg/components"
	"github.com/chronojam/hazard/pkg/entities"
	"github.com/chronojam/hazard/pkg/entities/player"
	"github.com/chronojam/hazard/pkg/entities/tile"
	"github.com/chronojam/hazard/pkg/entities/weapon"
	"github.com/chronojam/hazard/pkg/systems"
)

type Scene struct{}

// Type uniquely defines your game type
func (*Scene) Type() string {
	return "DylanCruiser"
}

// Preload is called before loading any assets from the disk,
// to allow you to register / queue them
func (*Scene) Preload() {

	// Load TileMap
	if err := engo.Files.Load("maps/prison_cell.tmx"); err != nil {
		panic(err)
	}

	engo.Files.Load("textures/dev_16x16.png")

	engo.Input.RegisterButton("F1", engo.KeyF1)
	engo.Input.RegisterButton("F2", engo.KeyF2)
	engo.Input.RegisterButton("F3", engo.KeyF3)
	engo.Input.RegisterButton("F4", engo.KeyF4)
	engo.Input.RegisterButton("r", engo.KeyR)
}

// Setup is called before the main loop starts. It allows you
// to add entities and systems to your Scene.
func (*Scene) Setup(u engo.Updater) {
	// Setup map

	p := player.New("emily")
	p.MouseComponent.Track = true

	world, _ := u.(*ecs.World)
	var playerMoveable *systems.PlayerMovementAble
	world.AddSystemInterface(&systems.PlayerMovementSystem{}, playerMoveable, nil)

	var collidable *common.Collisionable
	world.AddSystemInterface(&common.CollisionSystem{Solids: v1.CollisionsPlayer}, collidable, nil)
	world.AddSystemInterface(&common.CollisionSystem{Solids: v1.CollisionsPlayerPickup}, collidable, nil)

	var renderable *common.Renderable
	world.AddSystemInterface(&common.RenderSystem{}, renderable, nil)

	var animatiable *common.Animationable
	world.AddSystemInterface(&common.AnimationSystem{}, animatiable, nil)

	var mouseable *common.Mouseable
	world.AddSystemInterface(&common.MouseSystem{}, mouseable, nil)

	resource, err := engo.Files.Resource("maps/prison_cell.tmx")
	if err != nil {
		panic(err)
	}
	tmxResource := resource.(common.TMXResource)
	levelData := tmxResource.Level
	// Extract Map Size
	//levelWidth := levelData.Bounds().Max.X
	//levelHeight := levelData.Bounds().Max.Y

	// Create render and space components for each of the tiles
	mapEntities := make([]ecs.Identifier, 0)
	for _, tileLayer := range levelData.TileLayers {
		for _, tileElement := range tileLayer.Tiles {
			if tileElement.Image.Texture() != nil {
				newTile := &tile.Tile{BasicEntity: ecs.NewBasic()}
				newTile.RenderComponent = common.RenderComponent{
					Drawable: tileElement,
					Scale:    engo.Point{1, 1},
				}
				newTile.SpaceComponent = common.SpaceComponent{
					Position: tileElement.Point,
					Width:    tileElement.Width(),
					Height:   tileElement.Height(),
				}
				log.Printf("%#v", tileElement.Point)
				//newTile.RenderComponent.SetZIndex(0)

				if tileLayer.Name == "NoMovement" {
					newTile.CollisionComponent = common.CollisionComponent{
						Group: v1.CollisionsPlayer,
					}
				}
				/*if tileLayer.Name == "trees" {
					newTile.RenderComponent.SetZIndex(2)
				}*/

				mapEntities = append(mapEntities, newTile)
			}
		}
	}

	for _, imageLayer := range levelData.ImageLayers {
		for _, imageElement := range imageLayer.Images {

			if imageElement.Image != nil {
				newTile := &tile.Tile{BasicEntity: ecs.NewBasic()}
				newTile.RenderComponent = common.RenderComponent{
					Drawable: imageElement,
					Scale:    engo.Point{1, 1},
				}
				newTile.SpaceComponent = common.SpaceComponent{
					Position: imageElement.Point,
					Width:    0,
					Height:   0,
				}

				if imageLayer.Name == "clouds" {
					newTile.RenderComponent.SetZIndex(3)
				}

				mapEntities = append(mapEntities, newTile)
			}
		}
	}

	// Access Object Layers
	for _, objectLayer := range levelData.ObjectLayers {
		log.Println("This object layer is called " + objectLayer.Name)
		// Do something with every regular Object
		for _, object := range objectLayer.Objects {
			log.Println(object.Type)
			switch object.Type {
			case "PlayerSpawn":
				p.SpaceComponent.Position = engo.Point{object.X, object.Y}
			case "Destructable":
				newEnt := &entities.Door{BasicEntity: ecs.NewBasic()}
				newEnt.SpaceComponent = common.SpaceComponent{
					Position: engo.Point{object.X, object.Y - 32},
					Width:    object.Width,
					Height:   object.Height,
				}
				newEnt.RenderComponent = common.RenderComponent{
					Drawable: object.Tiles[0],
					Scale:    engo.Point{1, 1},
				}
				newEnt.CollisionComponent = common.CollisionComponent{
					Group: v1.CollisionsPlayer,
				}
				newEnt.HealthComponent = components.HealthComponent{
					Health: GetPropertyIntByName("Health", object.Properties),
				}
				newEnt.RenderComponent.SetZIndex(1)
				mapEntities = append(mapEntities, newEnt)
			case "Item_Weapon":
				newEnt := &weapon.Weapon{BasicEntity: ecs.NewBasic()}
				switch GetPropertyStringByName("Name", object.Properties) {
				case "Shotgun":
					// Shotgun properties..
					newEnt.SpaceComponent = common.SpaceComponent{
						Position: engo.Point{object.X, object.Y - 32},
						Width:    object.Width,
						Height:   object.Height,
					}
					newEnt.RenderComponent = common.RenderComponent{
						Drawable: object.Tiles[0],
						Scale:    engo.Point{1, 1},
					}
					//newEnt.CollisionComponent = common.CollisionComponent{}
					newEnt.RenderComponent.SetZIndex(1)
				}

				mapEntities = append(mapEntities, newEnt)
			}

		}

		// Do something with every polyline Object
		/*for _, polylineObject := range objectLayer.PolyObjects {
			log.Println("This object is called " + polylineObject.Name)
		}*/
	}

	for _, t := range mapEntities {
		world.AddEntity(t)
	}
	world.AddEntity(&p)
}
func GetPropertyStringByName(name string, props []common.Property) string {
	for _, x := range props {
		if x.Name == name {
			return x.Value
		}
	}

	return ""
}

func GetPropertyBoolByName(name string, props []common.Property) bool {
	for _, x := range props {
		if x.Name == name {
			if val, err := strconv.ParseBool(x.Value); err != nil {
				return val
			}
		}
	}

	return false
}

func GetPropertyIntByName(name string, props []common.Property) int {
	for _, x := range props {
		if x.Name == name {
			if val, err := strconv.Atoi(x.Value); err != nil {
				return val
			}
		}
	}

	return 0
}
