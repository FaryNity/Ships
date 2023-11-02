return model =
  name: 'Pulse-Fighter'
  level: 3
  model: 1
  size: 1.3
  specs:
    shield:
      capacity: [150,200]
      reload: [3,5]
    generator:
      capacity: [60,90]
      reload: [20,30]
    ship:
      mass: 120
      speed: [105,120]
      rotation: [60,80]
      acceleration: [80,100]
  bodies:
    main:
      section_segments: 12
      offset:
        x: 0
        y: 0
        z: 10
      position:
        x: [0,0,0,0,0,0,0,0]
        y: [-90,-75,-50,0,50,105,90]
        z: [0,0,0,0,0,0,0]
      width: [0,15,25,30,35,20,0]
      height: [0,10,15,25,25,20,0]
      propeller: true
      texture: [63,1,1,10,2,12]
    cockpit:
      section_segments: 12
      offset:
        x: 0
        y: -20
        z: 20
      position:
        x: [0,0,0,0,0,0,0]
        y: [-30,-10,10,30,60]
        z: [0,0,0,0,0]
      width: [0,10,15,10,5]
      height: [0,18,25,18,5]
      propeller: false
      texture: 9
    cannon:
      section_segments: 6
      offset:
        x: 0
        y: -40
        z: -10
      position:
        x: [0,0,0,0,0,0]
        y: [-40,-50,-20,0,20,50]
        z: [0,0,0,0,0,0]
      width: [0,5,10,10,15,0]
      height: [0,5,15,15,10,0]
      angle: 0
      laser:
        damage: [15,30]
        rate: 1
        type: 2
        speed: [150,175]
        number: 1
        error: 0
      propeller: false
      texture: 3
    deco:
      section_segments: 8
      offset:
        x: 50
        y: 50
        z: -10
      position:
        x: [0,0,5,5,0,0,0]
        y: [-52,-50,-20,0,20,40,42]
        z: [0,0,0,0,0,0,0]
      width: [0,5,10,10,5,5,0]
      height: [0,5,10,15,10,5,0]
      angle: 0
      laser:
        damage: [3,6]
        rate: 3
        type: 1
        speed: [100,150]
        number: 1
        error: 0
      propeller: false
      texture: 4
  wings:
    main:
      length: [80,20]
      width: [120,50,40]
      angle: [-10,20]
      position: [30,50,30]
      doubleside: true
      bump:
        position: 30
        size: 10
      texture: [11,63]
      offset:
        x: 0
        y: 0
        z: 0
    winglets:
      length: [40]
      width: [40,20,30]
      angle: [10,-10]
      position: [-40,-60,-55]
      bump:
        position: 0
        size: 30
      texture: 63
      offset:
        x: 0
        y: 0
        z: 0
    stab:
      length: [40,10]
      width: [50,20,20]
      angle: [40,30]
      position: [70,75,80]
      doubleside: true
      texture: 63
      bump:
        position: 0
        size: 20
      offset:
        x: 0
        y: 0
        z: 0
