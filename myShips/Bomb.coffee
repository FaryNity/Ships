# Fly shaped hostship
# type in game.ships[id].set({type:709}); in console to use 

return model =
  name: 'Bomb'
  level: 7.9
  model: 9
  size: 1.05
  teamMarkerSize: 0
  specs:
    shield:
      capacity: [1e+300,1e+300]
      reload: [1e+300,1e+300]
    generator:
      capacity: [1e+300,1e+300]
      reload: [1e+300,1e+300]
    ship:
      mass: 1e+300
      speed: [800,800]
      rotation: [1e+300,1e+300]
      acceleration: [1e+300,1e+300]
  bodies:
    main:
      section_segments: 12
      offset:
        x: 0
        y: 0
        z: 10
      position:
        x: [0,0,0,0,0,0,0,0,0,0]
        y: [-65,-60,-50,-20,10,30,55,75,60]
        z: [0,0,0,0,0,0,0,0,0]
      width: [0,8,10,30,25,30,18,15,0]
      height: [0,6,8,12,20,20,18,15,0]
      propeller: true
      texture: [4,63,10,1,1,1,12,17]
    cockpit:
      section_segments: 12
      offset:
        x: 0
        y: 0
        z: 20
      position:
        x: [0,0,0,0,0,0,0]
        y: [-15,0,20,30,60]
        z: [0,0,0,0,0]
      width: [0,13,17,10,5]
      height: [0,18,25,18,5]
      propeller: false
      texture: [7,9,9,4,4]
    cannon:
      section_segments: 6
      offset:
        x: 0
        y: -15
        z: -10
      position:
        x: [0,0,0,0,0,0]
        y: [-40,-50,-20,0,20,30]
        z: [0,0,0,0,0,20]
      width: [0,5,8,11,7,0]
      height: [0,5,8,11,10,0]
      angle: 0
      laser:
        damage: [10000000000000000000,10000000000000000000]
        rate: 2
        type: 1
        speed: [160,180]
        number: 360
        angle: 360
      propeller: false
      texture: [3,3,10,3]
  wings: main:
    length: [60,20]
    width: [100,50,40]
    angle: [-10,10]
    position: [0,20,10]
    doubleside: true
    offset:
      x: 0
      y: 10
      z: 5
    bump:
      position: 30
      size: 20
    texture: [11,63]
