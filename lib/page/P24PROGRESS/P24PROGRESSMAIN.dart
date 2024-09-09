// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/P19-P25ORDERFROMPLANT.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page10.dart';
import '../page18.dart';
import '../page26.dart';
import '../page8.dart';
import 'P24PROGRESSVAR.dart';

class P24PROGRESSMAIN extends StatefulWidget {
  P24PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;

  @override
  State<P24PROGRESSMAIN> createState() => _P24PROGRESSMAINState();
}

class _P24PROGRESSMAINState extends State<P24PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P19PROGRESSGETDATA_Bloc>().add(P19PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    CONTEXTFORUSEPAGE19TO25.LOADINGcontext = context;
    List<P19PROGRESSGETDATAclass> _datain = widget.data ?? [];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              onPressed: () {
                // CuPage = Page18();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page18());
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
                // CuPage = Page10();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page10());
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
          Positioned(
            top: 20,
            left: 217,
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
            left: 215,
            child: TextButton(
              onPressed: () {
                // CuPage = Page18();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page18());
              },
              child: Text(
                'SELECT PLANT',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 50,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<P19PROGRESSGETDATA_Bloc>()
                        .add(P19PROGRESSGETDATA_GET());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: Colors.black,
                  ),
                  child: const Icon(
                    Icons.refresh_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Refresh',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
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
                      USERDATA.PLANTNAME + ' : SELECT TANK',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              ..._datain.map((_data) {
                return Expanded(
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
                                    P24PROGRESSVAR.isHoveredPM1 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM1 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM1 = false;
                                      });
                                      USERDATA.TANK = 'PM1';
                                      USERDATA.ORDER = _data.PM1ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM1
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM1
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM1
                                              ? [Colors.grey, Colors.blueGrey]
                                              : [Colors.blue, Colors.lightBlue],
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM1',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM1ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM2 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM2 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM2 = false;
                                      });
                                      USERDATA.TANK = 'PM2';
                                      USERDATA.ORDER = _data.PM2ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM2
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM2
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM2
                                              ? [Colors.grey, Colors.blueGrey]
                                              : [Colors.blue, Colors.lightBlue],
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM2',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM2ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM3 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM3 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM3 = false;
                                      });
                                      USERDATA.TANK = 'PM3';
                                      USERDATA.ORDER = _data.PM3ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM3
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM3
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM3
                                              ? [Colors.grey, Colors.blueGrey]
                                              : [Colors.blue, Colors.lightBlue],
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM3',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM3ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM4 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM4 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM4 = false;
                                      });
                                      USERDATA.TANK = 'PM4';
                                      USERDATA.ORDER = _data.PM4ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM4
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM4
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM4
                                              ? [Colors.grey, Colors.blueGrey]
                                              : [Colors.blue, Colors.lightBlue],
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM4',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM4ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM5 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM5 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM5 = false;
                                      });
                                      USERDATA.TANK = 'PM5';
                                      USERDATA.ORDER = _data.PM5ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM5
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM5
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM5
                                              ? [Colors.grey, Colors.blueGrey]
                                              : [Colors.blue, Colors.lightBlue],
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM5',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM5ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM6 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM6 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM6 = false;
                                      });
                                      USERDATA.TANK = 'PM6';
                                      USERDATA.ORDER = _data.PM6ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM6
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM6
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM6
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM6',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM6ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: [
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM7 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM7 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM7 = false;
                                      });
                                      USERDATA.TANK = 'PM7';
                                      USERDATA.ORDER = _data.PM7ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM7
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM7
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM7
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM7',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM7ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM8 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM8 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM8 = false;
                                      });
                                      USERDATA.TANK = 'PM8';
                                      USERDATA.ORDER = _data.PM8ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM8
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM8
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM8
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM8',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM8ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM9 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM9 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM9 = false;
                                      });
                                      USERDATA.TANK = 'PM9';
                                      USERDATA.ORDER = _data.PM9ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM9
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM9
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM9
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM9',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM9ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM10 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM10 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM10 = false;
                                      });
                                      USERDATA.TANK = 'PM10';
                                      USERDATA.ORDER = _data.PM10ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM10
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM10
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM10
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM10',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM10ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM11 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM11 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM11 = false;
                                      });
                                      USERDATA.TANK = 'PM11';
                                      USERDATA.ORDER = _data.PM11ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM11
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM11
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM11
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM11',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM11ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM12 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM12 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM12 = false;
                                      });
                                      USERDATA.TANK = 'PM12';
                                      USERDATA.ORDER = _data.PM12ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM12
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM12
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM12
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM12',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM12ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: [
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM13 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM13 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM13 = false;
                                      });
                                      USERDATA.TANK = 'PM13';
                                      USERDATA.ORDER = _data.PM13ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM13
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM13
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM13
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM13',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM13ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM14 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM14 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM14 = false;
                                      });
                                      USERDATA.TANK = 'PM14';
                                      USERDATA.ORDER = _data.PM14ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM14
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM14
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM14
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM14',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM14ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM15 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM15 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM15 = false;
                                      });
                                      USERDATA.TANK = 'PM15';
                                      USERDATA.ORDER = _data.PM15ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM15
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM15
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM15
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM15',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM15ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM16 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM16 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM16 = false;
                                      });
                                      USERDATA.TANK = 'PM16';
                                      USERDATA.ORDER = _data.PM16ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM16
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM16
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM16
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM16',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM16ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM17 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P24PROGRESSVAR.isHoveredPM17 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        P24PROGRESSVAR.isHoveredPM17 = false;
                                      });
                                      USERDATA.TANK = 'PM17';
                                      USERDATA.ORDER = _data.PM17ORDER;
                                      print(USERDATA.TANK);
                                      print(USERDATA.ORDER);
                                      // CuPage = Page26();
                                      // MainBodyContext.read<ChangePage_Bloc>()
                                      //     .add(ChangePage_nodrower());
                                      MainBodyContext.read<ChangePage_Bloc>()
                                          .ChangePage_nodrower('', Page26());
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      height: P24PROGRESSVAR.isHoveredPM17
                                          ? 170
                                          : 150,
                                      width: P24PROGRESSVAR.isHoveredPM17
                                          ? 170
                                          : 150,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: P24PROGRESSVAR.isHoveredPM17
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
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TANK : PM17',
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
                                            SizedBox(height: 8),
                                            Text(
                                              'Order : ${_data.PM17ORDER}',
                                              style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16,
                                                shadows: const [
                                                  Shadow(
                                                    blurRadius: 5.0,
                                                    color: Colors.black45,
                                                    offset: Offset(2, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                );
              })
            ],
          ),
        ],
      ),
    );
  }
}
