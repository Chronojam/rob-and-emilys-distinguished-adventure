package engo

const (
	// AxisMax is the maximum value a joystick or keypress axis will reach
	AxisMax float32 = 1
	// AxisNeutral is the value an axis returns if there has been to state change.
	AxisNeutral float32 = 0
	// AxisMin is the minimum value a joystick or keypress axis will reach
	AxisMin float32 = -1
)

// NewInputManager holds onto anything input related for engo
func NewInputManager() *InputManager {
	return &InputManager{
		Touches: make(map[int]Point),
		axes:    make(map[string]Axis),
		buttons: make(map[string]Button),
		keys:    NewKeyManager(),
	}
}

// InputManager contains information about all forms of input.
type InputManager struct {
	// Mouse is InputManager's reference to the mouse. It is recommended to use the
	// Axis and Button system if at all possible.
	Mouse Mouse

	// Touches is the touches on the screen. There can be up to 5 recorded in Android,
	// and up to 4 on iOS. GLFW can also keep track of the touches. The latest touch is also
	// recorded in the Mouse so that touches readily work with the common.MouseSystem
	Touches map[int]Point

	axes    map[string]Axis
	buttons map[string]Button
	keys    *KeyManager
}

func (im *InputManager) update() {
	im.keys.update()
}

// RegisterAxis registers a new axis which can be used to retrieve inputs which are spectrums.
func (im *InputManager) RegisterAxis(name string, pairs ...AxisPair) {
	im.axes[name] = Axis{
		Name:  name,
		Pairs: pairs,
	}
}

// RegisterButton registers a new button input.
func (im *InputManager) RegisterButton(name string, keys ...Key) {
	im.buttons[name] = Button{
		Triggers: keys,
		Name:     name,
	}
}

// Axis retrieves an Axis with a specified name.
func (im *InputManager) Axis(name string) Axis {
	return im.axes[name]
}

// Button retrieves a Button with a specified name.
func (im *InputManager) Button(name string) Button {
	return im.buttons[name]
}

// Mouse represents the mouse
type Mouse struct {
	X, Y             float32
	ScrollX, ScrollY float32
	Action           Action
	Button           MouseButton
	Modifer          Modifier
}
