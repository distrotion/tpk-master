// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/03-01-P03PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../P1PROGRESS/P01PROGRESSVAR.dart';
import '../page10.dart';
import '../page7.dart';

class P03PROGRESSMAIN extends StatefulWidget {
  P03PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P03PROGRESSGETDATAclass>? data;

  @override
  State<P03PROGRESSMAIN> createState() => _P03PROGRESSMAINState();
}

class _P03PROGRESSMAINState extends State<P03PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P03PROGRESSGETDATA_Bloc>().add(P03PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    List<P03PROGRESSGETDATAclass> _datain = widget.data ?? [];

    // Group data by PLANT
    Map<String, List<P03PROGRESSGETDATAclass>> groupedData = {};
    for (var item in _datain) {
      if (groupedData.containsKey(item.PLANT)) {
        groupedData[item.PLANT]!.add(item);
      } else {
        groupedData[item.PLANT] = [item];
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
                      'BP SOI 8 : PROGRESS',
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
                List<P03PROGRESSGETDATAclass> steps = _data.value;
                // print(_data.value); //.value คือ Arrey
                bool step01Complete = steps.any((step) => step.STEP01 == 'YES');
                bool step02Complete = steps.any((step) => step.STEP02 == 'YES');
                bool step03Complete = steps.any((step) => step.STEP03 == 'YES');
                bool step04Complete = steps.any((step) => step.STEP04 == 'YES');
                bool step05Complete = steps.any((step) => step.STEP05 == 'YES');
                bool step06Complete = steps.any((step) => step.STEP06 == 'YES');
                bool step07Complete = steps.any((step) => step.STEP07 == 'YES');
                bool step08Complete = steps.any((step) => step.STEP08 == 'YES');
                bool step09Complete = steps.any((step) => step.STEP09 == 'YES');
                // print(step01Complete); //ถ้า YES จะเป็น true
                int transactionsCount1 = _getPlantTransactionsCount(plant, 1);
                int transactionsCount2 = _getPlantTransactionsCount(plant, 2);
                int transactionsCount3 = _getPlantTransactionsCount(plant, 3);
                int transactionsCount4 = _getPlantTransactionsCount(plant, 4);
                int transactionsCount5 = _getPlantTransactionsCount(plant, 5);
                int transactionsCount6 = _getPlantTransactionsCount(plant, 6);
                int transactionsCount7 = _getPlantTransactionsCount(plant, 7);
                int transactionsCount8 = _getPlantTransactionsCount(plant, 8);
                int transactionsCount9 = _getPlantTransactionsCount(plant, 9);
                // print(transactionsCount1);
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: Colors.teal.shade500,
                        ),
                        height: 80,
                        width: 100,
                        child: Center(
                            child: Text(
                          plant,
                          style: TextStyle(color: Colors.white),
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
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
                    AbsorbPointer(
                      absorbing:
                          !step04Complete, // ถ้าไม่ครบจะทำให้ไม่สามารถกดได้
                      child: InkWell(
                        onTap: () {
                          print(_data.value[0].LOCATION);
                          print(_data.value[0].PLANT);
                          if (step04Complete) {
                            P01PROGRESSVAR.sendLocation =
                                _data.value[0].LOCATION;
                            P01PROGRESSVAR.sendPlant = _data.value[0].PLANT;
                            P01PROGRESSVAR.changeStep = 'step4';
                            print(P01PROGRESSVAR.changeStep);
                            print("$transactionsCount4 transactions");
                            // CuPage = Page7();
                            // MainBodyContext.read<ChangePage_Bloc>()
                            //     .add(ChangePage_nodrower());
                            MainBodyContext.read<ChangePage_Bloc>()
                                .ChangePage_nodrower('', Page7());
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: step04Complete
                                ? Colors.greenAccent
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80,
                          width: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(transactionsCount4.toString()),
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80,
                          width: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("1200"),
                                Text(
                                  "$transactionsCount6 transactions",
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80,
                          width: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("1400"),
                                Text(
                                  "$transactionsCount7 transactions",
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80,
                          width: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("1600"),
                                Text(
                                  "$transactionsCount8 transactions",
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
                                : Colors.grey.shade500,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 80,
                          width: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("1800"),
                                Text(
                                  "$transactionsCount9 transactions",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
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
