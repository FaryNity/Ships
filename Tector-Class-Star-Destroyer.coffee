  
Array::mult = (m) -> @map (v) -> v*m
Array::add = (m) -> @map (v) -> v+m

for key, value of []
  delete Array::[key]
  Object.defineProperty Array::, key,
    value: value
    configurable: true
    enumerable: false
addEngineMount = (n, xpos, ypos, zpos, height, zoff) ->
  model.bodies['engineMountBlock'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos+mainypos
        z: zpos+mainzpos
      position:
        x: [0,0,0,0]
        y: [-17,-17,-12,-12]
        z: zoff
      width: [0,10,10,0]
      height: [0,7,5,0].mult(height)
      texture: [4]
      angle: 90
  model.bodies['engineMountBlockRod'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos+mainypos
        z: zpos+mainzpos
      position:
        x: [0,0,0,0]
        y: [-15,-15,-14,-14]
        z: [0,0,0,0].add(-1*zoff[0])
      width: [0,5,5,0]
      height: [0,8,8,0].mult(height)
      texture: [4]
      angle: 90
addOctupleTurret = (n, xpos, ypos, zpos, size, angle) ->
  model.bodies['octupleTurretBase'+n] =
      section_segments: [0,135,180,215,280,315].add(22.5)
      offset:
        x: xpos
        y: mainzpos+zpos
        z: -mainypos-ypos
      position:
        x: [0,0,0,0]
        y: [-19,-12,1,1].mult(size)
        z: [0,0,0,0]
      width: [0,11,11,0].mult(size)
      height: [0,5.5,5.5,0].mult(size)
      texture: [1.9]
      vertical: true
      angle: 12
  model.bodies['octupleTurretOctagonalBase'+n] =
      section_segments: [0,45,90,135,180,225,270,315].add(22.5)
      offset:
        x: xpos
        y: mainzpos+zpos
        z: -mainypos-ypos
      position:
        x: [0,0,0,0].add(2).mult(size)
        y: [-19,-12,1.1,1.1].mult(size)
        z: [0,0,0,0]
      width: [0,5,5,0].mult(size)
      height: [0,5,5,0].mult(size)
      texture: [3]
      vertical: true
      angle: 12
  model.bodies['octupleTurretCircularBase'+n] =
      section_segments: 12
      offset:
        x: xpos
        y: mainzpos+zpos
        z: -mainypos-ypos
      position:
        x: [0,0,0,0].add(2).mult(size)
        y: [-19,-12,1.15,1.15].mult(size)
        z: [0,0,0,0]
      width: [0,4,4,0].mult(size)
      height: [0,4,4,0].mult(size)
      texture: [4]
      vertical: true
      angle: 12
  model.bodies['octupleTurretCentralRod'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos+2*size
        y: mainypos+ypos
        z: zpos+mainzpos
      position:
        x: [0,0,0,0,0,0]
        y: [-3,-3,0,1,3.4,3.4].mult(size)
        z: [0,0,-0.2,-1,-2,-2].mult(size)
      width: [0,1,1,1,1,0].mult(size)
      height: [0,4,4,4,4,0].mult(size)
      texture: [2]
      angle: 90+angle
  model.bodies['octupleTurretBarrelMount'+n] =
      section_segments: 6
      offset:
        x: xpos+2*size
        y: mainypos+ypos
        z: zpos+mainzpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0,0].add(-1).mult(size)
        y: [-3.5,-3.5,-3.4,-3,-2.9,-1.3,-1.2,1.2,1.3,2.9,3,3.4,3.5,3.5].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0,0,0,0,0].add(1.6).mult(size)
      width: [0,1,1,1,1,1,1,1,1,1,1,1,1,0].mult(size)
      height: [0,1,1,1,1,1,1,1,1,1,1,1,1,0].mult(size)
      texture: [0.9,63,0.9,63,1.9,63,0.9,63,1.9,63,0.9,63,0.9]
      angle: 0+angle
  model.bodies['octupleTurretBarrelBack'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos+2*size
        y: mainypos+ypos
        z: zpos+mainzpos
      position:
        x: [0,0,-0.5,0,0].add(-2.2).mult(size)
        y: [-2.6,-2.6,0,2.6,2.6].mult(size)
        z: [0,0,0,0,0].add(1.6).mult(size)
      width: [0,0.4,0.4,0.4,0].mult(size)
      height: [0,0.6,0.8,0.6,0].mult(size)
      texture: [2]
      angle: 0+angle
  addBarbetteBarrel('first'+n, xpos+2*size, 1.1, ypos, zpos, size, angle)
  addBarbetteBarrel('second'+n, xpos+2*size, 1.7, ypos, zpos, size, angle)
  addBarbetteBarrel('third'+n, xpos+2*size, 2.3, ypos, zpos, size, angle)
  addBarbetteBarrel('fourth'+n, xpos+2*size, 2.9, ypos, zpos, size, angle)
  addBarbetteBarrel('fifth'+n, xpos+2*size, -1.1, ypos, zpos, size, angle)
  addBarbetteBarrel('sixth'+n, xpos+2*size, -1.7, ypos, zpos, size, angle)
  addBarbetteBarrel('seventh'+n, xpos+2*size, -2.3, ypos, zpos, size, angle)
  addBarbetteBarrel('eigth'+n, xpos+2*size, -2.9, ypos, zpos, size, angle)
addBarbetteBarrel = (name, xpos, xoff, ypos, zpos, size, angle) ->
  model.bodies[name+'octupleTurretBarrel'] =
      section_segments: 12
      offset:
        x: xpos
        y: mainypos+ypos
        z: zpos+mainzpos
      position:
        x: [0,0,0,0].add(xoff).mult(size)
        y: [-1.4,-1.4,3.4,2.7].mult(size)
        z: [0,0,1*size,0.5*size].add(1.6*size)
      width: [0,1,1,0].mult(size*0.31)
      height: [0,1,1,0].mult(size*0.31)
      texture: [3,3,17]
      angle: 90+angle
addShieldGenRod = (n, xpos, ypos, zpos, size, angle) ->
  model.bodies['shieldgenRod'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos+mainypos
        z: zpos+mainzpos
      position:
        x: [0,0,0,0]
        y: [-6.5,-5.5,-5,-5].mult(size)
        z: [-10,0,0,0]
      width: [0,0.3,0.4,0].mult(size)
      height: [0,17,17,0].mult(size)
      texture: [3]
      angle: angle
addWingtipEndRod = (n,xpos,ypos,zpos,size,angle) ->
  model.bodies['wingtipEndRod'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: zpos+mainzpos
        z: -ypos-mainypos
      position:
        x: [0,0,0,0]
        y: [3,3,4.5,4.5].add(17).mult(size)
        z: [0,0,0,0]
      width: [0,0.7,0.7,0].mult(size)
      height: [0,5,5,0].mult(size)
      texture: [1]
      angle: angle
      vertical: true
addInnerEngineRod = (n,xpos,ypos,zpos,size,angle) ->
  model.bodies['innerEngRod'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: zpos+mainzpos
        z: -ypos-mainypos
      position:
        x: [0,0,0,0]
        y: [3,3,4.5,4.5].add(1).mult(size)
        z: [0,0,0,0]
      width: [0,1,1,0].mult(size)
      height: [0,5,5,0].mult(size)
      texture: [1]
      angle: angle
      vertical: true
addTrenchSegment = (n,xpos,ypos,zpos,size,texture,angle) ->
  model.bodies['trenchSegmentOne'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos+mainypos
        z: zpos+mainzpos
      position:
        x: [0,0,0,0]
        y: [-12,-12,0,0].mult(size)
        z: [0,0,0,0]
      width: [0,5,5,0].mult(size)
      height: [0,3,3,0].mult(size)
      texture: texture
      angle: angle
addIonCannon = (n, xpos, ypos, zpos, size, angle) ->
  model.bodies['ionCannonRodOne'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].mult(size)
        y: [-48,-48,1,1].mult(size)
        z: [13,13,13,13].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodTwo'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].mult(size)
        y: [-48,-48,1,1].mult(size)
        z: [-13,-13,-13,-13].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodThree'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [13,13,13,13].mult(size)
        y: [-48,-48,1,1].mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodFour'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [-13,-13,-13,-13].mult(size)
        y: [-48,-48,1,1].mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodFive'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [6.5,6.5,6.5,6.5].mult(-size)
        y: [-48,-48,1,1].mult(size)
        z: [11,11,11,11].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodSix'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [6.5,6.5,6.5,6.5].mult(size)
        y: [-48,-48,1,1].mult(size)
        z: [11,11,11,11].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodSeven'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [6.5,6.5,6.5,6.5].mult(size)
        y: [-48,-48,1,1].mult(size)
        z: [11,11,11,11].mult(-size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodEight'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [6.5,6.5,6.5,6.5].mult(-size)
        y: [-48,-48,1,1].mult(size)
        z: [11,11,11,11].mult(-size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodNine'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [11,11,11,11].mult(size)
        y: [-48,-48,1,1].mult(size)
        z: [6.5,6.5,6.5,6.5].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodTen'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [11,11,11,11].mult(-size)
        y: [-48,-48,1,1].mult(size)
        z: [6.5,6.5,6.5,6.5].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodEleven'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [11,11,11,11].mult(size)
        y: [-48,-48,1,1].mult(size)
        z: [6.5,6.5,6.5,6.5].mult(-size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRodTwelve'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [11,11,11,11].mult(-size)
        y: [-48,-48,1,1].mult(size)
        z: [6.5,6.5,6.5,6.5].mult(-size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ionCannonRingOne'+n] =
      section_segments: 16
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [0,0,-6,-4,-4,8,8,40,0,0].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [11,11,11,15,15,15.5,15,11,11,11].mult(size)
      height: [11,11,11,15,15,15.5,15,11,11,11].mult(size)
      texture: [3,17,63,2,2,17,17,3]
      angle: angle
      laser:
        damage: [5,5]
        rate: 1
        type: 1
        speed: [280,280]
        number: 1500
  model.bodies['ionCannonRingTwo'+n] =
      section_segments: 16
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-50,-50,-56,-54,-54,-46,-46,-44,-50,-50].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [11,11,11,15,15,15,15,11,11,11].mult(size)
      height: [11,11,11,15,15,15,15,11,11,11].mult(size)
      texture: [2,2,63,2,2,2,63,2]
      angle: angle
  model.bodies['ionCannonRingThree'+n] =
      section_segments: 16
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-55,-55,-59,-59,-59,-51,-51,-49,-55,-55].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [7,7,7,11,11,13,11,7,7,7].mult(size)
      height: [7,7,7,11,11,13,11,7,7,7].mult(size)
      texture: [3,3,17,3,3,3,63,3]
      angle: angle
  model.bodies['ionCannonRodSec2One'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0].mult(size)
        y: [-100,-90.9,-90.9,-49,-49].mult(size)
        z: [4.75,9.5,9.5,9.5,9.5].mult(size)
      width: [0,1.4,1.4,1.4,0].mult(size)
      height: [0,1.4,1.4,1.4,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodSec2Two'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0].mult(size)
        y: [-100,-90.9,-90.9,-49,-49].mult(size)
        z: [4.75,9.5,9.5,9.5,9.5].mult(-size)
      width: [0,1.4,1.4,1.4,0].mult(size)
      height: [0,1.4,1.4,1.4,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodSec2Three'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [4.75,9.5,9.5,9.5,9.5].mult(size)
        y: [-100,-90.9,-90.9,-49,-49].mult(size)
        z: [0,0,0,0,0].mult(size)
      width: [0,1.4,1.4,1.4,0].mult(size)
      height: [0,1.4,1.4,1.4,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodSec2Four'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [4.75,9.5,9.5,9.5,9.5].mult(-size)
        y: [-100,-90.9,-90.9,-49,-49].mult(size)
        z: [0,0,0,0,0].mult(size)
      width: [0,1.4,1.4,1.4,0].mult(size)
      height: [0,1.4,1.4,1.4,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodSec2Five'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [2.75,6.5,6.5,6.5,6.5].mult(size)
        y: [-100,-90.9,-90.9,-49,-49].mult(size)
        z: [2.75,6.5,6.5,6.5,6.5].mult(size)
      width: [0,1.4,1.4,1.4,0].mult(size)
      height: [0,1.4,1.4,1.4,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodSec2Six'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [2.75,6.5,6.5,6.5,6.5].mult(-size)
        y: [-100,-90.9,-90.9,-49,-49].mult(size)
        z: [2.75,6.5,6.5,6.5,6.5].mult(size)
      width: [0,1.4,1.4,1.4,0].mult(size)
      height: [0,1.4,1.4,1.4,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodSec2Seven'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [2.75,6.5,6.5,6.5,6.5].mult(-size)
        y: [-100,-90.9,-90.9,-49,-49].mult(size)
        z: [2.75,6.5,6.5,6.5,6.5].mult(-size)
      width: [0,1.4,1.4,1.4,0].mult(size)
      height: [0,1.4,1.4,1.4,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodSec2Eight'+n] =
      section_segments: 10
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [2.75,6.5,6.5,6.5,6.5].mult(size)
        y: [-100,-90.9,-90.9,-49,-49].mult(size)
        z: [2.75,6.5,6.5,6.5,6.5].mult(-size)
      width: [0,1.4,1.4,1.4,0].mult(size)
      height: [0,1.4,1.4,1.4,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRingFour'+n] =
      section_segments: 16
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-65,-65,-67,-67,-67,-63,-63,-63,-65,-65].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [9,9,9,11,11,11,11,9,9,9].mult(size)
      height: [9,9,9,11,11,11,11,9,9,9].mult(size)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonRingFive'+n] =
      section_segments: 16
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-73,-73,-75,-75,-75,-71,-71,-71,-73,-73].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [9,9,9,11,11,11,11,9,9,9].mult(size)
      height: [9,9,9,11,11,11,11,9,9,9].mult(size)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonRingSix'+n] =
      section_segments: 16
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-81,-81,-83,-83,-83,-79,-79,-79,-81,-81].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [9,9,9,11,11,11,11,9,9,9].mult(size)
      height: [9,9,9,11,11,11,11,9,9,9].mult(size)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonRingSeven'+n] =
      section_segments: 16
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-89,-89,-91,-91,-91,-87,-87,-87,-89,-89].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [9,9,9,11,11,11,11,9,9,9].mult(size)
      height: [9,9,9,11,11,11,11,9,9,9].mult(size)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonRingEight'+n] =
      section_segments: 16
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-98,-98,-100,-100,-100,-96,-96,-96,-98,-98].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [3,3,3,4.5,7,7,7,3,3,3].mult(size)
      height: [3,3,3,4.5,7,7,7,3,3,3].mult(size)
      texture: [3,3,17,3,8,3,3,17]
      angle: angle
  model.bodies['ionCannonRodFrontTop'+n] =
      section_segments: 4
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0].mult(size)
        y: [-150,-125,-125,10,10].mult(size)
        z: [3,4,4,4,4].mult(size)
      width: [0,4,4,5,0].mult(size)
      height: [0,3,3,3,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodFrontBottom'+n] =
      section_segments: 4
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0].mult(size)
        y: [-150,-125,-125,10,10].mult(size)
        z: [-3,-4,-4,-4,-4].mult(size)
      width: [0,4,4,5,0].mult(size)
      height: [0,3,3,3,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodLeftSideBottom'+n] =
      section_segments: 4
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [10,10,10,10,10].mult(size)
        y: [-140,-95,-95,-50,-50].mult(size)
        z: [-2.2,-3,-3,-3,-3].mult(size)
      width: [0,3,3,4,0].mult(size)
      height: [0,2,2,2,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodLeftSideTop'+n] =
      section_segments: 4
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [10,10,10,10,10].mult(size)
        y: [-140,-95,-95,-50,-50].mult(size)
        z: [-2.2,-3,-3,-3,-3].mult(-size)
      width: [0,3,3,4,0].mult(size)
      height: [0,2,2,2,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodRightSideTop'+n] =
      section_segments: 4
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [10,10,10,10,10].mult(-size)
        y: [-140,-95,-95,-50,-50].mult(size)
        z: [-2.2,-3,-3,-3,-3].mult(-size)
      width: [0,3,3,4,0].mult(size)
      height: [0,2,2,2,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonRodRightSideBottom'+n] =
      section_segments: 4
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [10,10,10,10,10].mult(-size)
        y: [-140,-95,-95,-50,-50].mult(size)
        z: [-2.2,-3,-3,-3,-3].mult(size)
      width: [0,3,3,4,0].mult(size)
      height: [0,2,2,2,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ionCannonProngRingOne'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-105,-105,-107,-107,-107,-103,-103,-103,-105,-105].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [3,3,3,5,5,5,5,3,3,3].mult(size)
      height: [3,3,3,6,6,6,6,3,3,3].mult(size)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonProngRingTwo'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-112,-112,-114,-114,-114,-110,-110,-110,-112,-112].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [3,3,3,5,5,5,5,3,3,3].mult(size)
      height: [3,3,3,6,6,6,6,3,3,3].mult(size)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonProngRingThree'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-119,-119,-121,-121,-121,-117,-117,-117,-119,-119].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [3,3,3,5,5,5,5,3,3,3].mult(size)
      height: [3,3,3,6,6,6,6,3,3,3].mult(size)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonProngRingFour'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-126,-126,-128,-128,-128,-124,-124,-124,-126,-126].mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [2.5,2.5,2.5,4.5,4.5,4.5,4.5,2.5,2.5,2.5].mult(size)
      height: [3,3,3,6,6,6,6,3,3,3].mult(size)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonBackMtBOne'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-126,-126,-128,-128,-128,-124,-124,-124,-126,-126].add(145).mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [3,3,3,6,6,6,6,3,3,3].mult(size*3)
      height: [3,3,3,6,6,6,6,3,3,3].mult(size*3)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonBackMtBTwo'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-126,-126,-128,-128,-128,-124,-124,-124,-126,-126].add(155).mult(size)
        z: [0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [3,3,3,6,6,6,6,3,3,3].mult(size*3)
      height: [3,3,3,6,6,6,6,3,3,3].mult(size*3)
      texture: [3,3,17,3,3,3,17,3]
      angle: angle
  model.bodies['ionCannonBackMtMain'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0,0].mult(size)
        y: [-126,-126,-113,-93,-80,-80,-67,-67,-43,-43,-24,-24,-14,-14].add(163).mult(size)
        z: [0,0,0,0,0,0,0,0,0,0,0,0,0,0].mult(size)
      width: [3,6,6,6,6,4,4,6,6,4.5,4.5,6,6,0].mult(size*3)
      height: [3,6,6,6,6,4,4,6,6,4.5,4.5,6,6,0].mult(size*3)
      texture: [17,2,8,2,2,17,63,3,3,17,63,3]
      angle: angle
  model.bodies['ICbackrodOne'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].mult(size)
        y: [-28,-28,1,1].add(140).mult(size)
        z: [-13,-13,-13,-13].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICbackrodTwo'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].mult(size)
        y: [-28,-28,1,1].add(140).mult(size)
        z: [13,13,13,13].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICbackrodThree'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [13,13,13,13].mult(size)
        y: [-28,-28,1,1].add(140).mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICbackrodFour'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [-13,-13,-13,-13].mult(size)
        y: [-28,-28,1,1].add(140).mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICbackrodFive'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [-10,-10,-10,-10].mult(size)
        y: [-28,-28,1,1].add(140).mult(size)
        z: [-10,-10,-10,-10].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICbackrodSix'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [10,10,10,10].mult(size)
        y: [-28,-28,1,1].add(140).mult(size)
        z: [-10,-10,-10,-10].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICbackrodSeven'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [10,10,10,10].mult(size)
        y: [-28,-28,1,1].add(140).mult(size)
        z: [10,10,10,10].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICbackrodEight'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [-10,-10,-10,-10].mult(size)
        y: [-28,-28,1,1].add(140).mult(size)
        z: [10,10,10,10].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICflaprodLeft'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].add(24).mult(size)
        y: [-34,-34,8,8].add(97).mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICflaprodRight'+n] =
      section_segments: 8
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].add(-24).mult(size)
        y: [-34,-34,8,8].add(97).mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,2,2,0].mult(size)
      height: [0,2,2,0].mult(size)
      texture: [3]
      angle: angle
  model.bodies['ICFlapMountLeftB'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].add(-108).mult(size)
        y: [-28,-28,-4,-4].add(40).mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,9,7,0].mult(size)
      height: [0,6,3,0].mult(size)
      texture: [3]
      angle: angle+90
  model.bodies['ICFlapMountRightB'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].add(108).mult(size)
        y: [-28,-28,-4,-4].add(40).mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,9,7,0].mult(size)
      height: [0,6,3,0].mult(size)
      texture: [3]
      angle: angle-90
  model.bodies['ICFlapMountLeftF'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].add(-60).mult(size)
        y: [-28,-28,-4,-4].add(40).mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,9,7,0].mult(size)
      height: [0,6,3,0].mult(size)
      texture: [3]
      angle: angle+90
  model.bodies['ICFlapMountRightF'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].add(60).mult(size)
        y: [-28,-28,-4,-4].add(40).mult(size)
        z: [0,0,0,0].mult(size)
      width: [0,9,7,0].mult(size)
      height: [0,6,3,0].mult(size)
      texture: [3]
      angle: angle-90
  model.bodies['ICFlapMainLeft'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,-30,-20,-20].add(-74).mult(size)
        y: [-28,-28,-4,34,34].add(60).mult(size)
        z: [0,0,0,15,15].mult(size)
      width: [0,114,47,20,0].mult(size)
      height: [0,9,6,2.5,0].mult(size)
      texture: [2]
      angle: angle+90
  model.bodies['ICFlapSndLeft'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [-30,-20,-20].add(-74).mult(size)
        y: [-4,34,34].add(60).mult(size)
        z: [0,-15,-15].mult(size)
      width: [47,20,0].mult(size)
      height: [6,2.5,0].mult(size)
      texture: [2]
      angle: angle+90
  model.bodies['ICFlapMainRight'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,-30,-20,-20].add(-74).mult(-size)
        y: [-28,-28,-4,34,34].add(60).mult(size)
        z: [0,0,0,15,15].mult(size)
      width: [0,114,47,20,0].mult(size)
      height: [0,9,6,2.5,0].mult(size)
      texture: [2]
      angle: angle-90
  model.bodies['ICFlapSndRight'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [-30,-20,-20].add(-74).mult(-size)
        y: [-4,34,34].add(60).mult(size)
        z: [0,-15,-15].mult(size)
      width: [47,20,0].mult(size)
      height: [6,2.5,0].mult(size)
      texture: [2]
      angle: angle-90
  model.bodies['ICReactorMountM'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].mult(size)
        y: [-14,-14,2,2].add(114).mult(size)
        z: [0,0,0,0].add(30).mult(size)
      width: [0,14,14,0].mult(size)
      height: [0,22,22,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ICReactorMountBottom'+n] =
      section_segments: 6
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].mult(size)
        y: [-15,-15,3,3].add(114).mult(size)
        z: [0,0,0,0].add(13).mult(size)
      width: [0,17,17,0].mult(size)
      height: [0,11,11,0].mult(size)
      texture: [1.9]
      angle: angle
  model.bodies['ICReactorMountBM'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].mult(size)
        y: [-14,-14,2,2].add(154).mult(size)
        z: [0,0,0,0].add(20).mult(size)
      width: [0,14,14,0].mult(size)
      height: [0,34,34,0].mult(size)
      texture: [2]
      angle: angle
  model.bodies['ICReactorMountBBottom'+n] =
      section_segments: 6
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0].mult(size)
        y: [-15,-15,3,3].add(154).mult(size)
        z: [0,0,0,0].add(13).mult(size)
      width: [0,17,17,0].mult(size)
      height: [0,11,11,0].mult(size)
      texture: [1.9]
      angle: angle
  model.bodies['ICReactorAltReg'+n] =
      section_segments: 12
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0].add(-108).mult(size)
        y: [-11,-11,-12,-12,12,12,11,11].mult(size)
        z: [0,0,0,0,0,0,0,0].add(20).mult(size)
      width: [0,6,6,8,8,6,6,0].mult(size)
      height: [0,6,6,8,8,6,6,0].mult(size)
      texture: [2]
      angle: angle+90
  model.bodies['ICReactorAltRegTop'+n] =
      section_segments: 12
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0].add(-108).mult(size)
        y: [-11,-11,-12,-12,12,12,11,11].mult(size)
        z: [0,0,0,0,0,0,0,0].add(35).mult(size)
      width: [0,6,6,8,8,6,6,0].mult(size)
      height: [0,6,6,8,8,6,6,0].mult(size)
      texture: [2]
      angle: angle+90
  model.bodies['ICReactorAltRegB'+n] =
      section_segments: 12
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0].add(-148).mult(size)
        y: [-11,-11,-12,-12,12,12,11,11].mult(size)
        z: [0,0,0,0,0,0,0,0].add(20).mult(size)
      width: [0,6,6,8,8,6,6,0].mult(size)
      height: [0,6,6,8,8,6,6,0].mult(size)
      texture: [2]
      angle: angle+90
  model.bodies['ICReactorAltRegBTop'+n] =
      section_segments: 12
      offset:
        x: xpos
        y: ypos
        z: zpos
      position:
        x: [0,0,0,0,0,0,0,0].add(-148).mult(size)
        y: [-11,-11,-12,-12,12,12,11,11].mult(size)
        z: [0,0,0,0,0,0,0,0].add(35).mult(size)
      width: [0,6,6,8,8,6,6,0].mult(size)
      height: [0,6,6,8,8,6,6,0].mult(size)
      texture: [2]
      angle: angle+90
addBridgeRung = (n, ypos, zpos) ->
  model.bodies['bridgeRungmt'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 164+mainypos+ypos
        z: 110+mainzpos-zpos
      position:
        x: [0,0,0,0,0]
        y: [-2,-2,14,14]
        z: [0,0,0,0,0]
      width: [0,9,9,0]
      height: [0,0.1,0.1,0]
      texture: [2]
  model.bodies['bridgeRungmtTwo'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 164+mainypos+ypos+0.3
        z: 110+mainzpos-zpos-0.3
      position:
        x: [0,0,0,0,0]
        y: [-2,-2,14,14]
        z: [0,0,0,0,0]
      width: [0,9,9,0]
      height: [0,0.1,0.1,0]
      texture: [2]
  model.bodies['bridgeRungmtThree'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 164+mainypos+ypos+0.6
        z: 110+mainzpos-zpos-0.6
      position:
        x: [0,0,0,0,0]
        y: [-2,-2,14,14]
        z: [0,0,0,0,0]
      width: [0,9,9,0]
      height: [0,0.1,0.1,0]
      texture: [2]
  model.bodies['bridgeRungmtFour'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 164+mainypos+ypos+0.9
        z: 110+mainzpos-zpos-0.9
      position:
        x: [0,0,0,0,0]
        y: [-2,-2,14,14]
        z: [0,0,0,0,0]
      width: [0,9,9,0]
      height: [0,0.1,0.1,0]
      texture: [2]
addBridgeBackRod = (n, xpos) ->
  model.bodies['bridgeBackrod'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: xpos
        y: 174+mainypos
        z: 111+mainzpos
      position:
        x: [0,0,0,0,0]
        y: [-0.4,-0.4,0,0]
        z: [0,0,0,0,0]
      width: [0,2,2,0]
      height: [0,1,1,0]
      texture: [2]
      angle: 90
addBump = (n, xpos, ypos, zpos, size) ->
  model.bodies['bumpsquare'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 0+mainypos
        z: 0+mainzpos
      position:
        x: [0,0,0,0].add(xpos)
        y: [-2,-2,2,2].add(ypos)
        z: [0,0,0,0].add(zpos)
      width: [0,3,3,0].mult(size)
      height: [0,4,4,0].mult(size)
      texture: [2]
      angle: 0
addBump2 = (n, xpos, ypos, zpos, size) ->
  model.bodies['bumpsquaretwo'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 0+mainypos
        z: 0+mainzpos
      position:
        x: [0,0,0,0].add(-xpos)
        y: [-2,-2,2,2].add(ypos)
        z: [0,0,0,0].add(zpos)
      width: [0,3,3,0].mult(size)
      height: [0,4,4,0].mult(size)
      texture: [2]
      angle: 0
addBottomBump = (n, xpos, ypos, zpos, size) ->
  model.bodies['bumpsquarebt'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 0+mainypos
        z: 0+mainzpos
      position:
        x: [0,0,0,0].add(xpos)
        y: [-2,-2,2,2].add(ypos)
        z: [0,0,0,0].add(-zpos)
      width: [0,3,3,0].mult(size)
      height: [0,4,4,0].mult(size)
      texture: [2]
      angle: 0
addBottomBump2 = (n, xpos, ypos, zpos, size) ->
  model.bodies['bumpsquarebttwo'+n] =
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 0+mainypos
        z: 0+mainzpos
      position:
        x: [0,0,0,0].add(-xpos)
        y: [-2,-2,2,2].add(ypos)
        z: [0,0,0,0].add(-zpos)
      width: [0,3,3,0].mult(size)
      height: [0,4,4,0].mult(size)
      texture: [2]
      angle: 0


maxypos = 25
minypos = 0
elementamount = 500
array1 = []
m=0
loop
  array1[m] = Math.random() * (maxypos - minypos) + minypos
  m = m+1
  if m+1 == elementamount then break

array2 = [18,0,18,0,-18,0,-18,0,-18,0,-18]

maxypos = 1.1
minypos = 0.6
sizeArray1 = []
m=0
loop
  sizeArray1[m] = Math.random() * (maxypos - minypos) + minypos
  m = m+1
  if m+1 == elementamount then break

maxypos = 1.1
minypos = -1.1
sizeArray2 = []
m=0
loop
  sizeArray2[m] = Math.random() * (maxypos - minypos) + minypos
  m = m+1
  if m+1 == elementamount then break

maxypos = 5
minypos = -5
arrayT2 = []
m=0
loop
  arrayT2[m] = Math.random() * (maxypos - minypos) + minypos
  m = m+1
  if m+1 == elementamount then break


maxypos = 35
minypos = 0
bumpY = []
m=0
loop
  bumpY[m] = Math.random() * (maxypos - minypos) + minypos
  m = m+1
  if m+1 == elementamount then break

arrayNeg = [1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1]
arrayT2Tex = [2,17,17,3,1,16,2,1,16,17,3,16,2,3,17,3,2,16,17,3,1,1,3,2,16,17,17,3,16,16,1,3,17,2,16,1,17,16,2,1,3,17,16,2,3,16,3,2,3,17,16,1,1,17,3,16,16,2,3,1,3,1,16,17,2,1,3,16,17,2,3,3,16,2,17,3,1,16,17,17,1,16,3,2,17,16,16,3,1,3,1,2,1,16,17,3,2,16,3,3,17,2,3,16,1,1,17,3,16,2,17,3,1,16,3]
textArray = [2,2,2,17,2,2,17,2,2,17,2,17,17,2,2,17,17,2,2,17,17,2,2,2,17,2,2,17,2,2,2,17,2,2,2]

h=1.1
engineRadius=0.9
mainypos=-50
mainzpos=0
bridgeTex=3
model =
  name: 'Star Destroyer'
  level: 7.9
  model: 1
  size: 3.4
  zoom: 1
  specs:
    shield:
      capacity: [150000,200000]
      reload: [15000,20000]
    generator:
      capacity: [35000,45000]
      reload: [110000,150000]
    ship:
      mass: 20000
      speed: [70,85]
      rotation: [8,14]
      acceleration: [60,80]
  bodies:
#main structure
    mainStructureBaseTop:
      section_segments: [45,135,225,315]
      offset:
        x: 164.3
        y: -75+mainypos
        z: -3.5+mainzpos
      position:
        x: [-240,0,-5,-5]
        y: [-251.95,-95.02,-89,-89]
        z: [52,11.7,10,10]
      width: [0.00001,335,328,0]
      height: [3,3,3,3]
      texture: [2]
      angle: 108.215
    mainStructureBaseBottom:
      section_segments: [45,135,225,315]
      offset:
        x: 164.3
        y: -75+mainypos
        z: 3.5+mainzpos
      position:
        x: [-240,0,-5,-5]
        y: [-251.95,-95.02,-89,-89]
        z: [-52,-11.7,-10,-10]
      width: [0.00001,335,328,0]
      height: [3,3,3,3]
      texture: [2]
      angle: 108.215
    foreStructureBaseTop:
      section_segments: [45,135,225,315]
      offset:
        x: 72.7
        y: -189.6+mainypos
        z: 7+mainzpos
      position:
        x: [-13,-18.5,-18.5].mult(0.7)
        y: [-95,-82,-82].mult(0.4)
        z: [-0.4,-2,-2]
      width: [175,160,0.000001].mult(0.8)
      height: [3,3,3]
      texture: [2]
      angle: 108.2
    foreStructureBaseBottom:
      section_segments: [45,135,225,315]
      offset:
        x: 72.7
        y: -189.6+mainypos
        z: -7+mainzpos
      position:
        x: [-13,-18.5,-18.5].mult(0.7)
        y: [-95,-82,-82].mult(0.4)
        z: [0.4,2,2]
      width: [175,160,0.000001].mult(0.8)
      height: [3,3,3]
      texture: [2]
      angle: 108.2
    foreStructureMidTop:
      section_segments: [45,135,225,315]
      offset:
        x: 134.5
        y: -2+mainypos
        z: 5.7+mainzpos
      position:
        x: [1,0,0].mult(0.7)
        y: [-100,-85,-85].mult(0.4)
        z: [1,0,0]
      width: [95,85,0.000001].mult(0.8)
      height: [3,3,3]
      texture: [2]
      angle: 108.7
    foreStructureMidBottom:
      section_segments: [45,135,225,315]
      offset:
        x: 134.5
        y: -2+mainypos
        z: -5.7+mainzpos
      position:
        x: [1,0,0].mult(0.7)
        y: [-100,-85,-85].mult(0.4)
        z: [-1,0,0]
      width: [95,85,0.000001].mult(0.8)
      height: [3,3,3]
      texture: [2]
      angle: 108.7
    foreStructureBackTop:
      section_segments: [45,135,225,315]
      offset:
        x: 177
        y: 117+mainypos
        z: 6+mainzpos
      position:
        x: [1,2,0].mult(0.7)
        y: [-105,-90,-90].mult(0.4)
        z: [0.5,0,0]
      width: [90,83,0.000001].mult(0.8)
      height: [3,3,3]
      texture: [2]
      angle: 109
    foreStructureBackBottom:
      section_segments: [45,135,225,315]
      offset:
        x: 177
        y: 117+mainypos
        z: -6+mainzpos
      position:
        x: [1,2,0].mult(0.7)
        y: [-105,-90,-90].mult(0.4)
        z: [-0.5,0,0]
      width: [90,83,0.000001].mult(0.8)
      height: [3,3,3]
      texture: [2]
      angle: 109
#trench
    trenchPain:
      section_segments: [45,135,225,315]
      offset:
        x: 0.01
        y: -237+mainypos
        z: 0+mainzpos
      position:
        x: [0,0,10,65,60,71,81,111,107,116,122,150,-2.14]
        y: [-20,-20,-10,156,167,200,205,292,298,324,327,410,425]
        z: [0,0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,3,3,3,3,3,3,3,3,3,3,3,3]
      height: [0,12,12,10,10,10,10,10,10,10,10,10,65]
      texture: [3]
#superstructure
    superstructureForeBase:
      section_segments: 6
      offset:
        x: 0
        y: -194+mainypos
        z: 14+mainzpos
      position:
        x: [0,0,0,0]
        y: [-11,-11,24,24]
        z: [-0.5,-0.5,0,0]
      width: [0,8,15,0]
      height: [0,5,7,0]
      texture: [1.9]
    superstructureForeOutline:
      section_segments: 6
      offset:
        x: 0
        y: -194+mainypos
        z: 13.7+mainzpos
      position:
        x: [0,0,0,0]
        y: [-11.8,-11.8,24.8,24.8]
        z: [-0.5,-0.5,0,0]
      width: [0,8.8,15.8,0]
      height: [0,5,7,0]
      texture: [2.9]
    superstructureForeMidBase:
      section_segments: 6
      offset:
        x: 0
        y: -154+mainypos
        z: 14.2+mainzpos
      position:
        x: [0,0,0,0]
        y: [-11,-11,52,52]
        z: [-2,-2,0,0]
      width: [0,16,25,0]
      height: [0,7,10,0]
      texture: [1.9]
    superstructureForeMidOutline:
      section_segments: 6
      offset:
        x: 0
        y: -154+mainypos
        z: 13.6+mainzpos
      position:
        x: [0,0,0,0]
        y: [-12,-12,53,53]
        z: [-1.8,-1.8,0.4,0.4]
      width: [0,17,26,0]
      height: [0,7,10,0]
      texture: [2.9]
    superstructureMidBase:
      section_segments: 6
      offset:
        x: 0
        y: -84+mainypos
        z: 19+mainzpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-14,-11,5,7,17,19,36,38,44,46,54,59]
        z: [0,0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,27,30,28,30,34,38,36,37,41,43.5,0]
      height: [0,7,9.5,10,11,11,12,12,13,13,14,0]
      texture: [1.9]
    superstructureMidOutline:
      section_segments: 6
      offset:
        x: 0
        y: -84+mainypos
        z: 18+mainzpos
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-15,-12,5,7,17,19,36,38,44,46,55,60]
        z: [0,0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,27,30,28,30,34,38,36,37,41,43.5,0].add(1)
      height: [0,7,9.5,10,11,11,12,12,13,13,14,0]
      texture: [2.9]
  #the sequel!
    superstructureSpecPlating:
      section_segments: 6
      offset:
        x: 0
        y: -6+mainypos
        z: 12.2+mainzpos
      position:
        x: [0,0,0,0]
        y: [-11,-11,68,68]
        z: [-0.5,-0.5,0,0]
      width: [0,73,97,0]
      height: [0,18,23.7,0]
      texture: [1.9]
    superstructureSpecPlatingOutline:
      section_segments: 6
      offset:
        x: 1.5
        y: -6+mainypos
        z: 11.8+mainzpos
      position:
        x: [0,0,0,0]
        y: [-12,-12,69,69]
        z: [-0.5,-0.5,0,0]
      width: [0,73,97,0]
      height: [0,18,23.7,0]
      texture: [2.9]
    tractorbeamProjectorBase:
      section_segments: [-5,45,90,135,180,225,270,320].add(22.5)
      offset:
        x: 0
        y: 21+mainypos
        z: 19+mainzpos
      position:
        x: [0,0,0,0]
        y: [-19,-12,19,19]
        z: [0,0,-1,-1]
      width: [8,9,9,0]
      height: [0,18,23.7,0]
      texture: [2.9]
    tractorbeamProjectorT2:
      section_segments: [-5,45,90,135,180,225,270,320].add(22.5)
      offset:
        x: 0
        y: 21+mainypos
        z: 19.1+mainzpos
      position:
        x: [0,0,0,0]
        y: [-19.1,-12.1,16,16]
        z: [0,0,-1,-1]
      width: [8,8,8,0]
      height: [0,18,23.7,0]
      texture: [1.9]
    specplatingDetail1:
      section_segments: [45,135,225,315].add(9)
      offset:
        x: 0
        y: 16+mainypos
        z: 20+mainzpos
      position:
        x: [0,0,-3,-3].add(-57)
        y: [-1,-1,26,26]
        z: [0,0,0,0]
      width: [0,7,11.5,0]
      height: [0,8,11,0]
      texture: [3]
      angle: 0
    specplatingDetail1Cov:
      section_segments: [45,135,225,315].add(9)
      offset:
        x: 0
        y: 16+mainypos
        z: 20.3+mainzpos
      position:
        x: [0,0,-2.8,-2.8].add(-57.1)
        y: [0,0,25,25]
        z: [0,0,0,0]
      width: [0,6,10,0]
      height: [0,8,11,0]
      texture: [2]
      angle: 0
    specplatingDetail2:
      section_segments: [45,135,225,315].add(-10)
      offset:
        x: 0
        y: 16+mainypos
        z: 20+mainzpos
      position:
        x: [0,0,4,4].add(57)
        y: [-1,-1,26,26]
        z: [0,0,0,0]
      width: [0,11,15.5,0]
      height: [0,8,11,0]
      texture: [3]
      angle: 0
    specplatingDetail2Cov:
      section_segments: [45,135,225,315].add(-10)
      offset:
        x: 0
        y: 16+mainypos
        z: 20.3+mainzpos
      position:
        x: [0,0,3.8,3.8].add(57.2)
        y: [0,0,25,25]
        z: [0,0,0,0]
      width: [0,10,14,0]
      height: [0,8,11,0]
      texture: [2]
      angle: 0
#citystructureeeeeeeeeeeeeeee
    projectorConnectCSBase:
      section_segments: 8
      offset:
        x: 0
        y: 21+mainzpos
        z: -64-mainypos
      position:
        x: [0,0,0,0]
        y: [-12,-12,19,26]
        z: [0,0,0,6]
      width: [0,49,49,0]
      height: [0,36,33,21]
      texture: [3]
      vertical: true
    projectorConnectCSCov:
      section_segments: 8
      offset:
        x: 0
        y: 22+mainzpos
        z: -64-mainypos
      position:
        x: [0,0,0,0]
        y: [18,18,19,26]
        z: [0,0,0,6]
      width: [0,52,52,0]
      height: [0,36,33,21]
      texture: [2]
      vertical: true
    superstructureSQPlateMainBase:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 130+mainypos
        z: 47+mainzpos
      position:
        x: [0,0,0,0]
        y: [-66,-66,0,0]
        z: [0,0,12,12]
      width: [0,100,100,0]
      height: [0,3,3,3]
      texture: [2]
      angle: 90
    superstructureSQPlateMain:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 130+mainypos
        z: 38+mainzpos
      position:
        x: [0,0,0,0]
        y: [-61,-61,0,0]
        z: [0,0,14,14]
      width: [0,85,85,0]
      height: [0,13,9,13]
      texture: [3]
      angle: 90
    superstructureSQPlateMainCont:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 112.6+mainypos
        z: 30+mainzpos
      position:
        x: [0,0,0,0]
        y: [-61.1,-61.1,0,0]
        z: [0,0,14,14]
      width: [0,60,60,0]
      height: [0,13,9,13]
      texture: [3]
      angle: 90
  #break
    superstructureFrontPlateSQ:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 114+mainypos
        z: 60+mainzpos
      position:
        x: [0,0,0,0]
        y: [-46,-46,0,0]
        z: [0,0,9,9]
      width: [0,60,60,0]
      height: [0,3,3,3]
      texture: [2]
      angle: 90
    superstructureFrontPlateSQMain:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 114+mainypos
        z: 55+mainzpos
      position:
        x: [0,0,0,0]
        y: [-41,-41,0,0]
        z: [0,0,9,9]
      width: [0,50,50,0]
      height: [0,7,7,7]
      texture: [3]
      angle: 90
    superstructureTopPlateSQ:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 144+mainypos
        z: 68+mainzpos
      position:
        x: [0,0,0,0]
        y: [-54,-54,0,0]
        z: [0,0,10.5,10.5]
      width: [0,66,66,0]
      height: [0,3,3,3]
      texture: [2]
      angle: 90
    superstructureTopPlateSQMain:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 144+mainypos
        z: 60+mainzpos
      position:
        x: [0,0,0,0]
        y: [-49,-49,0,0]
        z: [0,0,10.5,10.5]
      width: [0,60,60,0]
      height: [0,13.5,13.5,13]
      texture: [3]
      angle: 90
  #break
    superstructureSideBottomSQPlates:
      section_segments: [45,135,225,315]
      offset:
        x: -32
        y: 157+mainypos
        z: 31+mainzpos
      position:
        x: [0,0,-6,-6]
        y: [-54,-54,-25,-25]
        z: [0,0,8,8]
      width: [0,31,38,0]
      height: [0,3,3,3]
      texture: [2]
      angle: 90
    superstructureSideBottomSQPlatesMain:
      section_segments: [45,135,225,315]
      offset:
        x: -32
        y: 157+mainypos
        z: 24+mainzpos
      position:
        x: [0,0,-6,-6]
        y: [-51,-51,-20,-20]
        z: [0,0,13,13]
      width: [0,27,31,0]
      height: [0,9,6,6]
      texture: [3]
      angle: 90
    superstructureSideSQPlates:
      section_segments: [45,135,225,315]
      offset:
        x: -20
        y: 124+mainypos
        z: 38+mainzpos
      position:
        x: [0,0,0,0]
        y: [-54,-54,0,0]
        z: [0,0,14,14]
      width: [0,67,67,0]
      height: [0,3,3,3]
      texture: [2]
      angle: 90
    superstructureSideSQMain:
      section_segments: [45,135,225,315]
      offset:
        x: -20
        y: 124+mainypos
        z: 27.5+mainzpos
      position:
        x: [0,0,0,0]
        y: [-52,-52,0,0]
        z: [0,0,14,14]
      width: [0,62,62,0]
      height: [0,12,12,12]
      texture: [3]
      angle: 90
#citystructure connects
    CTconnectormidM:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 84+mainypos
        z: 60.8+mainzpos
      position:
        x: [0,0,0,0]
        y: [-16,-10,0,0]
        z: [-1.6,0,3,3]
      width: [0,30,34,0]
      height: [3,3,3,3].mult(1.5)
      texture: [2]
      angle: 90
    CTconnectortopM:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 115+mainypos
        z: 71.2+mainzpos
      position:
        x: [13,0,0,0]
        y: [-26,-20,0,0]
        z: [-3.6,-2,3,3]
      width: [0,30,34,0]
      height: [3,3,3,3].mult(1.5)
      texture: [2]
      angle: 90
    CTconnectorbottom:
      section_segments: [0,45,135,225,315]
      offset:
        x: 0
        y: 74+mainypos
        z: 47.4+mainzpos
      position:
        x: [0,0,0,0]
        y: [-22,-22,0,17]
        z: [0,0,0,0]
      width: [0,30,30,0]
      height: [0,3,3,3].mult(1.3)
      texture: [1.9]
      angle: 0
    CTconnectorbottomS:
      section_segments: [45,135,225,315]
      offset:
        x: 16
        y: 67+mainypos
        z: 45+mainzpos
      position:
        x: [0,0,0,0]
        y: [-24,-22,0,17]
        z: [-1.5,0,0,0]
      width: [6,6,6,0]
      height: [1,3,3,3].mult(1.3)
      texture: [2]
      angle: 0
    CTconnectorbottomM:
      section_segments: [45,135,225,315]
      offset:
        x: 0.000001
        y: 69.7+mainypos
        z: 50+mainzpos
      position:
        x: [0,0,0,0]
        y: [-9,-6,0,0]
        z: [-1.6,0,3,3]
      width: [0,20,24,0]
      height: [3,3,3,3].mult(1.2)
      texture: [2]
      angle: 90
#citystructure bumps (the big ones)
    topCTbumpsfront:
      section_segments: [45,145,225,315]
      offset:
        x: 25
        y: 103+mainypos
        z: 75+mainzpos
      position:
        x: [0,0,0,0,0,0]
        y: [-2,-2,1,13,13]
        z: [0,0,0,0,0]
      width: [0,4,8,8,0]
      height: [0,4,4,4,0]
      texture: [2]
      angle: 0
    topCTbumpsback:
      section_segments: [45,145,225,315]
      offset:
        x: 25
        y: 137+mainypos
        z: 75+mainzpos
      position:
        x: [0,0,0,0,0,0]
        y: [-2,-2,1,4,4]
        z: [0,0,0,0,0]
      width: [0,4,8,8,0]
      height: [0,4,4,4,0]
      texture: [2]
      angle: 180
    topCTbumpsmiddl:
      section_segments: 6
      offset:
        x: 0
        y: 110+mainypos
        z: 79+mainzpos
      position:
        x: [0,0,0,0,0,0]
        y: [-2,-2,10,13,19,19]
        z: [0,0,0,0,0,0]
      width: [0,4,8,6,6,0]
      height: [0,3,4,4,4,0]
      texture: [1.9]
      angle: 0
    topCTmainbumpsback:
      section_segments: [45,145,225,315]
      offset:
        x: 34
        y: 163+mainypos
        z: 75+mainzpos
      position:
        x: [0,0,0,0,0,0]
        y: [-19,-19,-14,13,13]
        z: [-6,-6,-5,0,0]
      width: [0,4,8,8,0].mult(4)
      height: [0,4,4,4,0]
      texture: [2]
      angle: -90
    midtopCTbumpsmiddl:
      section_segments: 6
      offset:
        x: 0
        y: 74+mainypos
        z: 70+mainzpos
      position:
        x: [0,0,0,0,0,0]
        y: [-2,-2,10,13,19,19].mult(0.6)
        z: [0,0,0,0,0,0]
      width: [0,4,8,6,6,0].mult(0.7)
      height: [0,3,4,4,4,0].mult(0.7)
      texture: [1.9]
      angle: 0
#turret stuff
    turretPlateBase:
      section_segments: [45,135,225,315]
      offset:
        x: 119
        y: 113+mainypos
        z: 14.5+mainzpos
      position:
        x: [-140,-140,0,-15,-106,-106].mult(0.3)
        y: [-251,-251,-175,-42,-20,-20].mult(0.3)
        z: [0,0,8.5,0,-1.6,-1.6]
      width: [0,0.00001,335,210,0.0000001,0].mult(0.2)
      height: [0,5,5,5,5,0]
      texture: [3]
      angle: 104
#bottom.
    hangarCov:
      section_segments: 6
      offset:
        x: 0
        y: 37+mainypos
        z: -14+mainzpos
      position:
        x: [0,0,0,0]
        y: [-62,-62,0,0]
        z: [0,0,-5,-5]
      width: [0,41,41,0]
      height: [0,17,17,0]
      texture: [4]
    hangarCov2:
      section_segments: 6
      offset:
        x: 0
        y: -67+mainypos
        z: -11+mainzpos
      position:
        x: [0,0,0,0]
        y: [-44,-44,0,0]
        z: [0,0,-3,-3]
      width: [0,30,30,0]
      height: [0,14,14,0]
      texture: [4]
    hangarCov2Sides2:
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: -66+mainypos
        z: -13.5+mainzpos
      position:
        x: [0,0,-4,0,0]
        y: [-28,-28,0,28,28]
        z: [0,0,-8,0,0]
      width: [0,6,6,6,0]
      height: [0,17,17,17,0]
      texture: [3]
      angle: 90
    hangarCov2Sides2HL:
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: -67+mainypos
        z: -13+mainzpos
      position:
        x: [0,0,-4,0,0]
        y: [-27.8,-27.8,0,27.8,27.8]
        z: [0,0,-8,0,0]
      width: [0,6,6,6,0]
      height: [0,17,17,17,0]
      texture: [17]
      angle: 90
    hangarCov2Sides3:
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: -107+mainypos
        z: -10.5+mainzpos
      position:
        x: [0,0,4,0,0]
        y: [-28,-28,0,28,28]
        z: [0,0,-8,0,0]
      width: [0,6,6,6,0]
      height: [0,17,17,17,0]
      texture: [3]
      angle: 90
    hangarCov2Sides3HL:
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: -106.5+mainypos
        z: -10+mainzpos
      position:
        x: [0,0,4,0,0]
        y: [-27.8,-27.8,0,27.8,27.8]
        z: [0,0,-8,0,0]
      width: [0,6,6,6,0]
      height: [0,17,17,17,0]
      texture: [17]
      angle: 90
    hangarCov2Sides:
      section_segments: [45,135,225,315]
      offset:
        x: 24.55
        y: -65+mainypos
        z: -8+mainzpos
      position:
        x: [0,0,0,0]
        y: [-44,-44,2,2]
        z: [-1.5,-1.5,-5.3,-5.3]
      width: [0,5,5,0]
      height: [0,17,17,0]
      texture: [3]
    hangarCov2SidesHL:
      section_segments: [45,135,225,315]
      offset:
        x: 24
        y: -65+mainypos
        z: -7.5+mainzpos
      position:
        x: [0,0,0,0]
        y: [-43,-43,1,1]
        z: [-1.5,-1.5,-5.3,-5.3]
      width: [0,5,5,0]
      height: [0,17,17,0]
      texture: [17]
    hangarCovSides:
      section_segments: [45,135,225,315]
      offset:
        x: 39
        y: 37+mainypos
        z: -14+mainzpos
      position:
        x: [0,0,0,0]
        y: [-64,-64,2,2]
        z: [0,0,-5.3,-5.3]
      width: [0,6,6,0]
      height: [0,17,17,0]
      texture: [3]
    hangarCovSidesHL:
      section_segments: [45,135,225,315]
      offset:
        x: 38.9
        y: 37+mainypos
        z: -13.9+mainzpos
      position:
        x: [0,0,0,0]
        y: [-63,-63,1,1]
        z: [0,0,-5.3,-5.3]
      width: [0,6,6,0]
      height: [0,17,17,0]
      texture: [17]
    hangarCovSides2:
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 37+mainypos
        z: -19.4+mainzpos
      position:
        x: [0,0,-4,0,0]
        y: [-43,-43,0,43,43]
        z: [0,0,-6,0,0]
      width: [0,6,6,6,0]
      height: [0,17,17,17,0]
      texture: [3]
      angle: 90
    hangarCovSides2HL:
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: 36.9+mainypos
        z: -19.3+mainzpos
      position:
        x: [0,0,-4,0,0]
        y: [-42.9,-42.9,0,42.9,42.9]
        z: [0,0,-6,0,0]
      width: [0,6,6,6,0]
      height: [0,17,17,17,0]
      texture: [17]
      angle: 90
    hangarCovSides3:
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: -25+mainypos
        z: -14.8+mainzpos
      position:
        x: [0,0,4,0,0]
        y: [-43,-43,0,43,43]
        z: [0,0,-6,0,0]
      width: [0,6,6,6,0]
      height: [0,17,17,17,0]
      texture: [3]
      angle: 90
    hangarCovSides3HL:
      section_segments: [45,135,225,315]
      offset:
        x: 0
        y: -24.9+mainypos
        z: -14.7+mainzpos
      position:
        x: [0,0,4,0,0]
        y: [-42.9,-42.9,0,42.9,42.9]
        z: [0,0,-6,0,0]
      width: [0,6,6,6,0]
      height: [0,17,17,17,0]
      texture: [17]
      angle: 90
    Sphere1:
      section_segments: 24
      offset:
        x: 0
        y: -19+mainzpos
        z: -91-mainypos
      position:
        x:    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        y:    [-17*h*2,-16.815*h*2,-16*h*2,-15.12*h*2,-13.24*h*2,-11.36*h*2,-9.48*h*2,-7.5*h*2,-5.46*h*2,-3.838*h*2,-1.878*h*2,0,1.878*h*2,3.828*h*2,5.46*h*2,7.6*h*2,9.48*h*2,11.36*h*2,13.24*h*2,15.118*h*2,16*h*2,16.815*h*2,17*h*2]
        z:    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      width:  [0,5*h,11.49*h,15.55*h,21.326*h,25.294*h,28.222*h,30.414*h,32.198*h,33.122*h,33.792*h,34*h,33.792*h,33.122*h,32.198*h,30.414*h,28.222*h,25.294*h,21.326*h,15.55*h,11.49*h,5*h,0]
      height: [0,5*h,11.49*h,15.55*h,21.326*h,25.294*h,28.222*h,30.414*h,32.198*h,33.122*h,33.792*h,34*h,33.792*h,33.122*h,32.198*h,30.414*h,28.222*h,25.294*h,21.326*h,15.55*h,11.49*h,5*h,0]
      texture:[2]
      vertical: true
    bottomBlock1:
      section_segments: [45,135,225,315].add(13)
      offset:
        x: 0
        y: 137+mainypos
        z: -7+mainzpos
      position:
        x: [0,0,4,4].add(104)
        y: [-18,-18,2,2]
        z: [0,0,0,0]
      width: [0,16,22,0]
      height: [0,17,20,0]
      texture: [2]
    bottomBlock1Outline:
      section_segments: [45,135,225,315].add(13)
      offset:
        x: 0
        y: 137+mainypos
        z: -7+mainzpos
      position:
        x: [-0.5,-0.5,4,4].add(104)
        y: [-19,-19,3,3]
        z: [1,1,0.2,0.2]
      width: [0,18,24,0]
      height: [0,17,20,0]
      texture: [3]
    bottomBlock2:
      section_segments: [45,135,225,315].add(-13)
      offset:
        x: 0
        y: 92+mainypos
        z: -7+mainzpos
      position:
        x: [0,0,-4,-4].add(-84)
        y: [-18,-18,2,2]
        z: [-4,-4,0,0]
      width: [0,12,19,0]
      height: [0,13,20,0]
      texture: [2]
    bottomBlock2Outline:
      section_segments: [45,135,225,315].add(-13)
      offset:
        x: 0
        y: 92+mainypos
        z: -6.5+mainzpos
      position:
        x: [0.3,0.3,-4,-4].add(-84)
        y: [-19,-19,3,3]
        z: [-4,-4,0,0]
      width: [0,14,21,0]
      height: [0,13,20,0]
      texture: [3]
    bottomBlock3:
      section_segments: [45,135,225,315].add(-18)
      offset:
        x: 0
        y: 152+mainypos
        z: -6.5+mainzpos
      position:
        x: [0,0,-4,-4].add(-106)
        y: [-12,-12,4,4]
        z: [-4,-4,0,0]
      width: [0,18,24,0]
      height: [0,13,20,0]
      texture: [2]
    bottomBlock3Outline:
      section_segments: [45,135,225,315].add(-19)
      offset:
        x: 0
        y: 152+mainypos
        z: -6.4+mainzpos
      position:
        x: [0.5,0.5,-4,-4].add(-106)
        y: [-13,-13,5,5]
        z: [-3.7,-3.7,0,0]
      width: [0,20,26,0]
      height: [0,13,20,0]
      texture: [3]
    bottomHSides:
      section_segments: 6
      offset:
        x: 30
        y: -48+mainypos
        z: -2+mainzpos
      position:
        x: [-2,-2,0,0]
        y: [-92,-92,0,0]
        z: [0,-4,-5,-5]
      width: [0,11,31,0]
      height: [0,12,17,0]
      texture: [2]
    beamProjectorVentral:
      section_segments: 16
      offset:
        x: 36
        y: -18+mainzpos
        z: 42-mainypos
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-20,-20,18,20,21,23,26,29,32.5,36.5,41,43,45.5,49.5,52,49,45,41,38,35,31,33,31.5,32,32.5,32.7,33,33.1].mult(0.18)
        z: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,12,12,10,8,8,12,15,18,20.5,22.75,23.5,24,25,23,21,19,18,15,12,6,5,4,3.5,2.5,2,1,0].mult(0.18)
      height: [0,12,12,10,8,8,12,15,18,20.5,22.75,23.5,24,25,23,21,19,18,15,12,6,5,4,3.5,2.5,2,1,0].mult(0.18)
      texture: [2]
      vertical: true
      angle: 165
    BPVmounts:
      section_segments: 6
      offset:
        x: 35.2
        y: -37.5+mainypos
        z: -18+mainzpos
      position:
        x: [0,0,0,0]
        y: [-9,-9,0,0]
        z: [0,0,0,0]
      width: [0,6,6,0]
      height: [0,4,4,0]
      texture: [2]
# bridge
    bridgeBase:
      section_segments: [45,135,225,315]
      offset:
        x: 13
        y: 210+mainypos
        z: 71+mainzpos
      position:
        x: [0,0,0,0,0]
        y: [-62,-62,-30,14,14]
        z: [5,5,5,-9,-9]
      width: [0,3,3,3,0]
      height: [0,52,52,22,0]
      texture: [2]
    bridgeMain:
      section_segments: [0,65,115,180,245,295]
      offset:
        x: 0
        y: 182+mainypos
        z: 104+mainzpos
      position:
        x: [0,0,0,0,0,0,0]
        y: [-56,-56,-58,-58,-34,-11,-5]
        z: [0,0,0,0,0,5,-1]
      width: [0,56,56,58,58,16,3]
      height: [0,16,16,18,18,10,1]
      texture: [1.9,4,1.9]
      
      
return model;
