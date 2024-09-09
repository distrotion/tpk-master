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
import 'P14PROGRESSVAR.dart';

class P14PROGRESSMAIN extends StatefulWidget {
  const P14PROGRESSMAIN({super.key});

  @override
  State<P14PROGRESSMAIN> createState() => _P14PROGRESSMAINState();
}

class _P14PROGRESSMAINState extends State<P14PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P14PROGRESSMAINBody();
  }
}

class P14PROGRESSMAINBody extends StatefulWidget {
  const P14PROGRESSMAINBody({super.key});

  @override
  State<P14PROGRESSMAINBody> createState() => _P14PROGRESSMAINBodyState();
}

class _P14PROGRESSMAINBodyState extends State<P14PROGRESSMAINBody> {
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
                                  P14PROGRESSVAR.isHoveredGWOLD = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P14PROGRESSVAR.isHoveredGWOLD = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P14PROGRESSVAR.isHoveredGWOLD = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.GWOLD;
                                    USERDATA.PLANT = 'GW OLD';
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
                                    height: P14PROGRESSVAR.isHoveredGWOLD
                                        ? 170
                                        : 150,
                                    width: P14PROGRESSVAR.isHoveredGWOLD
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P14PROGRESSVAR.isHoveredGWOLD
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
                                        'GW OLD',
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
                                  P14PROGRESSVAR.isHoveredGWNEW = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  P14PROGRESSVAR.isHoveredGWNEW = false;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P14PROGRESSVAR.isHoveredGWNEW = false;
                                    });
                                    USERDATA.PLANTNUMBER = PLANTNUMBER.GWNEW;
                                    USERDATA.PLANT = 'GW NEW';
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
                                    height: P14PROGRESSVAR.isHoveredGWNEW
                                        ? 170
                                        : 150,
                                    width: P14PROGRESSVAR.isHoveredGWNEW
                                        ? 170
                                        : 150,
                                    decoration: BoxDecoration(
                                      color: P14PROGRESSVAR.isHoveredGWNEW
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
                                        'GW NEW',
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
