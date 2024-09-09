// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page10.dart';
import '../page13.dart';
import '../page16.dart';
import 'P15PROGRESSVAR.dart';

class P15PROGRESSMAIN extends StatefulWidget {
  const P15PROGRESSMAIN({super.key});

  @override
  State<P15PROGRESSMAIN> createState() => _P15PROGRESSMAINState();
}

class _P15PROGRESSMAINState extends State<P15PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P15PROGRESSMAINBody();
  }
}

class P15PROGRESSMAINBody extends StatefulWidget {
  const P15PROGRESSMAINBody({super.key});

  @override
  State<P15PROGRESSMAINBody> createState() => _P15PROGRESSMAINBodyState();
}

class _P15PROGRESSMAINBodyState extends State<P15PROGRESSMAINBody> {
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
                // CuPage = Page10();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page10());
              },
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
                      '${USERDATA.BRANCH} : ${USERDATA.ACTION} : SELECT PLANT',
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
                                  P15PROGRESSVAR.isHoveredPHO = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P15PROGRESSVAR.isHoveredPHO = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P15PROGRESSVAR.isHoveredPHO = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.ESIE1PHO;
                                    USERDATA.PLANT = 'PHO';
                                    print(USERDATA.PLANT);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      // CuPage = Page13();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page13());
                                    } else if (USERDATA.ACTION == 'AQC') {
                                      // CuPage = Page16();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page16());
                                    }
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P15PROGRESSVAR.isHoveredPHO ? 170 : 150,
                                    width:
                                        P15PROGRESSVAR.isHoveredPHO ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P15PROGRESSVAR.isHoveredPHO
                                          ? Colors.greenAccent
                                          : Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'PHO',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P15PROGRESSVAR.isHoveredPAL = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P15PROGRESSVAR.isHoveredPAL = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P15PROGRESSVAR.isHoveredPAL = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.ESIE1PAL;
                                    USERDATA.PLANT = 'PAL';
                                    print(USERDATA.PLANT);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      // CuPage = Page13();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page13());
                                    } else if (USERDATA.ACTION == 'AQC') {
                                      // CuPage = Page16();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page16());
                                    }
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P15PROGRESSVAR.isHoveredPAL ? 170 : 150,
                                    width:
                                        P15PROGRESSVAR.isHoveredPAL ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P15PROGRESSVAR.isHoveredPAL
                                          ? Colors.greenAccent
                                          : Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'PAL',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P15PROGRESSVAR.isHoveredISN = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P15PROGRESSVAR.isHoveredISN = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P15PROGRESSVAR.isHoveredISN = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.ESIE1ISN;
                                    USERDATA.PLANT = 'ISN';
                                    print(USERDATA.PLANT);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      // CuPage = Page13();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page13());
                                    } else if (USERDATA.ACTION == 'AQC') {
                                      // CuPage = Page16();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page16());
                                    }
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height:
                                        P15PROGRESSVAR.isHoveredISN ? 170 : 150,
                                    width:
                                        P15PROGRESSVAR.isHoveredISN ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P15PROGRESSVAR.isHoveredISN
                                          ? Colors.greenAccent
                                          : Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'ISN',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
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
                                  P15PROGRESSVAR.isHoveredGASNON = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P15PROGRESSVAR.isHoveredGASNON = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P15PROGRESSVAR.isHoveredGASNON = false;
                                    });
                                    USERDATA.PLANTNUMBER =
                                        PLANTNUMBER.ESIE1GASNON;
                                    USERDATA.PLANT = 'GAS NONBOI';
                                    print(USERDATA.PLANT);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      // CuPage = Page13();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page13());
                                    } else if (USERDATA.ACTION == 'AQC') {
                                      // CuPage = Page16();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page16());
                                    }
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P15PROGRESSVAR.isHoveredGASNON
                                        ? 170
                                        : 150,
                                    width: P15PROGRESSVAR.isHoveredGASNON
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P15PROGRESSVAR.isHoveredGASNON
                                          ? Colors.greenAccent
                                          : Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'GAS NONBOI',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  P15PROGRESSVAR.isHoveredGASBOI = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P15PROGRESSVAR.isHoveredGASBOI = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P15PROGRESSVAR.isHoveredGASBOI = false;
                                    });
                                    USERDATA.PLANTNUMBER =
                                        PLANTNUMBER.ESIE1GASBOI;
                                    USERDATA.PLANT = 'GAS BOI';
                                    print(USERDATA.PLANT);
                                    print(USERDATA.PLANTNUMBER);
                                    if (USERDATA.ACTION == 'INCOMING') {
                                      // CuPage = Page13();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page13());
                                    } else if (USERDATA.ACTION == 'AQC') {
                                      // CuPage = Page16();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page16());
                                    }
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P15PROGRESSVAR.isHoveredGASBOI
                                        ? 170
                                        : 150,
                                    width: P15PROGRESSVAR.isHoveredGASBOI
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P15PROGRESSVAR.isHoveredGASBOI
                                          ? Colors.greenAccent
                                          : Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'GAS BOI',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(10.0),
                            //   child: InkWell(
                            //     onTap: () {
                            //       // USERDATA.INSMASTER = '';
                            //       // print(USERDATA.INSMASTER);
                            //       // // CuPage = Page3();
                            //       // // MainBodyContext.read<ChangePage_Bloc>()
                            //       // //     .add(ChangePage_nodrower());
                            //     },
                            //     child: Container(
                            //       height: 150,
                            //       width: 150,
                            //       decoration: BoxDecoration(
                            //         color: Colors.red.shade900,
                            //         border: Border.all(
                            //           color: Colors.black,
                            //           width: 2.0,
                            //         ),
                            //         borderRadius: BorderRadius.circular(10),
                            //       ),
                            //       child: Center(
                            //         child: Text(
                            //           'Others',
                            //           style:
                            //               TextStyle(color: Colors.white, fontSize: 20),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
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
