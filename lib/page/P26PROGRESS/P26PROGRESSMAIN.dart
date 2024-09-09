// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/26-01-P26PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/26-02-P26TANKDATAPACKING.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../widget/common/ComInputTextTan.dart';
import '../../widget/common/Safty.dart';
import '../page10.dart';
import '../page18.dart';
import '../page19.dart';
import '../page20.dart';
import '../page21.dart';
import '../page22.dart';
import '../page23.dart';
import '../page24.dart';
import '../page25.dart';
import '../page8.dart';
import 'P26PROGRESSVAR.dart';

late BuildContext P26PROGRESSMAINcontext;

class P26PROGRESSMAIN extends StatefulWidget {
  P26PROGRESSMAIN({
    super.key,
    this.data,
    this.wg,
  });
  List<P26PROGRESSGETDATAclass>? data;
  P26TANKDATAPACKINGclass? wg;

  @override
  State<P26PROGRESSMAIN> createState() => _P26PROGRESSMAINState();
}

class _P26PROGRESSMAINState extends State<P26PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P26PROGRESSGETDATA_Bloc>().add(P26PROGRESSGETDATA_GET());
    Timer(Duration(seconds: 1), () {
      context.read<P26TANKDATAPACKING_Bloc>().add(P26TANKDATAPACKING_GET());
    });

    P26PROGRESSVAR.iscontrol = true;
    P26PROGRESSVAR.SEARCH = '';
  }

  @override
  Widget build(BuildContext context) {
    P26PROGRESSMAINcontext = context;
    List<P26PROGRESSGETDATAclass> _datain =
        widget.data?.reversed.toList() ?? [];

    P26TANKDATAPACKINGclass _wg = widget.wg ?? P26TANKDATAPACKINGclass();

    final ids = Set();
    _datain.retainWhere((x) =>
        ids.add(x.CHEMICALNAME) |
        ids.add(x.BARCODE) |
        ids.add(x.SP) |
        ids.add(x.ACTUAL));

    List<P26PROGRESSGETDATAclass> _datasearch = [];
    _datasearch.addAll(
      _datain.where(
        (data) =>
            data.CHEMICALNAME.toLowerCase().contains(P26PROGRESSVAR.SEARCH) ||
            data.BARCODE.toLowerCase().contains(P26PROGRESSVAR.SEARCH) ||
            data.SP.toLowerCase().contains(P26PROGRESSVAR.SEARCH) ||
            data.ACTUAL.toLowerCase().contains(P26PROGRESSVAR.SEARCH),
      ),
    );

    double totalActual =
        _datasearch.fold(0.0, (sum, item) => sum + double.parse(item.ACTUAL));
    double totalSP =
        _datasearch.fold(0.0, (sum, item) => sum + double.parse(item.SP));

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              onPressed: () {
                if (USERDATA.PLANTNAME == 'PREMIX') {
                  // CuPage = Page19();
                  // MainBodyContext.read<ChangePage_Bloc>()
                  //     .add(ChangePage_nodrower());
                  MainBodyContext.read<ChangePage_Bloc>()
                      .ChangePage_nodrower('', Page19());
                } else if (USERDATA.PLANTNAME == 'COILCOATING') {
                  // CuPage = Page20();
                  // MainBodyContext.read<ChangePage_Bloc>()
                  //     .add(ChangePage_nodrower());
                  MainBodyContext.read<ChangePage_Bloc>()
                      .ChangePage_nodrower('', Page20());
                } else if (USERDATA.PLANTNAME == 'HYDROPHILIC') {
                  // CuPage = Page21();
                  // MainBodyContext.read<ChangePage_Bloc>()
                  //     .add(ChangePage_nodrower());
                  MainBodyContext.read<ChangePage_Bloc>()
                      .ChangePage_nodrower('', Page21());
                } else if (USERDATA.PLANTNAME == 'PL-X') {
                  // CuPage = Page22();
                  // MainBodyContext.read<ChangePage_Bloc>()
                  //     .add(ChangePage_nodrower());
                  MainBodyContext.read<ChangePage_Bloc>()
                      .ChangePage_nodrower('', Page22());
                } else if (USERDATA.PLANTNAME == 'POWDER') {
                  // CuPage = Page23();
                  // MainBodyContext.read<ChangePage_Bloc>()
                  //     .add(ChangePage_nodrower());
                  MainBodyContext.read<ChangePage_Bloc>()
                      .ChangePage_nodrower('', Page23());
                } else if (USERDATA.PLANTNAME == 'LIQUID') {
                  // CuPage = Page24();
                  // MainBodyContext.read<ChangePage_Bloc>()
                  //     .add(ChangePage_nodrower());
                  MainBodyContext.read<ChangePage_Bloc>()
                      .ChangePage_nodrower('', Page24());
                } else if (USERDATA.PLANTNAME == 'NOXRUST') {
                  // CuPage = Page25();
                  // MainBodyContext.read<ChangePage_Bloc>()
                  //     .add(ChangePage_nodrower());
                  MainBodyContext.read<ChangePage_Bloc>()
                      .ChangePage_nodrower('', Page25());
                }
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
            top: 20,
            left: 293,
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
            left: 291,
            child: TextButton(
              onPressed: () {
                // CuPage = Page19();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page19());
              },
              child: Text(
                'SELECT TANK',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: const [Colors.blueAccent, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds),
                    child: Text(
                      '${USERDATA.PLANTNAME} : ${USERDATA.TANK} : ${USERDATA.ORDER}',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ComInputTextTan(
                                sPlaceholder: "Search...",
                                isSideIcon: true,
                                height: 40,
                                width: 400,
                                isContr: P26PROGRESSVAR.iscontrol,
                                fnContr: (input) {
                                  P26PROGRESSVAR.iscontrol = input;
                                },
                                sValue: P26PROGRESSVAR.SEARCH,
                                returnfunc: (String s) {
                                  setState(() {
                                    P26PROGRESSVAR.SEARCH = s;
                                  });
                                },
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P26PROGRESSVAR.isHoveredClear = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P26PROGRESSVAR.isHoveredClear = false;
                                  });
                                },
                                child: InkWell(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  onTap: () {
                                    setState(() {
                                      P26PROGRESSVAR.isHoveredClear = false;
                                      P26PROGRESSVAR.iscontrol = true;
                                      P26PROGRESSVAR.SEARCH = '';
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: P26PROGRESSVAR.isHoveredClear
                                            ? Colors.yellowAccent.shade700
                                            : Colors.redAccent.shade700,
                                        width: 3.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ShaderMask(
                                          shaderCallback: (bounds) =>
                                              LinearGradient(
                                            colors: const [
                                              Colors.white,
                                              Colors.red,
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                          ).createShader(bounds),
                                          child: TweenAnimationBuilder<double>(
                                            tween: Tween<double>(
                                              begin:
                                                  P26PROGRESSVAR.isHoveredClear
                                                      ? 15
                                                      : 17,
                                              end: P26PROGRESSVAR.isHoveredClear
                                                  ? 17
                                                  : 15,
                                            ),
                                            duration:
                                                Duration(milliseconds: 200),
                                            builder: (context, size, child) {
                                              return TweenAnimationBuilder<
                                                  Color?>(
                                                tween: ColorTween(
                                                  begin: P26PROGRESSVAR
                                                          .isHoveredClear
                                                      ? Colors
                                                          .redAccent.shade700
                                                      : Colors.yellowAccent
                                                          .shade700,
                                                  end:
                                                      P26PROGRESSVAR
                                                              .isHoveredClear
                                                          ? Colors.yellowAccent
                                                              .shade700
                                                          : Colors.redAccent
                                                              .shade700,
                                                ),
                                                duration:
                                                    Duration(milliseconds: 200),
                                                builder:
                                                    (context, color, child) {
                                                  return Text(
                                                    'CLEAR',
                                                    style: TextStyle(
                                                      fontSize: size,
                                                      color: color,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                child: Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        context
                                            .read<P26PROGRESSGETDATA_Bloc>()
                                            .add(P26PROGRESSGETDATA_GET());
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(10),
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
                            ],
                          ),
                          SizedBox(height: 10),
                          Table(
                            border: TableBorder.all(),
                            columnWidths: const {
                              0: FixedColumnWidth(50.0),
                              1: FixedColumnWidth(300),
                              2: FixedColumnWidth(100.0),
                              3: FixedColumnWidth(100.0),
                              4: FixedColumnWidth(100.0),
                            },
                            children: [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'NO.',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'CHEMICAL',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'BARCODE',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'SP. (kg)',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: SizedBox(
                                      height: 50,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            right: 0,
                                            height: 50,
                                            child: Container(
                                              color: Colors.blue,
                                              child: Center(
                                                child: Text(
                                                  'ACTUAL (kg)',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ..._datasearch.map((item) {
                                int dataCount = _datasearch.indexOf(item) + 1;
                                return TableRow(
                                  children: [
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(dataCount.toString()),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('  ${item.CHEMICALNAME}'),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child:
                                            Center(child: Text(item.BARCODE)),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.SP),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.ACTUAL),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 349.5,
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade100,
                                  border: Border(
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'TOTAL',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade100,
                                  border: Border(
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    totalSP.toStringAsFixed(1),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.yellow.shade100,
                                  border: Border(
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    totalActual.toStringAsFixed(1),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'NO',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'PACKET Size',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'PACKET QTY',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Total',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    _wg.NumPackSize1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    _wg.NumQuantity1,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              //

                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "${double.parse(ConverstStr(_wg.NumQuantity1)) * double.parse(ConverstStr(_wg.NumPackSize1))}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '2',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    _wg.NumPackSize2,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    _wg.NumQuantity2,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "${double.parse(ConverstStr(_wg.NumQuantity2)) * double.parse(ConverstStr(_wg.NumPackSize2))}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '3',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    _wg.NumPackSize3,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    _wg.NumQuantity3,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "${double.parse(ConverstStr(_wg.NumQuantity3)) * double.parse(ConverstStr(_wg.NumPackSize3))}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 100,
                                // decoration: BoxDecoration(
                                //   color: Colors.green.shade100,
                                //   border: Border(
                                //     top: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //     left: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //     bottom: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //   ),
                                // ),
                                child: Center(
                                  child: Text(
                                    '',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                // decoration: BoxDecoration(
                                //   color: Colors.green.shade100,
                                //   border: Border(
                                //     top: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //     left: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //     bottom: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //   ),
                                // ),
                                child: Center(
                                    // child: Text(
                                    //   _wg.NumPackSize3,
                                    //   style: TextStyle(
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "TATAL",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "${double.parse(ConverstStr(_wg.NumQuantity1)) * double.parse(ConverstStr(_wg.NumPackSize1)) + double.parse(ConverstStr(_wg.NumQuantity2)) * double.parse(ConverstStr(_wg.NumPackSize2)) + double.parse(ConverstStr(_wg.NumQuantity3)) * double.parse(ConverstStr(_wg.NumPackSize3))}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 100,
                                // decoration: BoxDecoration(
                                //   color: Colors.green.shade100,
                                //   border: Border(
                                //     top: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //     left: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //     bottom: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //   ),
                                // ),
                                child: Center(
                                  child: Text(
                                    '',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                // decoration: BoxDecoration(
                                //   color: Colors.green.shade100,
                                //   border: Border(
                                //     top: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //     left: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //     bottom: BorderSide(
                                //       color: Colors.black,
                                //       width: 1.0,
                                //     ),
                                //   ),
                                // ),
                                child: Center(
                                    // child: Text(
                                    //   _wg.NumPackSize3,
                                    //   style: TextStyle(
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Remain",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100.5,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    left: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "${(double.parse(ConverstStr(totalActual.toStringAsFixed(1))) - (double.parse(ConverstStr(_wg.NumQuantity1)) * double.parse(ConverstStr(_wg.NumPackSize1)) + double.parse(ConverstStr(_wg.NumQuantity2)) * double.parse(ConverstStr(_wg.NumPackSize2)) + double.parse(ConverstStr(_wg.NumQuantity3)) * double.parse(ConverstStr(_wg.NumPackSize3)))).toStringAsFixed(1)}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
