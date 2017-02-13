#HSLIDE
# Autolayout: Best Practice
## Hisma Mulya S (mamaz)
### [@hismamaz](http://twitter.com/hismamaz)
### [facebook.com/hisma.mulya](https://facebook.com/hisma.mulya)

#HSLIDE
# Agenda
0. Why Autolayout?
1. Frame vs Constraints
2. Relation with other view
3. Compression resistance vs content hugging
4. Best Practice 1: XIB (use center)
5. Autolayout by Code
6. Best Practice 2: Masonry
7. Animating Autolayout
8. Best Practice 3: remakeConstraints
9. StackView

#HSLIDE
# Why Autolayout?

The first thing that I had in mind: handle device rotations, support for iPad.

#VSLIDE
# I Was WRONG

#VSLIDE

Apple releases newer and **bigger** devices: iPhone 6 and 6Plus and lots of iPad varians: 
- iPad Pro
- iPad Air
- iPad Mini

#VSLIDE

Spring and Strurts: **IRRELEVANT**

#HSLIDE

# Frame and Bounds vs Constraints

## Frame and Bounds
- Frame and Bounds are coordinate based (x,y).
- Hard to maintain for supporting multiple devices with different form factors.
- "I want a Button with coordinate (10, 10) with width 200 and height 30, with 'Get Lost!' written on it".
- Not the same accross devices
 
## Constraints
- Based on constraints of a view related to its superview and surounding views.
- It's based on Linear Function `y = ax + b` 
for example: `Button.left = superview.left + 10`
- "I want a Button at the with left padding 10 and top padding 10 with `Get Lost!' written on it"

