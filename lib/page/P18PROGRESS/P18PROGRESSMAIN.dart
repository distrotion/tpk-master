// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page11.dart';
import '../page19.dart';
import '../page20.dart';
import '../page21.dart';
import '../page22.dart';
import '../page23.dart';
import '../page24.dart';
import '../page25.dart';
import '../page8.dart';
import 'P18PROGRESSVAR.dart';

class P18PROGRESSMAIN extends StatefulWidget {
  const P18PROGRESSMAIN({super.key});

  @override
  State<P18PROGRESSMAIN> createState() => _P18PROGRESSMAINState();
}

class _P18PROGRESSMAINState extends State<P18PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P18PROGRESSMAINBody();
  }
}

class P18PROGRESSMAINBody extends StatefulWidget {
  const P18PROGRESSMAINBody({super.key});

  @override
  State<P18PROGRESSMAINBody> createState() => _P18PROGRESSMAINBodyState();
}

class _P18PROGRESSMAINBodyState extends State<P18PROGRESSMAINBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              onPressed: () {
                // CuPage = Page11();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page11());
              },
            ),
          ),
          Positioned(
            top: 20,
            left: 40,
            child: TextButton(
              onPressed: () {
                // CuPage = Page8();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page8());
              },
              child: Text(
                'SELECT PROGRESS',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 137,
            child: Text(
              '/',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 135,
            child: TextButton(
              onPressed: () {
                // CuPage = Page11();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page11());
              },
              child: Text(
                'SELECT ACTION',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: const [Colors.blueAccent, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds),
                    child: Text(
                      '${USERDATA.INSMASTER} : SELECT PLANT',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          spacing: 10.0,
                          runSpacing: 10.0,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredPREMIX = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredPREMIX = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P18PROGRESSVAR.isHoveredPREMIX = false;
                                    });
                                    USERDATA.PLANT = 'premix';
                                    USERDATA.PLANTNAME = 'PREMIX';
                                    USERDATA.CONTEXT = 'P19PROGRESSMAINcontext';
                                    print(USERDATA.PLANT);
                                    // CuPage = Page19();
                                    // MainBodyContext.read<ChangePage_Bloc>()
                                    //     .add(ChangePage_nodrower());
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .ChangePage_nodrower('', Page19());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    height: P18PROGRESSVAR.isHoveredPREMIX
                                        ? 170
                                        : 150,
                                    width: P18PROGRESSVAR.isHoveredPREMIX
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: P18PROGRESSVAR.isHoveredPREMIX
                                            ? [
                                                Colors.greenAccent,
                                                Colors.lightGreen
                                              ]
                                            : [Colors.green, Colors.teal],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      border: Border.all(
                                        color: Colors.black87,
                                        width: 2.0,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(2, 3),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'PREMIX',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          shadows: const [
                                            Shadow(
                                              blurRadius: 5.0,
                                              color: Colors.black45,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredCOILCOATING = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredCOILCOATING = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P18PROGRESSVAR.isHoveredCOILCOATING =
                                          false;
                                    });
                                    USERDATA.PLANT = 'coilcoating';
                                    USERDATA.PLANTNAME = 'COILCOATING';
                                    USERDATA.CONTEXT = 'P20PROGRESSMAINcontext';
                                    print(USERDATA.PLANT);
                                    // CuPage = Page20();
                                    // MainBodyContext.read<ChangePage_Bloc>()
                                    //     .add(ChangePage_nodrower());
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .ChangePage_nodrower('', Page20());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    height: P18PROGRESSVAR.isHoveredCOILCOATING
                                        ? 170
                                        : 150,
                                    width: P18PROGRESSVAR.isHoveredCOILCOATING
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors:
                                            P18PROGRESSVAR.isHoveredCOILCOATING
                                                ? [
                                                    Colors.redAccent,
                                                    Colors.orangeAccent
                                                  ]
                                                : [Colors.red, Colors.orange],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      border: Border.all(
                                        color: Colors.black87,
                                        width: 2.0,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(2, 3),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'COILCOATING',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          shadows: const [
                                            Shadow(
                                              blurRadius: 5.0,
                                              color: Colors.black45,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredHYDROPHILIC = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredHYDROPHILIC = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P18PROGRESSVAR.isHoveredHYDROPHILIC =
                                          false;
                                    });
                                    USERDATA.PLANT = 'hydro';
                                    USERDATA.PLANTNAME = 'HYDROPHILIC';
                                    USERDATA.CONTEXT = 'P21PROGRESSMAINcontext';
                                    print(USERDATA.PLANT);
                                    // CuPage = Page21();
                                    // MainBodyContext.read<ChangePage_Bloc>()
                                    //     .add(ChangePage_nodrower());
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .ChangePage_nodrower('', Page21());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    height: P18PROGRESSVAR.isHoveredHYDROPHILIC
                                        ? 170
                                        : 150,
                                    width: P18PROGRESSVAR.isHoveredHYDROPHILIC
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors:
                                            P18PROGRESSVAR.isHoveredHYDROPHILIC
                                                ? [
                                                    Colors.lightBlueAccent,
                                                    Colors.blueAccent
                                                  ]
                                                : [Colors.blue, Colors.indigo],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      border: Border.all(
                                        color: Colors.black87,
                                        width: 2.0,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(2, 3),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'HYDROPHILIC',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          shadows: const [
                                            Shadow(
                                              blurRadius: 5.0,
                                              color: Colors.black45,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredPLX = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredPLX = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P18PROGRESSVAR.isHoveredPLX = false;
                                    });
                                    USERDATA.PLANT = 'plx';
                                    USERDATA.PLANTNAME = 'PL-X';
                                    USERDATA.CONTEXT = 'P22PROGRESSMAINcontext';
                                    print(USERDATA.PLANT);
                                    // CuPage = Page22();
                                    // MainBodyContext.read<ChangePage_Bloc>()
                                    //     .add(ChangePage_nodrower());
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .ChangePage_nodrower('', Page22());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    height:
                                        P18PROGRESSVAR.isHoveredPLX ? 170 : 150,
                                    width:
                                        P18PROGRESSVAR.isHoveredPLX ? 170 : 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: P18PROGRESSVAR.isHoveredPLX
                                            ? [
                                                Colors.lightGreenAccent,
                                                Colors.yellowAccent
                                              ]
                                            : [Colors.green, Colors.yellow],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      border: Border.all(
                                        color: Colors.black87,
                                        width: 2.0,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(2, 3),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'PL-X',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          shadows: const [
                                            Shadow(
                                              blurRadius: 5.0,
                                              color: Colors.black45,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Wrap(
                          spacing: 10.0,
                          runSpacing: 10.0,
                          children: [
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredPOWDER = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredPOWDER = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P18PROGRESSVAR.isHoveredPOWDER = false;
                                    });
                                    USERDATA.PLANT = 'powder';
                                    USERDATA.PLANTNAME = 'POWDER';
                                    USERDATA.CONTEXT = 'P23PROGRESSMAINcontext';
                                    print(USERDATA.PLANT);
                                    // CuPage = Page23();
                                    // MainBodyContext.read<ChangePage_Bloc>()
                                    //     .add(ChangePage_nodrower());
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .ChangePage_nodrower('', Page23());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    height: P18PROGRESSVAR.isHoveredPOWDER
                                        ? 170
                                        : 150,
                                    width: P18PROGRESSVAR.isHoveredPOWDER
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: P18PROGRESSVAR.isHoveredPOWDER
                                            ? [
                                                Colors.pinkAccent,
                                                Colors.purpleAccent
                                              ]
                                            : [Colors.pink, Colors.purple],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      border: Border.all(
                                        color: Colors.black87,
                                        width: 2.0,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(2, 3),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'POWDER',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          shadows: const [
                                            Shadow(
                                              blurRadius: 5.0,
                                              color: Colors.black45,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredLIQUID = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredLIQUID = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P18PROGRESSVAR.isHoveredLIQUID = false;
                                    });
                                    USERDATA.PLANT = 'liquid';
                                    USERDATA.PLANTNAME = 'LIQUID';
                                    USERDATA.CONTEXT = 'P24PROGRESSMAINcontext';
                                    print(USERDATA.PLANT);
                                    // CuPage = Page24();
                                    // MainBodyContext.read<ChangePage_Bloc>()
                                    //     .add(ChangePage_nodrower());
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .ChangePage_nodrower('', Page24());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    height: P18PROGRESSVAR.isHoveredLIQUID
                                        ? 170
                                        : 150,
                                    width: P18PROGRESSVAR.isHoveredLIQUID
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: P18PROGRESSVAR.isHoveredLIQUID
                                            ? [Colors.grey, Colors.blueGrey]
                                            : [Colors.blue, Colors.lightBlue],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      border: Border.all(
                                        color: Colors.black87,
                                        width: 2.0,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(2, 3),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'LIQUID',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          shadows: const [
                                            Shadow(
                                              blurRadius: 5.0,
                                              color: Colors.black45,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredNOXRUST = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P18PROGRESSVAR.isHoveredNOXRUST = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P18PROGRESSVAR.isHoveredNOXRUST = false;
                                    });
                                    USERDATA.PLANT = 'noxrust';
                                    USERDATA.PLANTNAME = 'NOXRUST';
                                    USERDATA.CONTEXT = 'P25PROGRESSMAINcontext';
                                    print(USERDATA.PLANT);
                                    // CuPage = Page25();
                                    // MainBodyContext.read<ChangePage_Bloc>()
                                    //     .add(ChangePage_nodrower());
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .ChangePage_nodrower('', Page25());
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    height: P18PROGRESSVAR.isHoveredNOXRUST
                                        ? 170
                                        : 150,
                                    width: P18PROGRESSVAR.isHoveredNOXRUST
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: P18PROGRESSVAR.isHoveredNOXRUST
                                            ? [
                                                Colors.limeAccent,
                                                Colors.cyanAccent
                                              ]
                                            : [Colors.lime, Colors.cyan],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      border: Border.all(
                                        color: Colors.black87,
                                        width: 2.0,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(2, 3),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'NOXRUST',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          shadows: const [
                                            Shadow(
                                              blurRadius: 5.0,
                                              color: Colors.black45,
                                              offset: Offset(2, 2),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
