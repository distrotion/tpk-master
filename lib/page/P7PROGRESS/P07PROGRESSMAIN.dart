// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/07-01-P07PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../P1PROGRESS/P01PROGRESSVAR.dart';
import '../page1.dart';
import '../page2.dart';
import '../page4.dart';

class P07PROGRESSMAIN extends StatefulWidget {
  P07PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P07PROGRESSGETDATAclass>? data;

  @override
  State<P07PROGRESSMAIN> createState() => _P07PROGRESSMAINState();
}

class _P07PROGRESSMAINState extends State<P07PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P07PROGRESSGETDATA_Bloc>().add(P07PROGRESSGETDATA_GET());
  }

  @override
  Widget build(BuildContext context) {
    List<P07PROGRESSGETDATAclass> _datain = widget.data ?? [];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              onPressed: () {
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
                      '${P01PROGRESSVAR.sendLocation} : PROGRESS',
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
                      "NO",
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
                      "ORDER",
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
                      "MAT",
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
                      "LOT",
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
                      "CUSTOMER",
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
                      "PART NO.",
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
                      "PART NAME",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
              ]),
              // InkWell(
              //   onDoubleTap: () {
              //     context
              //         .read<P01PROGRESSGETDATA_Bloc>()
              //         .add(P01PROGRESSGETDATA_GET2());
              //   },
              //   onLongPress: () {
              //     context
              //         .read<P01PROGRESSGETDATA_Bloc>()
              //         .add(P01PROGRESSGETDATA_GET3());
              //   },
              //   child: Container(
              //     height: 40,
              //     width: 100,
              //     color: Colors.red,
              //   ),
              // ),
              ..._datain.map((_data) {
                int dataCount = _datain.indexOf(_data) + 1;
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
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          dataCount.toString(),
                          style: TextStyle(color: Colors.white),
                        ))),
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent,
                        ),
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          _data.ORDER,
                          style: TextStyle(color: Colors.black),
                        ))),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.greenAccent),
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          _data.MAT,
                          style: TextStyle(color: Colors.black),
                        ))),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.greenAccent),
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          _data.LOT,
                          style: TextStyle(color: Colors.black),
                        ))),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.greenAccent),
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          _data.CUSTOMER,
                          style: TextStyle(color: Colors.black),
                        ))),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.greenAccent),
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          _data.PARTNO,
                          style: TextStyle(color: Colors.black),
                        ))),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.greenAccent),
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          _data.PARTNAME,
                          style: TextStyle(color: Colors.black),
                        ))),
                  ],
                );
              })
            ],
          ),
        ],
      ),
    );
  }
}
