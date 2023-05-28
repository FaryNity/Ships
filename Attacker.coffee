return model =
  name: 'Attacker'
  level: 1
  model: 1
  size: 3
  specs:
    shield:
      capacity: [600,600]
      reload: [30,30]
    generator:
      capacity: [350,350]
      reload: [130,130]
    ship:
      mass: 500
      speed: [120,120]
      rotation: [60,60]
      acceleration: [150,150]
  bodies:
    main:
      section_segments: 20
      offset:
        x: 0
        y: -10
        z: 0
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-130,-130,-85,-70,-60,-20,-25,40,40,100,90]
        z: [0,0,0,0,0,0,0,0,0,0,0]
      width: [0,0,0,5,15,25,30,30,30,30,0]
      height: [0,0,5,5,15,25,25,25,20,10,0]
      texture: [4,15,63,4,4,4,11,10,4,12]
    laser1:
      section_segments: 12
      offset:
        x: 30
        y: 25
        z: -10
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-60,-70,-67,-65,-50,-50,0,10,15,20,30,80,90]
        z: [0,0,0,0,0,0,0,-5,-5,-5,-5,-5,-5,0]
      width: [0,5,5,5,5,4,4,0,0,0,0,0,0,0]
      height: [0,5,5,5,5,4,4,0,0,0,0,0,0]
      laser:
        damage: [6,6]
        rate: 10
        type: 2
        speed: [230,230]
        recoil: 0
        number: 1
        error: 10
      texture: [17,4,17,18,4,13,8,63,18,3,8,3]
    laser2:
      section_segments: 12
      offset:
        x: 55
        y: 50
        z: -15
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-60,-70,-67,-65,-50,-50,0,10,15,20,30,80,90]
        z: [0,0,0,0,0,0,0,-5,-5,-5,-5,-5,-5,0]
      width: [0,5,5,5,5,4,4,0,0,0,0,0,0,0]
      height: [0,5,5,5,5,4,4,0,0,0,0,0,0]
      laser:
        damage: [6,6]
        rate: 10
        type: 1
        speed: [230,230]
        recoil: 0
        number: 1
        error: 10
      texture: [17,4,17,18,4,13,8,63,18,3,8,3]
    focuser:
      section_segments: 12
      offset:
        x: 0
        y: -30
        z: 0
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-100,-135,-100,-102,-103,-100,-85,-87,-89,-85,-70,-73,-75,-70,-55,-58,-60,-55,0]
        z: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,2,3,4,6,3,4,6,8,5,6,7,11,7,8,12,15,8,10]
      height: [0,2,3,4,6,3,4,6,8,5,6,7,11,7,8,12,15,8,10]
      texture: [4,4,6,13,17,4,6,6,17,4,6,6,17,4,6,6,17,4]
      laser:
        damage: [200,200]
        rate: 1
        type: 2
        speed: [180,330]
        number: 2
        error: 0
        recoil: 150
    cockpit:
      section_segments: 6
      offset:
        x: 0
        y: -35
        z: 21
      position:
        x: [0,0,0,0,0,0,0,0]
        y: [-28,-17,17.85,37.71,50,50]
        z: [-10,-7.46,0,-5,0,0]
      width: [0,8.92,13.39,13.39,13,0]
      height: [0,8.92,13.39,15.71,14,0]
      texture: [7,9,9,4]
    shield:
      section_segments: [0,60,120,180]
      offset:
        x: -9
        y: 10
        z: 10
      position:
        x: [5,5,-2,-2,-2,-2]
        y: [-73,-73,-30,-15,5,5]
        z: [0,-5,-1,1,-5,5,5]
      width: [0,5,15,15,15,0]
      height: [0,11,20,20,20,0]
      texture: [16.9,3.9,18,2.9]
    reactor:
      section_segments: 12
      offset:
        x: 0
        y: 35
        z: -40
      position:
        x: [0,0,0,0,0,0,0,0]
        y: [-20,-13,-10,-12,-12.5,-10,-10,-12]
        z: [0,0,0,0,0,0,0,0]
      width: [13,13,10,9,6,4.2,4,0]
      height: [13,13,10,9,6,4.2,4,0]
      texture: [1,3,18,17,18,16,17]
      vertical: true
    engines1:
      section_segments: 12
      offset:
        x: 17
        y: 50
        z: 15
      position:
        x: [0,0,0,0,0]
        y: [0,20,51,55,48]
        z: [-15,0,0,0,0]
      width: [8,13,13,13,0]
      height: [13,14,13,13,0]
      texture: [11,13,17,18]
      propeller: true
    engines2:
      section_segments: 12
      offset:
        x: 17
        y: 50
        z: -15
      position:
        x: [0,0,0,0,0]
        y: [0,20,51,55,48]
        z: [15,0,0,0,0]
      width: [8,13,13,13,0]
      height: [13,14,13,13,0]
      texture: [11,13,17,18]
      propeller: true
    disc1:
      section_segments: 30
      offset:
        x: 0
        y: -140
        z: 0
      position:
        x: [0,0,0,0,0,0,0,0,0,0]
        y: [0,0,0,0,0,2,2,2,0,0]
        z: [0,0,0,0,0,0,0,0,0,0]
      width: [15,15,15,17,17,17,17,15,15,15]
      height: [15,15,15,17,17,17,17,15,15,15]
      texture: [ 17 ]
  wings:
    topjoin:
      offset:
        x: 0
        y: -20
        z: 13
      length: [20,20,15]
      width: [50,55,50,20]
      angle: [0,-20,0]
      position: [20,-20,70,35]
      texture: [3,18,63]
      doubleside: true
      bump:
        position: 30
        size: 15
    bottomjoin:
      offset:
        x: 0
        y: -20
        z: 5
      length: [20,60,15]
      width: [50,55,50,20]
      angle: [0,-20,0]
      position: [20,20,60,100]
      texture: [3,18,63]
      doubleside: true
      bump:
        position: 30
        size: 15
    spike1:
      doubleside: true
      offset:
        x: 0
        y: -50
        z: 0
      length: [20,0,10]
      width: [40,20,100,0]
      angle: [150,150,150]
      position: [10,-30,-50,-20]
      texture: [3,63,63]
      bump:
        position: 40
        size: 10
    spike2:
      doubleside: true
      offset:
        x: 0
        y: -50
        z: 0
      length: [20,0,10]
      width: [40,20,100,0]
      angle: [150,150,150]
      position: [10,-30,-50,-20]
      texture: [3,63,63]
      bump:
        position: 40
        size: 10
    spike3:
      doubleside: true
      offset:
        x: 0
        y: -50
        z: 0
      length: [20,0,10]
      width: [40,20,100,0]
      angle: [-90,-90,-90]
      position: [10,-30,-50,-20]
      texture: [3,63,63]
      bump:
        position: 40
        size: 10
