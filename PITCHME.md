#HSLIDE
# Autolayout: Best Practice
## Hisma Mulya S (mamaz)
### [@hismamaz](http://twitter.com/hismamaz)
### [facebook.com/hisma.mulya](https://facebook.com/hisma.mulya)

#HSLIDE
# Agenda
0. Why Autolayout?
1. Frame and Bounds vs Constraints
2. Relation with other views
3. Best Practice 1: XIB
4. Autolayout by Code 
5. Best Practice 2: Masonry 
6. Animating Autolayout 
7. Best Practice 3: remakeConstraints
9. StackView

#HSLIDE
# Why Autolayout?

The first thing that I had in mind: 
- handle device rotations 
- support for iPad.

#VSLIDE
# I Was WRONG

#VSLIDE

Apple releases newer and **bigger** devices:
- iPhone 6 
- iPhone 6Plus 
- iPhone 7 and
- iPhone 7Plus

and lots of iPad varians: 
- iPad
- iPad Pro
- iPad Air
- iPad Mini

#VSLIDE

# Spring and Strurts: **IRRELEVANT**

#HSLIDE

# Frame and Bounds vs Constraints

#VSLIDE
## Frame and Bounds
- Design by coordinates: "I want a Button with coordinate (10, 10) with width 200 and height 30, with 'Get Lost!' written on it"
- Hard to maintain for supporting multiple devices with different form factors.
- Not the same accross devices
 
#VSLIDE
## Constraints
- Design by Intents: "I want a Button at the with left padding 10 and top padding 10 with `Get Lost!' written on it"
- Based on constraints of a view related to its superview and surounding views.
- It's based on Linear Function `y = ax + b` 
for example: `Button.left = superview.left + 10`
- Will be consistent accross devices.

#HSLIDE

# Relation with Other Views

- Autolayout is basically layouting relative to other view.
- Needs to have clear constraints, otherwise ambiguity occurs.

#VSLIDE

# Most Common Problems
- Ambiguity
- Applying Wrong constraints
- Mismatched Frames and Constraints

#VSLIDE

# Best Practice 1: XIB

- Build Relationship with nearest view first.
- Layout with center point.
- Adjust compression resistance and content hugging.

#VSLIDE
# DEMO

#HSLIDE

# Autolayout by Code

* Original NSLayoutConstraint way.
* Visual Format Language
* 3rd Party

#VSLIDE

# BEST PRACTICE 2: Masonry

#VSLIDE

#DEMO

#HSLIDE

# Animating Autolayout
* Playing with your heart.. I mean view constraints.
* You can't animate on XIB.
* Better to use Masonry.

#VSLIDE

# Best Practice 3: remakeConstraints

#VSLIDE

# DEMO

#HSLIDE

# Stackview


