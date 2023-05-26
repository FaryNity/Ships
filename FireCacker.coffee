return model =
  name: 'FireCacker'
  designer: '3803'
  level: 6
  model: 3
  size: 2
  specs:
    shield:
      capacity: [650,900]
      reload: [10,25]
    generator:
      capacity: [750,1100]
      reload: [250,600]
    ship:
      mass: 900
      speed: [80,95]
      rotation: [20,40]
      acceleration: [100,150]
  bodies:
    main:
      section_segments: 12
      offset:
        x: 0
        y: 20
        z: 5
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-60,-70,-40,0,40,80,120,125,120]
        z: [0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,15,30,30,25,0,0,0,0]
      height: [0,10,15,15,15,0,0,0,0]
      texture: [12,3,8,3,11,13,17,18]
      propeller: false
    main2:
      section_segments: 10
      offset:
        x: 0
        y: -20
        z: 15
      position:
        x: [0,0,0,0,0,0,0]
        y: [-20,-25,10,60,120,85]
        z: [-4,-4,0,0,0,0,0]
      width: [0,10,20,22,15,0]
      height: [7.5,7.5,10,10,5,0]
      texture: [13,63,10,2,17]
    main3:
      section_segments: 10
      offset:
        x: 26
        y: 63
        z: 0
      position:
        x: [-6,-8,-1,0,0,0,0,0,0,0,0]
        y: [-85,-96,-68,-60,-35,-20,-5,5,20,30,29]
        z: [0,0,0,0,0,0,0,0,0,0,0]
      width: [0,6,10.5,12,13.5,15,13.5,12,12,10.5,0]
      height: [0,6,10.5,12,13.5,15,13.5,12,12,10.5,0]
      texture: [6,63,3,11,3,4,63,11,13,17]
      propeller: 1
    mian_wire1:
      section_segments: 16
      offset:
        x: 26
        y: 30
        z: 10
      position:
        x: [0,0,0,0,0,0,0,0,0,0]
        y: [7,7,0,0,0,2,5,7,7,7]
        z: [0,0,0,0,0,0,0,0,0,0]
      width: [10,10,10,12,12,12,12,12,10,10]
      height: [10,10,10,12,12,12,12,12,10,10]
      texture: [4,4,4,4,4,17,4]
      angle: -50
    mian_wire2:
      section_segments: 16
      offset:
        x: 26
        y: 20
        z: 10
      position:
        x: [0,0,0,0,0,0,0,0,0,0]
        y: [7,7,0,0,0,2,5,7,7,7]
        z: [0,0,0,0,0,0,0,0,0,0]
      width: [10,10,10,12,12,12,12,12,10,10]
      height: [10,10,10,12,12,12,12,12,10,10]
      texture: [4,4,4,4,4,17,4]
      angle: -50
    mian_wire3:
      section_segments: 16
      offset:
        x: 26
        y: 10
        z: 10
      position:
        x: [0,0,0,0,0,0,0,0,0,0]
        y: [7,7,0,0,0,2,5,7,7,7]
        z: [0,0,0,0,0,0,0,0,0,0]
      width: [10,10,10,12,12,12,12,12,10,10]
      height: [10,10,10,12,12,12,12,12,10,10]
      texture: [4,4,4,4,4,17,4]
      angle: -50
    main_shell:
      section_segments: [0,60,120,180]
      offset:
        x: -15
        y: -27
        z: -1
      position:
        x: [0,2,0,0,0,0]
        y: [-50,-60,0,30,70,60]
        z: [0,0,0,0,0,0]
      width: [0,5,20,20,5,0]
      height: [0,5,10,20,0,0]
      texture: [17,31,41.9,63]
    main4:
      section_segments: 8
      offset:
        x: 19
        y: -12
        z: 10
      position:
        x: [0,5,5,4,3,2,0,0,0,0]
        y: [-22.5,-7.5,7.5,30,45,60,75,90,105,105]
        z: [0,0,0,0,0,0,0,0,0,0]
      width: [0,3,5,8,9,10,9,7,5,0]
      height: [0,3,5,7,9,10,9,7,5,0]
      angle: 0
      propeller: false
      texture: [63,13,3,63,3,11,63,13,17]
    main_front:
      section_segments: 12
      offset:
        x: 0
        y: -130
        z: -3
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-62,-50,-42,-50,-30,-10,0,50,90,110,120,110]
        z: [0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,13,0,15,19,24,14,14,24,22,20,0]
      height: [0,13,0,15,19,24,14,14,24,22,20,0]
      angle: 0
      laser:
        damage: [4,4]
        rate: 6
        type: 1
        speed: [175,165]
        number: 1
        error: 0
      propeller: false
      texture: [63,3,4,13,3,63,4,11,63,13,17]
    main_front2:
      section_segments: 12
      offset:
        x: 0
        y: -23
        z: -3
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-100,-135,-100,-107,-110,-100,-95,-98,-99,-85,-70,-74,-85,-70,-60,-69,-70,-55,0]
        z: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,5,6,17,19,6,7,19,21,8,9,10,22,10,11,23,23,11,13]
      height: [0,5,6,17,19,6,7,19,21,8,9,10,22,10,11,23,23,11,13]
      texture: [4,4,6,13,17,4,6,6,17,4,6,6,17,4,6,6,17,4]
      laser:
        damage: [200,200]
        rate: 1
        type: 2
        speed: [180,330]
        number: 2
        error: 0
        recoil: 150
    flame:
      section_segments: 8
      offset:
        x: 0
        y: -154
        z: -3
      position:
        x: [0]
        y: [100]
        z: [0]
      width: [34]
      height: [34]
      texture: [17]
      propeller: true 
    cockpit:
      section_segments: 10
      offset:
        x: 0
        y: -20
        z: 16
      position:
        x: [0,0,0,0,0,0]
        y: [-20,10,50,100,135]
        z: [5,0,1,1,0]
      width: [5,10,12,12,5]
      height: [0,15,20,20,0]
      texture: [9,9,4]
    box:
      section_segments: [40,45,50,130,135,140,220,225,230,310,315,320]
      offset:
        x: 0
        y: 85
        z: 20
      position:
        x: [0,0,0,0,0]
        y: [-30,-15,15,55]
        z: [2,0,0,-5]
      width: [15,20,20,15]
      height: [0,18,18,0]
      texture: [13,17.96,4]
    cannon0:
      section_segments: 12
      offset:
        x: 0
        y: 0
        z: -5
      position:
        x: [0,0,0,0,0,0,0]
        y: [-125,-130,-65,-45,-25,-10,0]
        z: [0,0,0,0,0,0,0]
      width: [0,5,6,10,13,6,6]
      height: [0,5,5,10,13,5,0]
      angle: 0
      laser:
        damage: [50,70]
        rate: 4
        type: 2
        speed: [190,240]
        recoil: 50
        number: 1
        error: 0
      propeller: false
      texture: [4,12,10,2,3,13]
      
    lower_engine:
      section_segments: 12
      offset:
        x: 30
        y: 109
        z: 0
      position:
        x: [-20,0,0,0,0]
        y: [-75,20,51,55,48]
        z: [-10,0,0,0,0]
      width: [10,15,15,15,0]
      height: [15,16,15,15,0]
      texture: [18,13,17,18]
      propeller: true
    upper_engine:
      section_segments: 12
      offset:
        x: 20
        y: 15
        z: 19
      position:
        x: [0,0,0,0,0,0,0,0,0]
        y: [35,30,50,80,110,120,125,115]
        z: [0,0,0,0,0,0,0,0,0]
      width: [0,5,8,9,9,9,9,0]
      height: [0,5,8,9,9,9,9,0]
      texture: [18,13,63,3,15,17,18]
      propeller: true
    side_engin:
      section_segments: 8
      offset:
        x: 75
        y: 20
        z: -3
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-42,-20,-12,-20,0,10,30,50,80,100,110,100]
        z: [0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,11,0,13,17,19,19,19,19,17,15,0]
      height: [0,11,0,13,17,19,19,19,19,17,15,0]
      angle: 0
      laser:
        damage: [4,4]
        rate: 6
        type: 1
        speed: [175,165]
        number: 1
        error: 0
      propeller: 1
      texture: [63,3,4,13,3,63,4,11,63,13,17]
    reactorPod1:
      section_segments: 8
      vertical: true
      offset:
        x: 83.1
        y: 15
        z: -109
      position:
        x: [0,0,0,0,0,0,0]
        y: [-4,-4,-2,-2,5,5,10]
        z: [0,0,0,0,0,0,0]
      width: [0,4,5,4,4]
      height: [0,4,5,4,4]
      texture: [18,4,3,17,4]
      angle: 200 
    reactorPod2:
      section_segments: 8
      vertical: true
      offset:
        x: 83.1
        y: 15
        z: -85
      position:
        x: [0,0,0,0,0,0,0]
        y: [-4,-4,-2,-2,5,5,10]
        z: [0,0,0,0,0,0,0]
      width: [0,4,5,4,4]
      height: [0,4,5,4,4]
      texture: [18,4,3,17,4]
      angle: 200 
    reactorPod3:
      section_segments: 8
      vertical: true
      offset:
        x: 83.1
        y: 15
        z: -61
      position:
        x: [0,0,0,0,0,0,0]
        y: [-4,-4,-2,-2,5,5,10]
        z: [0,0,0,0,0,0,0]
      width: [0,4,5,4,4]
      height: [0,4,5,4,4]
      texture: [18,4,3,17,4]
      angle: 200 
    side_deco:
      section_segments: 8
      offset:
        x: 113
        y: 66
        z: -12
      position:
        x: [0,0,0,0,0,0,0,0,0,0,0,0]
        y: [-12,-10,-2,-10,0,10,10,30,50,60,70,60]
        z: [0,0,0,0,0,0,0,0,0,0,0,0]
      width: [0,1,0,3,7,9,9,9,9,7,5,0]
      height: [0,1,0,3,7,9,9,9,9,7,5,0]
      angle: 0
      laser:
        damage: [4,4]
        rate: 6
        type: 1
        speed: [175,165]
        number: 1
        error: 0
      propeller: 1
      texture: [63,3,4,13,3,63,4,11,63,13,17]
    wire1:
      section_segments: 8
      angle: 120
      offset:
        x: -30
        y: 10
        z: 0
      position:
        x: [-10,-10,-5,2,3,4,4,3,0,-2,-2]
        y: [-48,-54,-53,-50,-38,-23,-15,2,15,12]
        z: [0,0,0,0,0,0,0,0,0,0,0]
      width: [4,4,4,4,4,4,4,4,4,4]
      height: [4,4,4,4,4,4,4,4,4,4]
      texture: [13,13,17,13,17,13,17,13,17]
    wire2:
      section_segments: 8
      angle: 120
      offset:
        x: -30
        y: 30
        z: 0
      position:
        x: [-10,-10,-5,2,3,4,4,3,0,-2,-2]
        y: [-48,-54,-53,-50,-38,-23,-15,2,15,12]
        z: [0,0,0,0,0,0,0,0,0,0,0]
      width: [4,4,4,4,4,4,4,4,4,4]
      height: [4,4,4,4,4,4,4,4,4,4]
      texture: [13,13,17,13,17,13,17,13,17]
    wire3:
      section_segments: 8
      angle: 120
      offset:
        x: -30
        y: 50
        z: 0
      position:
        x: [-10,-10,-5,2,3,4,4,3,0,-2,-2]
        y: [-48,-54,-53,-50,-38,-23,-15,2,15,12]
        z: [0,0,0,0,0,0,0,0,0,0,0]
      width: [4,4,4,4,4,4,4,4,4,4]
      height: [4,4,4,4,4,4,4,4,4,4]
      texture: [13,13,17,13,17,13,17,13,17]

  wings:
    mainwings:
      doubleside: true
      offset:
        x: 82
        y: 20
        z: -8
      length: [30]
      width: [30,30]
      angle: [-4]
      position: [60,80]
      texture: [42.15]
      bump:
        position: -20
        size: 3
    subwings:
      doubleside: true
      offset:
        x: 15
        y: 50
        z: 0
      length: [ 50 ]
      width: [70,30]
      angle: [ 32 ]
      position: [0,60]
      texture: [ 63 ]
      bump:
        position: 10
        size: 10
    subsubwings:
      doubleside: true
      offset:
        x: 15
        y: 50
        z: 0
      length: [ 50 ]
      width: [70,30]
      angle: [ 25 ]
      position: [0,58]
      texture: [ 43 ]
      bump:
        position: 10
        size: 10
    side_engin_shield:
      doubleside: true
      offset:
        x: 75
        y: 86
        z: 15.9
      length: [15,15,15]
      width: [55,65,65,55]
      angle: [-20,-60,-90]
      position: [0,0,0,0]
      texture: [ 48.4 ]
      bump:
        position: 10
        size: 0




