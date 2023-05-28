# 스타트렉 USS-Enterprise
a= 0.5
b= 0.5
c= 0.2
e= 0.6
s= -90
return model =
  name: 'USS Enterprise'
  level: 7
  model: 1
  size: 10
  specs:
    shield:
      capacity: [400,400]
      reload: [2,3]
    generator:
      capacity: [500,500]
      reload: [10,15]
    ship:
      mass: 200
      speed: [125,145]
      rotation: [110,130]
      acceleration: [10,120]
  bodies:
    saucer:
      vertical: true
      section_segments: 80
      offset:
        x: 0
        y: 0
        z: -s
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-11,-10.5,-10,-9,-8,-7,-6,-5,-5,-2,0,1,2,3,4,5,6,7,8,8,9,10,10.6,11,11,12,13,14,14.5,15]
        z: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,2,3,3.7,8,9,13,14,15,25,40,68,69.2,69.7,69.8,69.95,69.95,69.98,70,40,25,15,14,13,9,8,3.7,3,2,0]
      height: [0,2,3,3.7,8,9,13,14,15,25,40,68,69.2,69.7,69.8,69.95,69.95,69.98,70,40,25,15,14,13,9,8,3.7,3,2,0]
      propeller: true
      texture: [9,9,9,1,1,1,1,1,1,1,1,1,2,1,2,1,2,1,1,1,1,1,1,1,1,1,9]
    b_deck:
      section_segments: 12
      offset:
        x: 0
        y: s
        z: 8
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-26*b,-25*b,-22*b,-15*b,0,15*b,22*b,25,63,63]
        z: [0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1]
      width: [0,10*b,17*b,25*b,30*b,23*b,17*b,6,3,0]
      height: [0,5*b,8*b,10*b,10*b,10*b,8*b,5*b,1,0]
      texture: [1,1,1,1,1,1,1,10,2]
    b_detail:
      vertical: true
      section_segments: 20
      offset:
        x: 0
        y: 6
        z: -s-65
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [0,0,3,3]
        z: [0,0,0,0,0,0,0,0]
      width: [0,15,15,0]
      height: [0,4,4,0]
      texture: [2]
    neck:
      section_segments: 15
      offset:
        x: 0
        y: -30
        z: -15
      position:
        x: [0,0,0,0,0,0]
        y: [-40,-25,-20,-15,3,65]
        z: [15,12,7,0,0,-15]
      width: [5,5,4,5,5,4]
      height: [3,10,12,18,18,0]
      propeller: false
      texture: [1]
    torpedo:
      section_segments: 6
      offset:
        x: 0
        y: -53
        z: -16.3
      position:
        x: [0,0,0,0,0]
        y: [0,-1,5,6]
        z: [0,0,0,0]
      width: [0,4,4,3]
      height: [0,2,2,0]
      propeller: false
      texture: [3.9,1]
      laser:
       damage: [10]
       rate: 10
       type: 2
       speed: [200]
       number: 1
       angle: 0
       error: 30
    ddish:
      section_segments: 30
      offset:
        x: 0
        y: -50
        z: -30
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-2,-3,-4,-2,0,0,-2,0,20]
        z: [0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,4,10,5,7,9,10,11,11]
      height: [0,4,10,5,7,9,10,11,11]
      propeller: false
      texture: [17,17,13,11,13,3]
    base:
      section_segments: 14
      offset:
        x: 11
        y: -50
        z: -30
      position:
        x: [0.5,0.5,0,-11,-11,-11,-11,-11,-11,-11]
        y: [5,0,6,10,25,60,80,90,91,92]
        z: [0,1,-2,-1,2,2,3,2,2,2]
      width: [0,0.5,1,12,12,12,11,9,7,4]
      height: [3,3,6,11,13,8,6,3,2,0]
      texture: [13,1]
    base_support:
      section_segments: 14
      offset:
        x: 0
        y: -50
        z: -41.5
      position:
        x: [0,0,0,0]
        y: [5,0,5,11]
        z: [-0.5,-0.5,1,3.3]
      width: [3,5,6,8,16,8,6,3,2,0]
      height: [0,1,2,3]
      texture: [13,1,1]
    hangardoors:
      vertical:true
      section_segments: 10
      offset:
        x: 0
        y: -30.1
        z: -35
      position:
        x: [0,0,0,0,0]
        y: [-9,-8.3,-7,-5,-3]
        z: [20,1,0,0,0]
      width: [6,7,7.8,8.3,8.2]
      height: [0,6,7.2,8,8.2]
      propeller: false
      angle: 180
      texture: [1,13]
    nacelle_cap:
      section_segments: 20
      offset:
        x: 35
        y: -14
        z: 12
      position:
        x: [0,0,0,0,0,0,0,0,0,0]
        y: [0,1,3,7,35,84,120,126,154,148]
        z: [0,0,0,0,0,0,0,0,0,0]
      width: [0,4,6,8,8]
      height: [0,4,6,8,8]
      texture: [14,14,14,3]
    nacelles:
      section_segments: 22
      offset:
        x: 35
        y: 0
        z: 12
      position:
        x: [0,0,0,0,0,0,0,0,0,0]
        y: [0,-5,3,30,115,115]
        z: [0,-1,-2,-2,4,4,0]
      width: [0,8.6,9,8,5,0]
      height: [0,10,12,12,6,0]
      texture: [13,1,1,1,17,17]
      propeller: true
    nacelle_streaks:
      section_segments: 12
      offset:
        x: 29.8
        y: 66
        z: 12
      position:
        x: [0,0,0,0,0,0,0,0]
        y: [-25,-23,-15,0,35,38,40]
        z: [-4.5,-4.4,-3.7,-2.5,0,1,2]
      width: [0,2,2,2,2,1,0]
      height: [0,2,2,2,2,2,0]
      texture: [1,1,3,3,1]
      angle: 2.1
    impulse_engines:
      section_segments: 4
      offset:
        x: 5
        y: 70+s
        z: 3
      position:
        x: [0]
        y: [0]
        z: [0]
      width: [5]
      height: [3]
      propeller: true
    warp_engines:
      section_segments: 12
      offset:
        x: 35
        y: 110
        z: 16
      position:
        x: [0]
        y: [0]
        z: [0]
      width: [9]
      height: [10]
      propeller: true
  wings:
    nacelle_buttresses:
      doubleside: true
      offset:
        x: 5
        y: 20
        z: -30
      length: [15,10,10,10,0]
      width: [30,20,15,11,8,8]
      angle: [46,53,65,68,68]
      position: [-1,-2,-1,0.5,2.5,2.5]
      texture: 1
      bump:
        position: -40
        size: 10
    nacelle_cover:
      doubleside: true
      offset:
        x: 25.5
        y: -5
        z: 11
      length: [6,4,4,3,3,4,4,6]
      width: [0,15,55,63,65,63,55,15,0]
      angle: [80,55,39,7,-7,-39,-55,-80]
      position: [0,5,23,25.5,26,25.5,23,5,0]
      texture: 2
      bump:
        position: 40
        size: 2
    nacelle_rearcover:
      doubleside: true
      offset:
        x: 29
        y: 110
        z: 15
      length: [0,7,7,7,0]
      width: [0,10,35,35,10,0]
      angle: [72,72,0,-72,-72]
      position: [2,2,0,0,2,2]
      texture: 1
      bump:
        position: 20
        size: 3
    nacelle_fins1:
      doubleside: true
      offset:
        x: 38
        y: 100
        z: 20
      length: [3]
      width: [25,25]
      angle: [70]
      position: [0,12]
      texture: 2
      bump:
        position: 0
        size: 10
    nacelle_fins2:
      doubleside: true
      offset:
        x: 32
        y: 100
        z: 20
      length: [0,3]
      width: [0,25,25]
      angle: [0,110]
      position: [0,0,12]
      texture: 2
      bump:
        position: 0
        size: 5
