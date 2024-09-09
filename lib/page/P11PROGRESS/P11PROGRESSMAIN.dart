// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page18.dart';
import '../page27.dart';
import '../page8.dart';
import 'P11PROGRESSVAR.dart';

class P11PROGRESSMAIN extends StatefulWidget {
  const P11PROGRESSMAIN({super.key});

  @override
  State<P11PROGRESSMAIN> createState() => _P11PROGRESSMAINState();
}

class _P11PROGRESSMAINState extends State<P11PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P11PROGRESSMAINBody();
  }
}

class P11PROGRESSMAINBody extends StatefulWidget {
  const P11PROGRESSMAINBody({super.key});

  @override
  State<P11PROGRESSMAINBody> createState() => _P11PROGRESSMAINBodyState();
}

class _P11PROGRESSMAINBodyState extends State<P11PROGRESSMAINBody> {
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
                      '${USERDATA.INSMASTER} : SELECT ACTION',
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
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                P11PROGRESSVAR.isHoveredINCOMING = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                P11PROGRESSVAR.isHoveredINCOMING = false;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  P11PROGRESSVAR.isHoveredINCOMING = false;
                                });
                                USERDATA.ACTION = 'INCOMING';
                                print(USERDATA.ACTION);
                                // if (USERDATA.BRANCH == 'BP12') {
                                //   CuPage = Page12();
                                //   MainBodyContext.read<ChangePage_Bloc>()
                                //       .add(ChangePage_nodrower());
                                // } else if (USERDATA.BRANCH == 'GW') {
                                //   CuPage = Page14();
                                //   MainBodyContext.read<ChangePage_Bloc>()
                                //       .add(ChangePage_nodrower());
                                // } else if (USERDATA.BRANCH == 'ESIE1') {
                                //   CuPage = Page15();
                                //   MainBodyContext.read<ChangePage_Bloc>()
                                //       .add(ChangePage_nodrower());
                                // }
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                height:
                                    P11PROGRESSVAR.isHoveredINCOMING ? 55 : 50,
                                width: P11PROGRESSVAR.isHoveredINCOMING
                                    ? 420
                                    : 400,
                                decoration: BoxDecoration(
                                  color: P11PROGRESSVAR.isHoveredINCOMING
                                      ? Colors.yellowAccent.shade700
                                      : Colors.redAccent.shade700,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'INCOMING',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                P11PROGRESSVAR.isHoveredPLANNING = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                P11PROGRESSVAR.isHoveredPLANNING = false;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  P11PROGRESSVAR.isHoveredPLANNING = false;
                                });
                                USERDATA.ACTION = 'PLANNING';
                                print(USERDATA.ACTION);
                                // CuPage = Page27();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page27());
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                height:
                                    P11PROGRESSVAR.isHoveredPLANNING ? 55 : 50,
                                width: P11PROGRESSVAR.isHoveredPLANNING
                                    ? 420
                                    : 400,
                                decoration: BoxDecoration(
                                  color: P11PROGRESSVAR.isHoveredPLANNING
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
                                    'PLANNING',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                P11PROGRESSVAR.isHoveredSCADADATA = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                P11PROGRESSVAR.isHoveredSCADADATA = false;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  P11PROGRESSVAR.isHoveredSCADADATA = false;
                                });
                                USERDATA.ACTION = 'RAW MATERIAL PREPARATION';
                                print(USERDATA.ACTION);
                                // if (USERDATA.BRANCH == 'BP12') {
                                //   CuPage = Page2();
                                //   MainBodyContext.read<ChangePage_Bloc>()
                                //       .add(ChangePage_nodrower());
                                // } else if (USERDATA.BRANCH == 'GW') {
                                //   CuPage = Page4();
                                //   MainBodyContext.read<ChangePage_Bloc>()
                                //       .add(ChangePage_nodrower());
                                // } else if (USERDATA.BRANCH == 'ESIE1') {
                                //   CuPage = Page1();
                                //   MainBodyContext.read<ChangePage_Bloc>()
                                //       .add(ChangePage_nodrower());
                                // }
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                height:
                                    P11PROGRESSVAR.isHoveredSCADADATA ? 55 : 50,
                                width: P11PROGRESSVAR.isHoveredSCADADATA
                                    ? 420
                                    : 400,
                                decoration: BoxDecoration(
                                  color: P11PROGRESSVAR.isHoveredSCADADATA
                                      ? Colors.yellowAccent.shade700
                                      : Colors.redAccent.shade700,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'RAW MATERIAL PREPARATION',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                P11PROGRESSVAR.isHoveredSTATUS = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                P11PROGRESSVAR.isHoveredSTATUS = false;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  P11PROGRESSVAR.isHoveredSTATUS = false;
                                });
                                USERDATA.ACTION = 'STATUS';
                                print(USERDATA.ACTION);
                                // CuPage = Page18();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());

                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page18());
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                height:
                                    P11PROGRESSVAR.isHoveredSTATUS ? 55 : 50,
                                width:
                                    P11PROGRESSVAR.isHoveredSTATUS ? 420 : 400,
                                decoration: BoxDecoration(
                                  color: P11PROGRESSVAR.isHoveredSTATUS
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
                                    'STATUS',
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
