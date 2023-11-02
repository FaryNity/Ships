return model =
  name: 'Trident'
  level: 2
  model: 2
  size: 1.2
  specs:
    shield:
      capacity: [125,175]
      reload: [3,5]
    generator:
      capacity: [50,80]
      reload: [15,20]
    ship:
      mass: 100
      speed: [110,135]
      rotation: [70,85]
      acceleration: [90,110]
  bodies:
    main:
      section_segments: 8
      offset:
        x: 0
        y: 0
        z: 0
      position:
        x: [0,0,0,0,0,0]
        y: [-100,-50,0,30,70,100,90]
        z: [0,0,0,0,0,0,0]
      width: [1,25,15,30,30,20,10]
      height: [1,20,20,30,30,10,0]
      texture: [1,1,10,2,3]
      propeller: true
    cockpit:
      section_segments: 8
      offset:
        x: 0
        y: -40
        z: 10
      position:
        x: [0,0,0,0,0,0,0]
        y: [-20,-10,0,30,40]
        z: [0,0,0,0,0]
      width: [0,10,10,10,0]
      height: [0,10,15,12,0]
      texture: [9]
      propeller: false
    cannons:
      section_segments: 12
      offset:
        x: 50
        y: 40
        z: 0
      position:
        x: [0,0,0,0,0,0,0]
        y: [-50,-45,-20,0,20,50,55]
        z: [0,0,0,0,0,0,0]
      width: [0,5,10,10,15,10,0]
      height: [0,5,15,15,10,5,0]
      angle: 0
      laser:
        damage: [4,8]
        rate: 2.5
        type: 1
        speed: [100,120]
        number: 1
        angle: 0
        error: 0
      propeller: false
      texture: [4,4,10,4,63,4]
  wings:
    main:
      offset:
        x: 0
        y: 60
        z: 0
      length: [80,30]
      width: [70,50,60]
      texture: [4,63]
      angle: [0,0]
      position: [10,-20,-50]
      bump:
        position: -10
        size: 15
    winglets:
      length: [30,20]
      width: [10,30,0]
      angle: [50,20]
      position: [90,80,50]
      texture: [63]
      bump:
        position: 10
        size: 30
      offset:
        x: 0
        y: 0
        z: 0
