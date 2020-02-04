
## Flutter Widget of the Week

* SafeArea
* Expanded
* Wrap
* AnimatedContainer
* Opacity
...more later

---

### SafeArea

* uses MediaQuery to set padding based on Devices notification area, notches

* either of top/bottom/left/right padding can be disabled; scaffold gets wrapped good

---

### Expanded

* if want one of children widget to expand and fill extra space

* can give `flex` property `0,1,..` if there are competing widgets for flexible space

---

### Wrap

* when Row/Column aren't able to contain children well, works like a Row/Column but wrap around when space fills up

* `direction` property can be used with values like `Axis.vertical`

* also has `alignment`, `spacing` and `runSpacing` property

---

### AnimatedContainer

* for implicit animation when it's property changed, say via setState

* can animate Colors, Borders, Border Radii, Background images, Shadows, Gradients, Shapes, Padding, Width, Height, Alignment, Transforms and more

* `duration` property is in what time animation shall finish

---

### Opacity

* for a widget to disappear but still take up space

---
