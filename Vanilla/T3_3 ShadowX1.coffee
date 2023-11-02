return model =
  name: 'Shadow X-1'
  level: 3
  model: 3
  size: 0.8
  zoom: 0.8
  specs:
    shield:
      capacity: [90,130]
      reload: [3,6]
    generator:
      capacity: [50,80]
      reload: [12,16]
    ship:
      mass: 70
      speed: [120,155]
      rotation: [35,60]
      acceleration: [130,150]
  bodies:
    main:
      section_segments: 10
      offset:
        x: 0
        y: 0
        z: 0
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-100,-98,-95,-70,-40,0,40,70,80,90,100]
        z: [0,0,0,0,0,0,0,0,0,0,0]
      width: [0,10,20,30,40,20,20,40,40,40,20,0]
      height: [0,4,4,20,20,10,10,15,15,15,10,10]
      texture: [12,5,63,4,4,63,4,4,5]
    back:
      section_segments: 10
      offset:
        x: 0
        y: 0
        z: 0
      position:
        x: [0,0,0,0,0]
        y: [90,95,100,105,90]
        z: [0,0,0,0,0]
      width: [10,15,18,19,2]
      height: [3,5,7,8,2]
      texture: [63]
      propeller: true
    cockpit:
      section_segments: 8
      offset:
        x: 0
        y: -25
        z: 15
      position:
        x: [0,0,0,0,0,0]
        y: [-45,-40,-25,0,5]
        z: [0,0,0,0,0,0]
      width: [0,10,15,13,0]
      height: [0,10,15,5,0]
      texture: [9]
    laser:
      section_segments: 10
      offset:
        x: 70
        y: 10
        z: -20
      position:
        x: [0,0,0,0,0,0,0,0,0,0]
        y: [-20,-15,0,10,20,25,30,40,70,60]
        z: [0,0,0,0,0,0,0,0,0,0]
      width: [0,10,15,15,15,10,10,15,5,0]
      height: [0,10,15,15,15,10,10,15,5,0]
      texture: [3,4,10,3]
      propeller: true
      laser:
        damage: [3,4]
        rate: 6
        type: 1
        speed: [180,210]
        number: 1
  wings:
    top:
      offset:
        x: 0
        y: 50
        z: 5
      length: [30]
      width: [70,30]
      angle: [90]
      position: [0,50]
      texture: [4]
      bump:
        position: 10
        size: 15
    side_joins:
      offset:
        x: 0
        y: 30
        z: -3
      length: [100]
      width: [100,40]
      angle: [0]
      position: [-50,50]
      texture: [4]
      bump:
        position: 10
        size: 10
