#HSLIDE
# Autolayout: Best Practice
## Hisma Mulya S (mamaz)
### [@hismamaz](http://twitter.com/hismamaz)
### [facebook.com/hisma.mulya](https://facebook.com/hisma.mulya)

#HSLIDE
# Agenda
0. Why Autolayout?
1. Frame and Bounds vs Constraints
2. Best Practice 1: XIB
3. Autolayout by Code
4. Best Practice 2: Masonry
5. Animating Autolayout
6. Best Practice 3: remakeConstraints

#HSLIDE
# Why Autolayout?

The first thing that I had in mind:
- to handle device rotations
- to support iPad

#VSLIDE
# I Was WRONG

#VSLIDE

Apple releases newer and **bigger** iPhones:
- iPhone 6
- iPhone 6 Plus
- iPhone 7 and
- iPhone 7 Plus

and lots of iPad varian:
- iPad
- iPad Pro
- iPad Air
- iPad Mini

#VSLIDE

# Spring and Struts --> **IRRELEVANT**

* harder to maintain device [orientation](https://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions)
* tedious to count the exact coordinate

#HSLIDE

# Frame and Bounds vs Constraints

#VSLIDE
## Frame and Bounds
- Design by coordinates: "I want a Button with coordinate (10, 10) with width 200 and height 30, with 'OK Siri!' written on it"
- Hard to maintain for supporting multiple devices with different form factors.
- Not the same across devices and screen orientations.
- Difference between frames and bounds.

#VSLIDE
## Constraints
- Design by Intents: "I want a Button at the with left padding 10 and top padding 10 with `OK Siri!' written on it"
- Based on constraints of a view related to its superview and surrounding views.
- It's based on Linear Function `y = ax + b`
for example: `Button.left = superview.left + 10`
- Will be consistent across devices.

#VSLIDE

# OH: IT MEANS THAT AUTOLAYOUT IS AWESOME?

#VSLIDE

# YES, WITH BETTER XCODE TOOLS!

#VSLIDE

# Most Common Problems
- Need sufficient constraints: x axis, y axis, and / or width and height.
- Ambiguity.
- Applying Wrong constraints.
- Mismatched Frames and Constraints.

#VSLIDE

# Best Practice 1: XIB
- Build Relationship with nearest view first.
- Layout with center point or standard padding numbers.
- Adjust content hugging and compression resistance, if needed.

#VSLIDE

# DEMO

#HSLIDE

# Autolayout by Code

* Original NSLayoutConstraint way.
* Visual Format Language.
* 3rd Party, example: Masonry

#VSLIDE

# BEST PRACTICE 2: Masonry

#VSLIDE

#DEMO

#HSLIDE

# Animating Autolayout
* Playing with your heart.. I mean view constraints.
* Better to use Masonry's remakeConstraints.
* Even better to use non UIAnimation, eg: JHChainableAnimation or POP.

#VSLIDE

# Best Practice 3: remakeConstraints

#VSLIDE

# DEMO

#HSLIDE

# Links

GitHub:
* https://github.com/SnapKit/Masonry
* https://github.com/rs/SDWebImage
* https://github.com/jhurray/JHChainableAnimations
* https://github.com/facebook/pop

Link to this slide and source code: https://github.com/mamaz/autolayout-best-practice


#HSLIDE

# Thank You
## Q/A Time!
