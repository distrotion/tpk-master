// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page1.dart';
import '../page13.dart';
import '../page2.dart';
import '../page4.dart';
import '../page8.dart';
import '../page9.dart';
import 'P10PROGRESSVAR.dart';

class P10PROGRESSMAIN extends StatefulWidget {
  const P10PROGRESSMAIN({super.key});

  @override
  State<P10PROGRESSMAIN> createState() => _P10PROGRESSMAINState();
}

class _P10PROGRESSMAINState extends State<P10PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P10PROGRESSMAINBody();
  }
}

class P10PROGRESSMAINBody extends StatefulWidget {
  const P10PROGRESSMAINBody({super.key});

  @override
  State<P10PROGRESSMAINBody> createState() => _P10PROGRESSMAINBodyState();
}

class _P10PROGRESSMAINBodyState extends State<P10PROGRESSMAINBody> {
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
                if (P10PROGRESSVAR.isExpanded = true) {
                  P10PROGRESSVAR.isExpanded = !P10PROGRESSVAR.isExpanded;
                } else {}
                // CuPage = Page9();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page9());
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
                // CuPage = Page9();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page9());
              },
              child: Text(
                'SELECT BRANCH',
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
                      '${USERDATA.BRANCH} : SELECT ACTION',
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
                          child: Column(
                            children: [
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P10PROGRESSVAR.isHoveredINCOMING = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P10PROGRESSVAR.isHoveredINCOMING = false;
                                  });
                                },
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      P10PROGRESSVAR.isExpanded =
                                          !P10PROGRESSVAR.isExpanded;
                                    });
                                    USERDATA.ACTION = 'INCOMING';
                                    print(USERDATA.ACTION);
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 100),
                                    height: P10PROGRESSVAR.isHoveredINCOMING
                                        ? 55
                                        : 50,
                                    width: P10PROGRESSVAR.isHoveredINCOMING
                                        ? 420
                                        : 400,
                                    decoration: BoxDecoration(
                                      color: P10PROGRESSVAR.isHoveredINCOMING
                                          ? Colors.greenAccent
                                          : Colors.green,
                                      border: Border.all(
                                          color: Colors.black, width: 2.0),
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
                              AnimatedOpacity(
                                opacity: P10PROGRESSVAR.isExpanded ? 1.0 : 0.0,
                                duration: Duration(milliseconds: 500),
                                child: Visibility(
                                  visible: P10PROGRESSVAR.isExpanded,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green.shade900,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 1.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              'SELECT PLANT :',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        if (USERDATA.BRANCH == 'BP12')
                                          Column(
                                            children: [
                                              MouseRegion(
                                                onEnter: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12GAS =
                                                        true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12GAS =
                                                        false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredBP12GAS =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER.BPGAS;
                                                      USERDATA.PLANT = 'GAS';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredBP12GAS
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredBP12GAS
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredBP12GAS
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'GAS',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              MouseRegion(
                                                onEnter: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12PHO =
                                                        true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12PHO =
                                                        false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredBP12PHO =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER.BPPHO;
                                                      USERDATA.PLANT = 'PHO';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredBP12PHO
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredBP12PHO
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredBP12PHO
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'PHO',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              MouseRegion(
                                                onEnter: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12PAL =
                                                        true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12PAL =
                                                        false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredBP12PAL =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER.BPPAL;
                                                      USERDATA.PLANT = 'PAL';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredBP12PAL
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredBP12PAL
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredBP12PAL
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'PAL',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              MouseRegion(
                                                onEnter: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12KNG =
                                                        true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12KNG =
                                                        false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredBP12KNG =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER.BPKNG;
                                                      USERDATA.PLANT = 'KNG';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredBP12KNG
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredBP12KNG
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredBP12KNG
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'KNG',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              MouseRegion(
                                                onEnter: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12PVD =
                                                        true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredBP12PVD =
                                                        false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredBP12PVD =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER.BPPVD;
                                                      USERDATA.PLANT = 'PVD';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredBP12PVD
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredBP12PVD
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredBP12PVD
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'PVD',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        if (USERDATA.BRANCH == 'GW')
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 1.0),
                                                child: MouseRegion(
                                                  onEnter: (_) {
                                                    setState(() {
                                                      P10PROGRESSVAR
                                                              .isHoveredGWOLD =
                                                          true;
                                                    });
                                                  },
                                                  onExit: (_) {
                                                    setState(() {
                                                      P10PROGRESSVAR
                                                              .isHoveredGWOLD =
                                                          false;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            1.5),
                                                    child: InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          P10PROGRESSVAR
                                                                  .isHoveredGWOLD =
                                                              false;
                                                          P10PROGRESSVAR
                                                                  .isExpanded =
                                                              !P10PROGRESSVAR
                                                                  .isExpanded;
                                                        });
                                                        USERDATA.PLANTNUMBER =
                                                            PLANTNUMBER.GWOLD;
                                                        USERDATA.PLANT =
                                                            'GW OLD';
                                                        print(USERDATA.PLANT);
                                                        print(USERDATA
                                                            .PLANTNUMBER);
                                                        if (USERDATA.ACTION ==
                                                            'INCOMING') {
                                                          // CuPage = Page13();
                                                          // MainBodyContext.read<
                                                          //         ChangePage_Bloc>()
                                                          //     .add(
                                                          //         ChangePage_nodrower());
                                                          MainBodyContext.read<
                                                                  ChangePage_Bloc>()
                                                              .ChangePage_nodrower(
                                                                  '', Page13());
                                                        } else {}
                                                      },
                                                      child: AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds: 100),
                                                        height: P10PROGRESSVAR
                                                                .isHoveredGWOLD
                                                            ? 30
                                                            : 30,
                                                        width: P10PROGRESSVAR
                                                                .isHoveredGWOLD
                                                            ? 300
                                                            : 300,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: P10PROGRESSVAR
                                                                  .isHoveredGWOLD
                                                              ? Colors
                                                                  .greenAccent
                                                              : Colors.green
                                                                  .shade200,
                                                          border: Border.all(
                                                            color: Colors.black,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'GW OLD',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14),
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
                                                    P10PROGRESSVAR
                                                        .isHoveredGWNEW = true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                        .isHoveredGWNEW = false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredGWNEW =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER.GWNEW;
                                                      USERDATA.PLANT = 'GW NEW';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredGWNEW
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredGWNEW
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredGWNEW
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'GW NEW',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        if (USERDATA.BRANCH == 'ESIE1')
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 1.0),
                                                child: MouseRegion(
                                                  onEnter: (_) {
                                                    setState(() {
                                                      P10PROGRESSVAR
                                                              .isHoveredESIE1PHO =
                                                          true;
                                                    });
                                                  },
                                                  onExit: (_) {
                                                    setState(() {
                                                      P10PROGRESSVAR
                                                              .isHoveredESIE1PHO =
                                                          false;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            1.5),
                                                    child: InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          P10PROGRESSVAR
                                                                  .isHoveredESIE1PHO =
                                                              false;
                                                          P10PROGRESSVAR
                                                                  .isExpanded =
                                                              !P10PROGRESSVAR
                                                                  .isExpanded;
                                                        });
                                                        USERDATA.PLANTNUMBER =
                                                            PLANTNUMBER
                                                                .ESIE1PHO;
                                                        USERDATA.PLANT = 'PHO';
                                                        print(USERDATA.PLANT);
                                                        print(USERDATA
                                                            .PLANTNUMBER);
                                                        if (USERDATA.ACTION ==
                                                            'INCOMING') {
                                                          // CuPage = Page13();
                                                          // MainBodyContext.read<
                                                          //         ChangePage_Bloc>()
                                                          //     .add(
                                                          //         ChangePage_nodrower());
                                                          MainBodyContext.read<
                                                                  ChangePage_Bloc>()
                                                              .ChangePage_nodrower(
                                                                  '', Page13());
                                                        } else {}
                                                      },
                                                      child: AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds: 100),
                                                        height: P10PROGRESSVAR
                                                                .isHoveredESIE1PHO
                                                            ? 30
                                                            : 30,
                                                        width: P10PROGRESSVAR
                                                                .isHoveredESIE1PHO
                                                            ? 300
                                                            : 300,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: P10PROGRESSVAR
                                                                  .isHoveredESIE1PHO
                                                              ? Colors
                                                                  .greenAccent
                                                              : Colors.green
                                                                  .shade200,
                                                          border: Border.all(
                                                            color: Colors.black,
                                                            width: 2.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'PHO',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14),
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
                                                    P10PROGRESSVAR
                                                            .isHoveredESIE1PAL =
                                                        true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredESIE1PAL =
                                                        false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredESIE1PAL =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER.ESIE1PAL;
                                                      USERDATA.PLANT = 'PAL';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredESIE1PAL
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredESIE1PAL
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredESIE1PAL
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'PAL',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              MouseRegion(
                                                onEnter: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredESIE1ISN =
                                                        true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredESIE1ISN =
                                                        false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredESIE1ISN =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER.ESIE1ISN;
                                                      USERDATA.PLANT = 'ISN';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredESIE1ISN
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredESIE1ISN
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredESIE1ISN
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'ISN',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              MouseRegion(
                                                onEnter: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredESIE1GASNON =
                                                        true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredESIE1GASNON =
                                                        false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredESIE1GASNON =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER
                                                              .ESIE1GASNON;
                                                      USERDATA.PLANT =
                                                          'GAS NONBOI';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredESIE1GASNON
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredESIE1GASNON
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredESIE1GASNON
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'GAS NONBOI',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              MouseRegion(
                                                onEnter: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredESIE1GASBOI =
                                                        true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    P10PROGRESSVAR
                                                            .isHoveredESIE1GASBOI =
                                                        false;
                                                  });
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(1.5),
                                                  child: InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        P10PROGRESSVAR
                                                                .isHoveredESIE1GASBOI =
                                                            false;
                                                        P10PROGRESSVAR
                                                                .isExpanded =
                                                            !P10PROGRESSVAR
                                                                .isExpanded;
                                                      });
                                                      USERDATA.PLANTNUMBER =
                                                          PLANTNUMBER
                                                              .ESIE1GASBOI;
                                                      USERDATA.PLANT =
                                                          'GAS BOI';
                                                      print(USERDATA.PLANT);
                                                      print(
                                                          USERDATA.PLANTNUMBER);
                                                      if (USERDATA.ACTION ==
                                                          'INCOMING') {
                                                        // CuPage = Page13();
                                                        // MainBodyContext.read<
                                                        //         ChangePage_Bloc>()
                                                        //     .add(
                                                        //         ChangePage_nodrower());
                                                        MainBodyContext.read<
                                                                ChangePage_Bloc>()
                                                            .ChangePage_nodrower(
                                                                '', Page13());
                                                      } else {}
                                                    },
                                                    child: AnimatedContainer(
                                                      duration: Duration(
                                                          milliseconds: 100),
                                                      height: P10PROGRESSVAR
                                                              .isHoveredESIE1GASBOI
                                                          ? 30
                                                          : 30,
                                                      width: P10PROGRESSVAR
                                                              .isHoveredESIE1GASBOI
                                                          ? 300
                                                          : 300,
                                                      decoration: BoxDecoration(
                                                        color: P10PROGRESSVAR
                                                                .isHoveredESIE1GASBOI
                                                            ? Colors.greenAccent
                                                            : Colors
                                                                .green.shade200,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'GAS BOI',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14),
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
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                P10PROGRESSVAR.isHoveredPLANNING = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                P10PROGRESSVAR.isHoveredPLANNING = false;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  P10PROGRESSVAR.isHoveredPLANNING = false;
                                });
                                USERDATA.ACTION = 'PLANNING';
                                print(USERDATA.ACTION);
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                height:
                                    P10PROGRESSVAR.isHoveredPLANNING ? 55 : 50,
                                width: P10PROGRESSVAR.isHoveredPLANNING
                                    ? 420
                                    : 400,
                                decoration: BoxDecoration(
                                  color: P10PROGRESSVAR.isHoveredPLANNING
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
                                P10PROGRESSVAR.isHoveredSTATUS = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                P10PROGRESSVAR.isHoveredSTATUS = false;
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  P10PROGRESSVAR.isHoveredSTATUS = false;
                                });
                                USERDATA.ACTION = 'STATUS';
                                print(USERDATA.ACTION);
                                if (USERDATA.BRANCH == 'BP12') {
                                  // CuPage = Page2();
                                  // MainBodyContext.read<ChangePage_Bloc>()
                                  //     .add(ChangePage_nodrower());
                                  MainBodyContext.read<ChangePage_Bloc>()
                                      .ChangePage_nodrower('', Page2());
                                } else if (USERDATA.BRANCH == 'GW') {
                                  // CuPage = Page4();
                                  // MainBodyContext.read<ChangePage_Bloc>()
                                  //     .add(ChangePage_nodrower());
                                  MainBodyContext.read<ChangePage_Bloc>()
                                      .ChangePage_nodrower('', Page4());
                                } else if (USERDATA.BRANCH == 'ESIE1') {
                                  // CuPage = Page1();
                                  // MainBodyContext.read<ChangePage_Bloc>()
                                  //     .add(ChangePage_nodrower());
                                  MainBodyContext.read<ChangePage_Bloc>()
                                      .ChangePage_nodrower('', Page1());
                                }
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                height:
                                    P10PROGRESSVAR.isHoveredSTATUS ? 55 : 50,
                                width:
                                    P10PROGRESSVAR.isHoveredSTATUS ? 420 : 400,
                                decoration: BoxDecoration(
                                  color: P10PROGRESSVAR.isHoveredSTATUS
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
