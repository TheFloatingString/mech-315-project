# MECH 315 Project: Modeling Vibrations for a SpaceX Falcon 9 Rocket

Modelling the vibration response of a Falcon 9 rocket using a spring-mass-damper model.

### Our Findings

+ Mid-range stiffness (1e6 range) causes more variability in the frequency response, while high-range stiffness causes the entire rocket to have approximately the same response

### Limitations

+ Additional work needs to be done to evaluate whether a spring-mass-damper system is good enough for real-world applications

+ `main.m`: the main file
+ `reference_functions.m`: code for the reference functions from S. Rao's textbook 
+ `rocket_no_dva.m`: code for the rocket vibration equations with no dynamic vibration absorber (DVA)

### Archived Code
+ `main.oct`: equations of motion written in Octave
