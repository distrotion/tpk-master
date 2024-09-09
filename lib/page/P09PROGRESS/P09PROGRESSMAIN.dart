// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page10.dart';
import '../page8.dart';
import 'P09PROGRESSVAR.dart';

class P09PROGRESSMAIN extends StatefulWidget {
  const P09PROGRESSMAIN({super.key});

  @override
  State<P09PROGRESSMAIN> createState() => _P09PROGRESSMAINState();
}

class _P09PROGRESSMAINState extends State<P09PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P09PROGRESSMAINBody();
  }
}

class P09PROGRESSMAINBody extends StatefulWidget {
  const P09PROGRESSMAINBody({super.key});

  @override
  State<P09PROGRESSMAINBody> createState() => _P09PROGRESSMAINBodyState();
}

class _P09PROGRESSMAINBodyState extends State<P09PROGRESSMAINBody> {
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
                // CuPage = Page8();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page8());
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
                      '${USERDATA.INSMASTER} : SELECT BRANCH',
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
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredBP12 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredBP12 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P09PROGRESSVAR.isHoveredBP12 = false;
                                      });
                                      USERDATA.BRANCH = 'BP12';
                                      USERDATA.BRANCHNUMBER = BRANCHNUMBER.BP;
                                      print(USERDATA.BRANCH);
                                      print(USERDATA.BRANCHNUMBER);
                                      // CuPage = Page10();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page10());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P09PROGRESSVAR.isHoveredBP12
                                          ? 170
                                          : 150,
                                      width: P09PROGRESSVAR.isHoveredBP12
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P09PROGRESSVAR.isHoveredBP12
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
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(2, 3),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'BP12',
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredGW = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredGW = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P09PROGRESSVAR.isHoveredGW = false;
                                      });
                                      USERDATA.BRANCH = 'GW';
                                      USERDATA.BRANCHNUMBER = BRANCHNUMBER.GW;
                                      print(USERDATA.BRANCH);
                                      print(USERDATA.BRANCHNUMBER);
                                      // CuPage = Page10();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page10());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P09PROGRESSVAR.isHoveredGW
                                          ? 170
                                          : 150,
                                      width: P09PROGRESSVAR.isHoveredGW
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P09PROGRESSVAR.isHoveredGW
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
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(2, 3),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'GW',
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
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredESIE1 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P09PROGRESSVAR.isHoveredESIE1 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P09PROGRESSVAR.isHoveredESIE1 = false;
                                      });
                                      USERDATA.BRANCH = 'ESIE1';
                                      USERDATA.BRANCHNUMBER =
                                          BRANCHNUMBER.ESIE1;
                                      print(USERDATA.BRANCH);
                                      print(USERDATA.BRANCHNUMBER);
                                      // CuPage = Page10();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page10());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P09PROGRESSVAR.isHoveredESIE1
                                          ? 170
                                          : 150,
                                      width: P09PROGRESSVAR.isHoveredESIE1
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P09PROGRESSVAR.isHoveredESIE1
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
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: Offset(2, 3),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'ESIE1',
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
