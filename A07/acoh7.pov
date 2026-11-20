#version 3.6;

#include "acetic_acid.pov"

global_settings {
  assumed_gamma 1.0
}

background {
  color rgb <0.97, 0.98, 1.00>
}

camera {
  location <0, 0, -30>
  look_at <0, 0, 0>
  right x * image_width / image_height
  angle 44
}

light_source {
  <-12, 16, -18>
  color rgb <1, 1, 1>
}

light_source {
  <12, -8, -12>
  color rgb <0.55, 0.60, 0.75>
}

#declare MoleculeCount = 7;
#declare RingRadius = 7.0;

#for (i, 0, MoleculeCount - 1)
  #declare rotationAngle = 360 * i / MoleculeCount;
  object {
    AceticAcid
    rotate <0, 0, rotationAngle>
    translate <RingRadius * cos(rotationAngle), RingRadius * sin(rotationAngle), 0>
  }
#end
