# ch_09_stateful_widgets

Color mixer demonstrates passing data down, lifting state up, and changing values through setState().

## Part 1 Create the project
- We want an app that allows users to mix colors using three sliders; red, green, and blue.
- flutter create color_mixer

## Part 2 Make the main view
- Add title
- Add Placeholder for the color circle and three sliders

## Part 3 Make the ColorCircle
- Stateless widget that receives a Color color, double radius.
```dart
const ColorCircle({super.key, required this.color, this.radius = 50});
```

## Part 4 Make the ColorValueChanger
- Property name 
- Slider (0-255) 
- Slider needs an onChange event handler to change the label
- Place three of these in the parent

## Part 5 Lifting state up
- Oh snap! We need to change the Color when each slider is moved.
- The RGB part values must be in state in ColorMixer. The values are passed down and the state changer function must be passed down.