// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../bloc/BlocEvent/27-01-P27PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../widget/common/ComInputTextTan.dart';
import '../page10.dart';
import '../page11.dart';
import '../page8.dart';
import 'P27PROGRESSVAR.dart';

late BuildContext P27PROGRESSMAINcontext;

class P27PROGRESSMAIN extends StatefulWidget {
  P27PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P27PROGRESSGETDATAclass>? data;

  @override
  State<P27PROGRESSMAIN> createState() => _P27PROGRESSMAINState();
}

class _P27PROGRESSMAINState extends State<P27PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P27PROGRESSGETDATA_Bloc>().add(P27PROGRESSGETDATA_GET());
    P27PROGRESSVAR.iscontrol = true;
    P27PROGRESSVAR.SEARCH = '';
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    String formattedDate = DateFormat('dd-MMM-yy').format(now);
    P27PROGRESSMAINcontext = context;
    List<P27PROGRESSGETDATAclass> _datain = widget.data?.toList() ?? [];
    List<P27PROGRESSGETDATAclass> _datasearch = [];
    _datasearch.addAll(
      _datain.where(
        (data) =>
            data.LOT.toLowerCase().contains(P27PROGRESSVAR.SEARCH) ||
            data.CHMNAME.toLowerCase().contains(P27PROGRESSVAR.SEARCH) ||
            data.QTY.toLowerCase().contains(P27PROGRESSVAR.SEARCH) ||
            data.TANK.toLowerCase().contains(P27PROGRESSVAR.SEARCH) ||
            data.MIXER.toLowerCase().contains(P27PROGRESSVAR.SEARCH) ||
            data.PACKAGING.toLowerCase().contains(P27PROGRESSVAR.SEARCH),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, size: 30),
              onPressed: () {
                if (USERDATA.INSMASTER == 'CHEMICAL') {
                  // CuPage = Page11();
                  // MainBodyContext.read<ChangePage_Bloc>()
                  //     .add(ChangePage_nodrower());
                  MainBodyContext.read<ChangePage_Bloc>()
                      .ChangePage_nodrower('', Page11());
                } else if (USERDATA.PLANTNAME == 'H&S') {
                  // CuPage = Page10();
                  // MainBodyContext.read<ChangePage_Bloc>()
                  //     .add(ChangePage_nodrower());
                  MainBodyContext.read<ChangePage_Bloc>()
                      .ChangePage_nodrower('', Page10());
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
                // CuPage = Page11();
                // MainBodyContext.read<ChangePage_Bloc>()
                //     .add(ChangePage_nodrower());
                MainBodyContext.read<ChangePage_Bloc>()
                    .ChangePage_nodrower('', Page11());
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
                      '${USERDATA.INSMASTER} : ${USERDATA.ACTION}',
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
                                isContr: P27PROGRESSVAR.iscontrol,
                                fnContr: (input) {
                                  P27PROGRESSVAR.iscontrol = input;
                                },
                                sValue: P27PROGRESSVAR.SEARCH,
                                returnfunc: (String s) {
                                  setState(() {
                                    P27PROGRESSVAR.SEARCH = s;
                                  });
                                },
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P27PROGRESSVAR.isHoveredClear = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P27PROGRESSVAR.isHoveredClear = false;
                                  });
                                },
                                child: InkWell(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  onTap: () {
                                    setState(() {
                                      P27PROGRESSVAR.isHoveredClear = false;
                                      P27PROGRESSVAR.iscontrol = true;
                                      P27PROGRESSVAR.SEARCH = '';
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: P27PROGRESSVAR.isHoveredClear
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
                                                  P27PROGRESSVAR.isHoveredClear
                                                      ? 15
                                                      : 17,
                                              end: P27PROGRESSVAR.isHoveredClear
                                                  ? 17
                                                  : 15,
                                            ),
                                            duration:
                                                Duration(milliseconds: 200),
                                            builder: (context, size, child) {
                                              return TweenAnimationBuilder<
                                                  Color?>(
                                                tween: ColorTween(
                                                  begin: P27PROGRESSVAR
                                                          .isHoveredClear
                                                      ? Colors
                                                          .redAccent.shade700
                                                      : Colors.yellowAccent
                                                          .shade700,
                                                  end:
                                                      P27PROGRESSVAR
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
                                            .read<P27PROGRESSGETDATA_Bloc>()
                                            .add(P27PROGRESSGETDATA_GET());
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
                          Container(
                            height: 50,
                            width: 900,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              border: Border(
                                top: BorderSide(),
                                left: BorderSide(),
                                right: BorderSide(),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "บริษัท ไทยปาร์คเกอร์ไรซิ่ง จำกัด",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 900,
                            decoration: BoxDecoration(
                              // color: Colors.blue.shade900,
                              border: Border(
                                top: BorderSide(),
                                left: BorderSide(),
                                right: BorderSide(),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "ตารางการผลิตต่อวัน",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 900,
                            decoration: BoxDecoration(
                              // color: Colors.blue.shade900,
                              border: Border(
                                top: BorderSide(),
                                left: BorderSide(),
                                right: BorderSide(),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "วันที่ : $formattedDate",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Table(
                                border: TableBorder.all(),
                                columnWidths: const {
                                  0: FixedColumnWidth(100.0),
                                  1: FixedColumnWidth(300.0),
                                  2: FixedColumnWidth(100.0),
                                  3: FixedColumnWidth(200.0),
                                  4: FixedColumnWidth(200.0),
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
                                                      'LOT. NO',
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
                                                      'ปริมาณสินค้า',
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
                                                height: 26,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      border: Border(
                                                        bottom: BorderSide(
                                                            color:
                                                                Colors.black),
                                                      )),
                                                  child: Center(
                                                    child: Text(
                                                      'ภาชนะที่ใช้ผลิต',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                left: 0,
                                                width: 101,
                                                height: 24,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    border: Border(
                                                      right: BorderSide(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Tank No.',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                right: 0,
                                                width: 99,
                                                height: 24,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Mixer No.',
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
                                                      'ภาชนะที่บรรจุ',
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
                                ],
                              ),
                              if (_datasearch
                                  .any((item) => item.PLANT == 'noxrust'))
                                Column(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 900,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(),
                                          right: BorderSide(),
                                        ),
                                        color: Colors.blue.shade100,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '      Nox Rust Plant',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    Table(
                                      border: TableBorder.all(),
                                      columnWidths: const {
                                        0: FixedColumnWidth(100.0),
                                        1: FixedColumnWidth(300.0),
                                        2: FixedColumnWidth(100.0),
                                        3: FixedColumnWidth(200.0),
                                        4: FixedColumnWidth(200.0),
                                      },
                                      children: [
                                        ..._datasearch
                                            .where((item) =>
                                                item.PLANT == 'noxrust')
                                            .map((item) {
                                          return TableRow(
                                            children: [
                                              TableCell(
                                                child: SizedBox(
                                                  height: 30,
                                                  child: Center(
                                                      child: Text(item.LOT)),
                                                ),
                                              ),
                                              TableCell(
                                                child: SizedBox(
                                                  height: 30,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                        '   ${item.CHMNAME}'),
                                                  ),
                                                ),
                                              ),
                                              TableCell(
                                                child: SizedBox(
                                                  height: 30,
                                                  child: Center(
                                                    child: Text(item.QTY),
                                                  ),
                                                ),
                                              ),
                                              TableCell(
                                                child: SizedBox(
                                                  height: 30,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        bottom: 0,
                                                        left: 0,
                                                        width: 100,
                                                        height: 30,
                                                        child: Center(
                                                          child: Text(
                                                            item.TANK,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        bottom: 0,
                                                        right: 0,
                                                        width: 100,
                                                        height: 30,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border(
                                                              left: BorderSide(
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              item.MIXER,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
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
                                                  height: 30,
                                                  child: Center(
                                                    child: Text(item.PACKAGING),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      ],
                                    ),
                                  ],
                                ),
                              if (_datasearch
                                  .any((item) => item.PLANT == 'Chemical'))
                                Column(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 900,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(),
                                          right: BorderSide(),
                                        ),
                                        color: Colors.blue.shade100,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '      Chemical Plant',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    Table(
                                      border: TableBorder.all(),
                                      columnWidths: const {
                                        0: FixedColumnWidth(100.0),
                                        1: FixedColumnWidth(300.0),
                                        2: FixedColumnWidth(100.0),
                                        3: FixedColumnWidth(200.0),
                                        4: FixedColumnWidth(200.0),
                                      },
                                      children: [
                                        ..._datasearch
                                            .where((item) =>
                                                item.PLANT == 'Chemical')
                                            .map((item) {
                                          return TableRow(
                                            children: [
                                              TableCell(
                                                child: SizedBox(
                                                  height: 30,
                                                  child: Center(
                                                      child: Text(item.LOT)),
                                                ),
                                              ),
                                              TableCell(
                                                child: SizedBox(
                                                  height: 30,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                        '   ${item.CHMNAME}'),
                                                  ),
                                                ),
                                              ),
                                              TableCell(
                                                child: SizedBox(
                                                  height: 30,
                                                  child: Center(
                                                    child: Text(item.QTY),
                                                  ),
                                                ),
                                              ),
                                              TableCell(
                                                child: SizedBox(
                                                  height: 30,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        bottom: 0,
                                                        left: 0,
                                                        width: 100,
                                                        height: 30,
                                                        child: Center(
                                                          child: Text(
                                                            item.TANK,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        bottom: 0,
                                                        right: 0,
                                                        width: 100,
                                                        height: 30,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border(
                                                              left: BorderSide(
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              item.MIXER,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black),
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
                                                  height: 30,
                                                  child: Center(
                                                    child: Text(item.PACKAGING),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      ],
                                    ),
                                  ],
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
