return model =
  name: 'Y-Defender'
  level: 3
  model: 4
  size: 1.5
  specs:
    shield:
      capacity: [175,225]
      reload: [4,6]
    generator:
      capacity: [50,80]
      reload: [18,25]
    ship:
      mass: 200
      speed: [80,100]
      rotation: [40,60]
      acceleration: [70,80]
  bodies:
    main:
      section_segments: 8
      offset:
        x: 0
        y: 0
        z: 0
      position:
        x: [0,0,0,0,0,0,0,0,0]
        y: [-100,-95,-50,-40,-20,-10,30,70,65]
        z: [0,0,0,0,0,0,0,0,0]
      width: [0,20,25,10,10,20,15,20,0]
      height: [0,10,20,15,15,20,25,15,0]
      texture: [1,2,2,63,2,10,2,12]
      laser:
        damage: [20,40]
        rate: 2
        type: 1
        speed: [130,170]
        number: 1
        recoil: 75
        error: 0
    propulsors:
      section_segments: 8
      offset:
        x: 50
        y: 0
        z: 0
      position:
        x: [0,0,0,0,0,0,0,0,0]
        y: [-30,-25,20,25,40,50,60,100,90]
        z: [0,0,0,0,0,0,0,0,0]
      width: [0,20,15,5,25,20,15,15,0]
      height: [0,20,15,5,25,20,20,10,0]
      texture: [63,63,63,2,2,3,4,12]
      propeller: true
    cockpit:
      section_segments: 8
      offset:
        x: 0
        y: -70
        z: 10
      position:
        x: [0,0,0,0,0,0,0]
        y: [-20,-10,0,10,20]
        z: [0,0,0,0,0]
      width: [0,10,10,10,0]
      height: [0,10,15,12,0]
      texture: [9]
      propeller: false
  wings:
    join:
      offset:
        x: 14
        y: 0
        z: 0
      length: [25]
      width: [20,10]
      angle: [0]
      position: [0,0,0,50]
      texture: [63]
      bump:
        position: 10
        size: 40
    join2:
      offset:
        x: 14
        y: 50
        z: 0
      length: [25]
      width: [20,10]
      angle: [0]
      position: [0,0,0,50]
      texture: [3]
      bump:
        position: 10
        size: 40
    winglets:
      offset:
        x: 5
        y: 40
        z: 10
      length: [10,20]
      width: [15,30,50]
      angle: [60,-20]
      position: [0,5,60]
      texture: [63]
      bump:
        position: 10
        size: 60
