// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/16-01-P16PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../widget/common/ComInputTextTan.dart';
import '../page1.dart';
import '../page10.dart';
import '../page2.dart';
import '../page4.dart';
import '../page8.dart';
import '../page9.dart';
import 'P16PROGRESSVAR.dart';

late BuildContext P16PROGRESSMAINcontext;

class P16PROGRESSMAIN extends StatefulWidget {
  P16PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P16PROGRESSGETDATAclass>? data;

  @override
  State<P16PROGRESSMAIN> createState() => _P16PROGRESSMAINState();
}

class _P16PROGRESSMAINState extends State<P16PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P16PROGRESSGETDATA_Bloc>().add(P16PROGRESSGETDATA_GET());
    P16PROGRESSVAR.iscontrol = true;
    P16PROGRESSVAR.SEARCH = '';
  }

  @override
  Widget build(BuildContext context) {
    P16PROGRESSMAINcontext = context;
    List<P16PROGRESSGETDATAclass> _datain = widget.data ?? [];
    List<P16PROGRESSGETDATAclass> _datasearch = [];
    _datasearch.addAll(
      _datain.where(
        (data) =>
            data.PO.toLowerCase().contains(P16PROGRESSVAR.SEARCH) ||
            data.CUST_FULL.toLowerCase().contains(P16PROGRESSVAR.SEARCH) ||
            data.PARTNAME.toLowerCase().contains(P16PROGRESSVAR.SEARCH) ||
            data.PARTNO.toLowerCase().contains(P16PROGRESSVAR.SEARCH) ||
            data.QTY.toLowerCase().contains(P16PROGRESSVAR.SEARCH) ||
            data.TPKLOT.toLowerCase().contains(P16PROGRESSVAR.SEARCH),
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
            top: 20,
            left: 302,
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
            left: 300,
            child: TextButton(
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
              child: Text(
                '${USERDATA.BRANCH} : PROGRESS',
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
                      '${USERDATA.BRANCH} : ${USERDATA.ACTION} : ${USERDATA.PLANT}',
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
                                isContr: P16PROGRESSVAR.iscontrol,
                                fnContr: (input) {
                                  P16PROGRESSVAR.iscontrol = input;
                                },
                                sValue: P16PROGRESSVAR.SEARCH,
                                returnfunc: (String s) {
                                  setState(() {
                                    P16PROGRESSVAR.SEARCH = s;
                                  });
                                },
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P16PROGRESSVAR.isHoveredClear = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P16PROGRESSVAR.isHoveredClear = false;
                                  });
                                },
                                child: InkWell(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  onTap: () {
                                    setState(() {
                                      P16PROGRESSVAR.isHoveredClear = false;
                                      P16PROGRESSVAR.iscontrol = true;
                                      P16PROGRESSVAR.SEARCH = '';
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: P16PROGRESSVAR.isHoveredClear
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
                                                  P16PROGRESSVAR.isHoveredClear
                                                      ? 15
                                                      : 17,
                                              end: P16PROGRESSVAR.isHoveredClear
                                                  ? 17
                                                  : 15,
                                            ),
                                            duration:
                                                Duration(milliseconds: 200),
                                            builder: (context, size, child) {
                                              return TweenAnimationBuilder<
                                                  Color?>(
                                                tween: ColorTween(
                                                  begin: P16PROGRESSVAR
                                                          .isHoveredClear
                                                      ? Colors
                                                          .redAccent.shade700
                                                      : Colors.yellowAccent
                                                          .shade700,
                                                  end:
                                                      P16PROGRESSVAR
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
                                            .read<P16PROGRESSGETDATA_Bloc>()
                                            .add(P16PROGRESSGETDATA_GET());
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
                              1: FixedColumnWidth(100),
                              2: FixedColumnWidth(300.0),
                              3: FixedColumnWidth(200.0),
                              4: FixedColumnWidth(160.0),
                              5: FixedColumnWidth(80.0),
                              6: FixedColumnWidth(100.0),
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
                                                  'ID',
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
                                                  'PO NO.',
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
                                                  'CUST NAME',
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
                                                  'PART NAME',
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
                                                  'PART NO.',
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
                                                  'QTY',
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
                                                  'TPK LOT',
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
                                        child: Center(
                                          child: Text(item.PO),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('  ${item.CUST_FULL}'),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.PARTNAME),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.PARTNO),
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
                                        child: Center(
                                          child: Text(item.TPKLOT),
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
