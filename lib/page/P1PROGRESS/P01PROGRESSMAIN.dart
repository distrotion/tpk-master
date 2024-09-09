// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/01-01-P01PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page10.dart';
import '../page16.dart';
import '../page7.dart';
import '../page8.dart';
import '../page9.dart';
import 'P01PROGRESSVAR.dart';

late BuildContext P01PROGRESSMAINcontext;

class P01PROGRESSMAIN extends StatefulWidget {
  P01PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P01PROGRESSGETDATAclass>? data;

  @override
  State<P01PROGRESSMAIN> createState() => _P01PROGRESSMAINState();
}

class _P01PROGRESSMAINState extends State<P01PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P01PROGRESSGETDATA_Bloc>().add(P01PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    P01PROGRESSMAINcontext = context;
    List<P01PROGRESSGETDATAclass> _datain = widget.data ?? [];
    // print(_datain);
    // Group data by PLANT
    Map<String, List<P01PROGRESSGETDATAclass>> groupedData = {};
    for (var item in _datain) {
      if (groupedData.containsKey(item.PLANT)) {
        groupedData[item.PLANT]!.add(item);
        // print(groupedData.containsKey(item.PLANT)); //ข้อมูลซ้ำกันขึ้น true
      } else {
        groupedData[item.PLANT] = [item];
        // print(groupedData[item.PLANT] = [item]); //ข้อมูลไม่มีซ้ำกัน
      }
    }

    return SingleChildScrollView(
      child: Stack(
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
          Positioned(
            top: 20,
            left: 221,
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
            left: 219,
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
            top: 10,
            right: 50,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<P01PROGRESSGETDATA_Bloc>()
                        .add(P01PROGRESSGETDATA_GET());
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
                      'ESIE1 : PROGRESS',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "PLANT",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "Setting",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "Line",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "S/B",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "QC",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "Packing",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "1200",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "1400",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "1600",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal.shade500,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.black,
                    ),
                    height: 40,
                    width: 100,
                    child: Center(
                        child: Text(
                      "1800",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
              ]),
              ...groupedData.entries.map((_data) {
                // print(groupedData);
                String plant = _data.key;
                // print(_data.key); //.key คือชื่อ plant (PHO,GAS,ISONITE,DELTA)
                List<P01PROGRESSGETDATAclass> steps = _data.value;
                // print(_data.value); //.value คือ Arrey
                bool step01Complete = steps.any((step) => step.STEP01 == 'YES');
                bool step02Complete = steps.any((step) => step.STEP02 == 'YES');
                bool step03Complete = steps.any((step) => step.STEP03 == 'YES');
                bool step05Complete = steps.any((step) => step.STEP05 == 'YES');
                bool step06Complete = steps.any((step) => step.STEP06 == 'YES');
                bool step07Complete = steps.any((step) => step.STEP07 == 'YES');
                bool step08Complete = steps.any((step) => step.STEP08 == 'YES');
                bool step09Complete = steps.any((step) => step.STEP09 == 'YES');
                // print(step01Complete); //ถ้า YES จะเป็น true
                int transactionsCount1 = _getPlantTransactionsCount(plant, 1);
                int transactionsCount2 = _getPlantTransactionsCount(plant, 2);
                int transactionsCount3 = _getPlantTransactionsCount(plant, 3);
                int transactionsCount5 = _getPlantTransactionsCount(plant, 5);
                int transactionsCount6 = _getPlantTransactionsCount(plant, 6);
                int transactionsCount7 = _getPlantTransactionsCount(plant, 7);
                int transactionsCount8 = _getPlantTransactionsCount(plant, 8);
                int transactionsCount9 = _getPlantTransactionsCount(plant, 9);
                // print(transactionsCount1);
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              color: Colors.teal.shade500,
                            ),
                            height: 80,
                            width: 100,
                            child: Center(
                                child: Text(
                              plant,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ))),
                        AbsorbPointer(
                          absorbing:
                              !step01Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                          child: InkWell(
                            onTap: () {
                              print(_data.value[0].LOCATION);
                              print(_data.value[0].PLANT);
                              if (step01Complete) {
                                P01PROGRESSVAR.sendLocation =
                                    _data.value[0].LOCATION;
                                P01PROGRESSVAR.sendPlant = _data.value[0].PLANT;
                                P01PROGRESSVAR.changeStep = 'step1';
                                print(P01PROGRESSVAR.changeStep);
                                print("$transactionsCount1 transactions");
                                // CuPage = Page7();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());

                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page7());
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: step01Complete
                                    ? Colors.greenAccent
                                    : Colors.grey.shade400,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 80,
                              width: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(transactionsCount1.toString()),
                                    Text(
                                      " transactions",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        AbsorbPointer(
                          absorbing:
                              !step02Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                          child: InkWell(
                            onTap: () {
                              print(_data.value[0].LOCATION);
                              print(_data.value[0].PLANT);
                              if (step02Complete) {
                                P01PROGRESSVAR.sendLocation =
                                    _data.value[0].LOCATION;
                                P01PROGRESSVAR.sendPlant = _data.value[0].PLANT;
                                P01PROGRESSVAR.changeStep = 'step2';
                                print(P01PROGRESSVAR.changeStep);
                                print("$transactionsCount2 transactions");
                                // CuPage = Page7();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page7());
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: step02Complete
                                    ? Colors.greenAccent
                                    : Colors.grey.shade400,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 80,
                              width: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(transactionsCount2.toString()),
                                    Text(
                                      " transactions",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        AbsorbPointer(
                          absorbing:
                              !step03Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                          child: InkWell(
                            onTap: () {
                              print(_data.value[0].LOCATION);
                              print(_data.value[0].PLANT);
                              if (step03Complete) {
                                P01PROGRESSVAR.sendLocation =
                                    _data.value[0].LOCATION;
                                P01PROGRESSVAR.sendPlant = _data.value[0].PLANT;
                                P01PROGRESSVAR.changeStep = 'step3';
                                print(P01PROGRESSVAR.changeStep);
                                print("$transactionsCount3 transactions");
                                // CuPage = Page7();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page7());
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: step03Complete
                                    ? Colors.greenAccent
                                    : Colors.grey.shade400,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 80,
                              width: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(transactionsCount3.toString()),
                                    Text(
                                      " transactions",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              if (_data.value[0].PLANT == 'PHO' &&
                                  P01PROGRESSVAR.PHOdata.isNotEmpty) {
                                P01PROGRESSVAR.isHoveredQCPHO = true;
                              } else if (_data.value[0].PLANT == 'GASNON' &&
                                  P01PROGRESSVAR.GASNONdata.isNotEmpty) {
                                P01PROGRESSVAR.isHoveredQCGASNON = true;
                              } else if (_data.value[0].PLANT == 'GASBOI' &&
                                  P01PROGRESSVAR.GASBOIdata.isNotEmpty) {
                                P01PROGRESSVAR.isHoveredQCGASBOI = true;
                              } else if (_data.value[0].PLANT == 'ISN' &&
                                  P01PROGRESSVAR.ISNdata.isNotEmpty) {
                                P01PROGRESSVAR.isHoveredQCISN = true;
                              } else if (_data.value[0].PLANT == 'PAL' &&
                                  P01PROGRESSVAR.PALdata.isNotEmpty) {
                                P01PROGRESSVAR.isHoveredQCPAL = true;
                              }
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              P01PROGRESSVAR.isHoveredQCPHO = false;
                              P01PROGRESSVAR.isHoveredQCGASNON = false;
                              P01PROGRESSVAR.isHoveredQCGASBOI = false;
                              P01PROGRESSVAR.isHoveredQCISN = false;
                              P01PROGRESSVAR.isHoveredQCPAL = false;
                            });
                          },
                          child: InkWell(
                            onTap: (_data.value[0].PLANT == 'PHO' &&
                                        P01PROGRESSVAR.PHOdata.isEmpty) ||
                                    (_data.value[0].PLANT == 'GASNON' &&
                                        P01PROGRESSVAR.GASNONdata.isEmpty) ||
                                    (_data.value[0].PLANT == 'GASBOI' &&
                                        P01PROGRESSVAR.GASBOIdata.isEmpty) ||
                                    (_data.value[0].PLANT == 'ISN' &&
                                        P01PROGRESSVAR.ISNdata.isEmpty) ||
                                    (_data.value[0].PLANT == 'PAL' &&
                                        P01PROGRESSVAR.PALdata.isEmpty)
                                ? null
                                : () {
                                    if (_data.value[0].PLANT == 'PHO') {
                                      USERDATA.PLANTNUMBER =
                                          PLANTNUMBER.ESIE1PHO;
                                    } else if (_data.value[0].PLANT ==
                                        'GASNON') {
                                      USERDATA.PLANTNUMBER =
                                          PLANTNUMBER.ESIE1GASNON;
                                    } else if (_data.value[0].PLANT ==
                                        'GASBOI') {
                                      USERDATA.PLANTNUMBER =
                                          PLANTNUMBER.ESIE1GASBOI;
                                    } else if (_data.value[0].PLANT == 'ISN') {
                                      USERDATA.PLANTNUMBER =
                                          PLANTNUMBER.ESIE1ISN;
                                    } else if (_data.value[0].PLANT == 'PAL') {
                                      USERDATA.PLANTNUMBER =
                                          PLANTNUMBER.ESIE1PAL;
                                    }
                                    setState(() {
                                      P01PROGRESSVAR.isHoveredQCPHO = false;
                                      P01PROGRESSVAR.isHoveredQCGASNON = false;
                                      P01PROGRESSVAR.isHoveredQCGASBOI = false;
                                      P01PROGRESSVAR.isHoveredQCISN = false;
                                      P01PROGRESSVAR.isHoveredQCPAL = false;
                                    });
                                    USERDATA.PLANT = _data.value[0].PLANT;
                                    print(USERDATA.PLANT);
                                    // CuPage = Page16();
                                    // MainBodyContext.read<ChangePage_Bloc>()
                                    //     .add(ChangePage_nodrower());
                                    MainBodyContext.read<ChangePage_Bloc>()
                                        .ChangePage_nodrower('', Page16());
                                  },
                            child: Container(
                              decoration: BoxDecoration(
                                color: (() {
                                  if (_data.value[0].PLANT == 'PHO') {
                                    return P01PROGRESSVAR.isHoveredQCPHO
                                        ? Colors.lightGreenAccent.shade400
                                        : (P01PROGRESSVAR.PHOdata.isNotEmpty
                                            ? Colors.greenAccent
                                            : Colors.grey.shade400);
                                  } else if (_data.value[0].PLANT == 'GASNON') {
                                    return P01PROGRESSVAR.isHoveredQCGASNON
                                        ? Colors.lightGreenAccent.shade400
                                        : (P01PROGRESSVAR.GASNONdata.isNotEmpty
                                            ? Colors.greenAccent
                                            : Colors.grey.shade400);
                                  } else if (_data.value[0].PLANT == 'GASBOI') {
                                    return P01PROGRESSVAR.isHoveredQCGASBOI
                                        ? Colors.lightGreenAccent.shade400
                                        : (P01PROGRESSVAR.GASBOIdata.isNotEmpty
                                            ? Colors.greenAccent
                                            : Colors.grey.shade400);
                                  } else if (_data.value[0].PLANT == 'ISN') {
                                    return P01PROGRESSVAR.isHoveredQCISN
                                        ? Colors.lightGreenAccent.shade400
                                        : (P01PROGRESSVAR.ISNdata.isNotEmpty
                                            ? Colors.greenAccent
                                            : Colors.grey.shade400);
                                  } else if (_data.value[0].PLANT == 'PAL') {
                                    return P01PROGRESSVAR.isHoveredQCPAL
                                        ? Colors.lightGreenAccent.shade400
                                        : (P01PROGRESSVAR.PALdata.isNotEmpty
                                            ? Colors.greenAccent
                                            : Colors.grey.shade400);
                                  } else {
                                    return Colors.grey.shade400;
                                  }
                                })(),
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 80,
                              width: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      (() {
                                        if (_data.value[0].PLANT == "PHO") {
                                          return P01PROGRESSVAR.PHOdata.length
                                              .toString();
                                        } else if (_data.value[0].PLANT ==
                                            "GASNON") {
                                          return P01PROGRESSVAR
                                              .GASNONdata.length
                                              .toString();
                                        } else if (_data.value[0].PLANT ==
                                            "GASBOI") {
                                          return P01PROGRESSVAR
                                              .GASBOIdata.length
                                              .toString();
                                        } else if (_data.value[0].PLANT ==
                                            "ISN") {
                                          return P01PROGRESSVAR.ISNdata.length
                                              .toString();
                                        } else if (_data.value[0].PLANT ==
                                            "PAL") {
                                          return P01PROGRESSVAR.PALdata.length
                                              .toString();
                                        } else {
                                          return "0";
                                        }
                                      })(),
                                    ),
                                    Text(
                                      " transactions",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        AbsorbPointer(
                          absorbing:
                              !step05Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                          child: InkWell(
                            onTap: () {
                              print(_data.value[0].LOCATION);
                              print(_data.value[0].PLANT);
                              if (step05Complete) {
                                P01PROGRESSVAR.sendLocation =
                                    _data.value[0].LOCATION;
                                P01PROGRESSVAR.sendPlant = _data.value[0].PLANT;
                                P01PROGRESSVAR.changeStep = 'step5';
                                print(P01PROGRESSVAR.changeStep);
                                print("$transactionsCount5 transactions");
                                // CuPage = Page7();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page7());
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: step05Complete
                                    ? Colors.greenAccent
                                    : Colors.grey.shade400,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 80,
                              width: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(transactionsCount5.toString()),
                                    Text(
                                      " transactions",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        AbsorbPointer(
                          absorbing:
                              !step06Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                          child: InkWell(
                            onTap: () {
                              print(_data.value[0].LOCATION);
                              print(_data.value[0].PLANT);
                              if (step06Complete) {
                                P01PROGRESSVAR.sendLocation =
                                    _data.value[0].LOCATION;
                                P01PROGRESSVAR.sendPlant = _data.value[0].PLANT;
                                P01PROGRESSVAR.changeStep = 'step6';
                                print(P01PROGRESSVAR.changeStep);
                                print("$transactionsCount6 transactions");
                                // CuPage = Page7();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page7());
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: step06Complete
                                    ? Colors.greenAccent
                                    : Colors.grey.shade400,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 80,
                              width: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(transactionsCount6.toString()),
                                    Text(
                                      " transactions",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        AbsorbPointer(
                          absorbing:
                              !step07Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                          child: InkWell(
                            onTap: () {
                              print(_data.value[0].LOCATION);
                              print(_data.value[0].PLANT);
                              if (step07Complete) {
                                P01PROGRESSVAR.sendLocation =
                                    _data.value[0].LOCATION;
                                P01PROGRESSVAR.sendPlant = _data.value[0].PLANT;
                                P01PROGRESSVAR.changeStep = 'step7';
                                print(P01PROGRESSVAR.changeStep);
                                print("$transactionsCount7 transactions");
                                // CuPage = Page7();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page7());
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: step07Complete
                                    ? Colors.greenAccent
                                    : Colors.grey.shade400,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 80,
                              width: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(transactionsCount7.toString()),
                                    Text(
                                      " transactions",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        AbsorbPointer(
                          absorbing:
                              !step08Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                          child: InkWell(
                            onTap: () {
                              print(_data.value[0].LOCATION);
                              print(_data.value[0].PLANT);
                              if (step08Complete) {
                                P01PROGRESSVAR.sendLocation =
                                    _data.value[0].LOCATION;
                                P01PROGRESSVAR.sendPlant = _data.value[0].PLANT;
                                P01PROGRESSVAR.changeStep = 'step8';
                                print(P01PROGRESSVAR.changeStep);
                                print("$transactionsCount8 transactions");
                                // CuPage = Page7();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page7());
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: step08Complete
                                    ? Colors.greenAccent
                                    : Colors.grey.shade400,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 80,
                              width: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(transactionsCount8.toString()),
                                    Text(
                                      " transactions",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        AbsorbPointer(
                          absorbing:
                              !step09Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                          child: InkWell(
                            onTap: () {
                              print(_data.value[0].LOCATION);
                              print(_data.value[0].PLANT);
                              if (step09Complete) {
                                P01PROGRESSVAR.sendLocation =
                                    _data.value[0].LOCATION;
                                P01PROGRESSVAR.sendPlant = _data.value[0].PLANT;
                                P01PROGRESSVAR.changeStep = 'step9';
                                print(P01PROGRESSVAR.changeStep);
                                print("$transactionsCount9 transactions");
                                // CuPage = Page7();
                                // MainBodyContext.read<ChangePage_Bloc>()
                                //     .add(ChangePage_nodrower());
                                MainBodyContext.read<ChangePage_Bloc>()
                                    .ChangePage_nodrower('', Page7());
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: step09Complete
                                    ? Colors.greenAccent
                                    : Colors.grey.shade400,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              height: 80,
                              width: 100,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(transactionsCount9.toString()),
                                    Text(
                                      " transactions",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 5),
                  ],
                );
              })
            ],
          ),
        ],
      ),
    );
  }

  int _getPlantTransactionsCount(String plant, int step) {
    return widget.data?.where((item) {
          switch (step) {
            case 1:
              return item.PLANT == plant && item.STEP01 == 'YES';
            case 2:
              return item.PLANT == plant && item.STEP02 == 'YES';
            case 3:
              return item.PLANT == plant && item.STEP03 == 'YES';
            case 4:
              return item.PLANT == plant && item.STEP04 == 'YES';
            case 5:
              return item.PLANT == plant && item.STEP05 == 'YES';
            case 6:
              return item.PLANT == plant && item.STEP06 == 'YES';
            case 7:
              return item.PLANT == plant && item.STEP07 == 'YES';
            case 8:
              return item.PLANT == plant && item.STEP08 == 'YES';
            case 9:
              return item.PLANT == plant && item.STEP09 == 'YES';
            default:
              return false;
          }
        }).length ??
        0;
  }
}
