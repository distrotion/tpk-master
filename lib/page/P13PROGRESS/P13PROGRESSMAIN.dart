// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/13-01-P13PROGRESSGETDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../widget/common/ComInputTextTan.dart';
import '../page10.dart';
import '../page8.dart';
import '../page9.dart';
import 'P13PROGRESSVAR.dart';

late BuildContext P13PROGRESSMAINcontext;

class P13PROGRESSMAIN extends StatefulWidget {
  P13PROGRESSMAIN({
    super.key,
    this.data,
  });
  List<P13PROGRESSGETDATAclass>? data;

  @override
  State<P13PROGRESSMAIN> createState() => _P13PROGRESSMAINState();
}

class _P13PROGRESSMAINState extends State<P13PROGRESSMAIN> {
  @override
  void initState() {
    super.initState();
    context.read<P13PROGRESSGETDATA_Bloc>().add(P13PROGRESSGETDATA_GET());
    P13PROGRESSVAR.iscontrol = true;
    P13PROGRESSVAR.SEARCH = '';
  }

  @override
  Widget build(BuildContext context) {
    P13PROGRESSMAINcontext = context;
    List<P13PROGRESSGETDATAclass> _datain = widget.data ?? [];
    List<P13PROGRESSGETDATAclass> _datasearch = [];
    _datasearch.addAll(
      _datain.where(
        (data) =>
            data.MATCP.toLowerCase().contains(P13PROGRESSVAR.SEARCH) ||
            data.CUST_FULL.toLowerCase().contains(P13PROGRESSVAR.SEARCH) ||
            data.PARTNAME.toLowerCase().contains(P13PROGRESSVAR.SEARCH) ||
            data.PART_NO.toLowerCase().contains(P13PROGRESSVAR.SEARCH) ||
            data.CHARG.toLowerCase().contains(P13PROGRESSVAR.SEARCH) ||
            data.CUST_LOT.toLowerCase().contains(P13PROGRESSVAR.SEARCH) ||
            data.QTY.toLowerCase().contains(P13PROGRESSVAR.SEARCH),
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
                                isContr: P13PROGRESSVAR.iscontrol,
                                fnContr: (input) {
                                  P13PROGRESSVAR.iscontrol = input;
                                },
                                sValue: P13PROGRESSVAR.SEARCH,
                                returnfunc: (String s) {
                                  setState(() {
                                    P13PROGRESSVAR.SEARCH = s;
                                  });
                                },
                              ),
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    P13PROGRESSVAR.isHoveredClear = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    P13PROGRESSVAR.isHoveredClear = false;
                                  });
                                },
                                child: InkWell(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  onTap: () {
                                    setState(() {
                                      P13PROGRESSVAR.isHoveredClear = false;
                                      P13PROGRESSVAR.iscontrol = true;
                                      P13PROGRESSVAR.SEARCH = '';
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: P13PROGRESSVAR.isHoveredClear
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
                                                  P13PROGRESSVAR.isHoveredClear
                                                      ? 15
                                                      : 17,
                                              end: P13PROGRESSVAR.isHoveredClear
                                                  ? 17
                                                  : 15,
                                            ),
                                            duration:
                                                Duration(milliseconds: 200),
                                            builder: (context, size, child) {
                                              return TweenAnimationBuilder<
                                                  Color?>(
                                                tween: ColorTween(
                                                  begin: P13PROGRESSVAR
                                                          .isHoveredClear
                                                      ? Colors
                                                          .redAccent.shade700
                                                      : Colors.yellowAccent
                                                          .shade700,
                                                  end:
                                                      P13PROGRESSVAR
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
                                            .read<P13PROGRESSGETDATA_Bloc>()
                                            .add(P13PROGRESSGETDATA_GET());
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
                              1: FixedColumnWidth(100.0),
                              2: FixedColumnWidth(300.0),
                              3: FixedColumnWidth(160.0),
                              4: FixedColumnWidth(160.0),
                              5: FixedColumnWidth(80.0),
                              6: FixedColumnWidth(110.0),
                              7: FixedColumnWidth(100.0),
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
                                                  'MATCP',
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
                                                  'PART NO',
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
                                                  'CHARG',
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
                                                  'CUST LOT',
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
                                          child: Text(item.MATCP),
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
                                          child: Text(item.PART_NO),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.CHARG),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: SizedBox(
                                        height: 30,
                                        child: Center(
                                          child: Text(item.CUST_LOT),
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
                                  ],
                                );
                              }),
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
        ],
      ),
    );
  }
}
