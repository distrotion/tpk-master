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
import 'P12PROGRESSVAR.dart';

class P12PROGRESSMAIN extends StatefulWidget {
  const P12PROGRESSMAIN({super.key});

  @override
  State<P12PROGRESSMAIN> createState() => _P12PROGRESSMAINState();
}

class _P12PROGRESSMAINState extends State<P12PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P12PROGRESSMAINBody();
  }
}

class P12PROGRESSMAINBody extends StatefulWidget {
  const P12PROGRESSMAINBody({super.key});

  @override
  State<P12PROGRESSMAINBody> createState() => _P12PROGRESSMAINBodyState();
}

class _P12PROGRESSMAINBodyState extends State<P12PROGRESSMAINBody> {
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
                                  P12PROGRESSVAR.isHoveredGAS = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P12PROGRESSVAR.isHoveredGAS = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P12PROGRESSVAR.isHoveredGAS = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.BPGAS;
                                    USERDATA.PLANT = 'GAS';
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
                                        P12PROGRESSVAR.isHoveredGAS ? 170 : 150,
                                    width:
                                        P12PROGRESSVAR.isHoveredGAS ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P12PROGRESSVAR.isHoveredGAS
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
                                        'GAS',
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
                                  P12PROGRESSVAR.isHoveredPHO = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P12PROGRESSVAR.isHoveredPHO = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P12PROGRESSVAR.isHoveredPHO = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.BPPHO;
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
                                        P12PROGRESSVAR.isHoveredPHO ? 170 : 150,
                                    width:
                                        P12PROGRESSVAR.isHoveredPHO ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P12PROGRESSVAR.isHoveredPHO
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
                                  P12PROGRESSVAR.isHoveredPAL = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P12PROGRESSVAR.isHoveredPAL = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P12PROGRESSVAR.isHoveredPAL = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.BPPAL;
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
                                        P12PROGRESSVAR.isHoveredPAL ? 170 : 150,
                                    width:
                                        P12PROGRESSVAR.isHoveredPAL ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P12PROGRESSVAR.isHoveredPAL
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
                                  P12PROGRESSVAR.isHoveredKNG = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P12PROGRESSVAR.isHoveredKNG = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P12PROGRESSVAR.isHoveredKNG = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.BPKNG;
                                    USERDATA.PLANT = 'KNG';
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
                                        P12PROGRESSVAR.isHoveredKNG ? 170 : 150,
                                    width:
                                        P12PROGRESSVAR.isHoveredKNG ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P12PROGRESSVAR.isHoveredKNG
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
                                        'KNG',
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
                                  P12PROGRESSVAR.isHoveredPVD = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P12PROGRESSVAR.isHoveredPVD = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P12PROGRESSVAR.isHoveredPVD = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.BPPVD;
                                    USERDATA.PLANT = 'PVD';
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
                                        P12PROGRESSVAR.isHoveredPVD ? 170 : 150,
                                    width:
                                        P12PROGRESSVAR.isHoveredPVD ? 170 : 150,
                                    decoration: BoxDecoration(
                                      color: P12PROGRESSVAR.isHoveredPVD
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
                                        'PVD',
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
