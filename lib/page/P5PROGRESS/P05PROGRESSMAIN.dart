// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class P05PROGRESSMAIN extends StatefulWidget {
  const P05PROGRESSMAIN({super.key});

  @override
  State<P05PROGRESSMAIN> createState() => _P05PROGRESSMAINState();
}

class _P05PROGRESSMAINState extends State<P05PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P05PROGRESSMAINBody();
  }
}

class P05PROGRESSMAINBody extends StatefulWidget {
  const P05PROGRESSMAINBody({super.key});

  @override
  State<P05PROGRESSMAINBody> createState() => _P05PROGRESSMAINBodyState();
}

class _P05PROGRESSMAINBodyState extends State<P05PROGRESSMAINBody> {
  List<List<String>> tableData = [
    ['1650574', '2024-07-01', 'Material A', 'Action 1'],
    ['1620342', '2024-07-02', 'Material B', 'Action 2'],
    ['1650580', '2024-07-03', 'Material C', 'Action 3'],
    ['1650549', '2024-07-04', 'Material D', 'Action 4'],
    ['1650549', '2024-07-05'],
  ];

  List<testclass> tableDatav2 = [
    testclass(
      po: '1650574',
      date: '2024-07-01',
      mat: 'Material A',
    ),
    testclass(
      po: '1650575',
      date: '2024-07-02',
      mat: 'Material B',
    ),
    testclass(
      po: '1650576',
      date: '2024-07-03',
      mat: 'Material C',
    ),
    testclass(),
  ];

  // int columns = 0;
  // int rows = 0;

  // List<List<String>> tableData = [
  //   ['', 'ABC'],
  //   ['', ''],
  //   ['', '']
  // ];

  // void generateTable() {
  //   tableData.clear();
  //   for (int i = 0; i < rows; i++) {
  //     List<String> rowData = [];
  //     for (int j = 0; j < columns; j++) {
  //       rowData.add('');
  //     }
  //     tableData.add(rowData);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                'HISTORY',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Table(
            border: TableBorder.all(),
            columnWidths: const {
              0: FixedColumnWidth(100.0),
              1: FixedColumnWidth(150.0),
              2: FixedColumnWidth(150.0),
              3: FixedColumnWidth(150.0),
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
                                  'PO.',
                                  style: TextStyle(color: Colors.white),
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
                                  'Date',
                                  style: TextStyle(color: Colors.white),
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
                                  'Mat.',
                                  style: TextStyle(color: Colors.white),
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
                            height: 25,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(color: Colors.black),
                              ),
                              child: Center(
                                child: Text(
                                  'Adjustment',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            width: 75,
                            height: 25,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  border: Border(
                                    right: BorderSide(color: Colors.black),
                                  )),
                              child: Center(
                                child: Text(
                                  'Action',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            width: 75,
                            height: 25,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  border: Border(
                                    right: BorderSide(color: Colors.black),
                                  )),
                              child: Center(
                                child: Text(
                                  'Edit',
                                  style: TextStyle(color: Colors.white),
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
              // ...tableDatav2.map((rowData) {
              //   return TableRow(
              //     children: [
              //       TableCell(
              //         child: SizedBox(
              //           height: 50,
              //           child: Center(
              //             child: Text(rowData.po),
              //           ),
              //         ),
              //       ),
              //       TableCell(
              //         child: SizedBox(
              //           height: 50,
              //           child: Center(
              //             child: Text(rowData.date),
              //           ),
              //         ),
              //       ),
              //       TableCell(
              //         child: SizedBox(
              //           height: 50,
              //           child: Center(
              //             child: Text(rowData.mat),
              //           ),
              //         ),
              //       ),
              //       TableCell(
              //         child: SizedBox(
              //           height: 50,
              //           child: Stack(
              //             children: [
              //               Positioned(
              //                 bottom: 0,
              //                 left: 0,
              //                 width: 75,
              //                 height: 50,
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                     border: Border(
              //                       right: BorderSide(color: Colors.black),
              //                     ),
              //                   ),
              //                   child: Center(
              //                     child: Text(
              //                       "Action",
              //                       style: TextStyle(color: Colors.black),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Positioned(
              //                 bottom: 0,
              //                 right: 0,
              //                 width: 75,
              //                 height: 50,
              //                 child: InkWell(
              //                   onTap: () {
              //                     showDialog(
              //                       context: context,
              //                       builder: (BuildContext context) {
              //                         return AlertDialog(
              //                           title: Text(
              //                               'การปรับแต่ง: ${rowData.po}'),
              //                           content:
              //                               Text('แก้ไข: ${rowData.po} แล้ว'),
              //                           actions: <Widget>[
              //                             TextButton(
              //                               child: Text('ปิด'),
              //                               onPressed: () {
              //                                 Navigator.of(context).pop();
              //                               },
              //                             ),
              //                           ],
              //                         );
              //                       },
              //                     );
              //                   },
              //                   child: Center(
              //                     child: Icon(
              //                       Icons.edit,
              //                       color: Colors.black,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   );
              // }),
              // ...tableDatav2.map(
              //   (rowData) {
              // return

              // },
              for (int i = 0; i < tableDatav2.length; i++) ...[
                TableRow(
                  children: [
                    TableCell(
                      child: SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(tableDatav2[i].po),
                        ),
                      ),
                    ),
                    TableCell(
                      child: SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(tableDatav2[i].date),
                        ),
                      ),
                    ),
                    TableCell(
                      child: SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(tableDatav2[i].mat),
                        ),
                      ),
                    ),
                    TableCell(
                      child: SizedBox(
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              width: 75,
                              height: 50,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(color: Colors.black),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "Action",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              width: 75,
                              height: 50,
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(
                                            'การปรับแต่ง: ${tableDatav2[i].po}'),
                                        content: Text(
                                            'แก้ไข: ${tableDatav2[i].po} แล้ว'),
                                        actions: <Widget>[
                                          TextButton(
                                            child: Text('ปิด'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Center(
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.black,
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
              ]
            ],
          ),
        ),
      ],
    );
  }
}
// return SingleChildScrollView(
//   padding: EdgeInsets.all(16.0),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.stretch,
//     children: <Widget>[
//       Row(
//         children: <Widget>[
//           SizedBox(
//             height: 30,
//             width: 100,
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'T-Column',
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.number,
//               onChanged: (value) {
//                 setState(() {
//                   columns = int.tryParse(value) ?? 0;
//                 });
//               },
//             ),
//           ),
//           SizedBox(width: 20),
//           SizedBox(
//             height: 30,
//             width: 100,
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'T-Row',
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.number,
//               onChanged: (value) {
//                 setState(() {
//                   rows = int.tryParse(value) ?? 0;
//                 });
//               },
//             ),
//           ),
//           SizedBox(width: 20),
//           ElevatedButton(
//             onPressed: () {
//               if (columns >= 1 && rows >= 1) {
//                 setState(() {
//                   // generateTable();
//                 });
//               } else {
//                 BlocProvider.of<BlocNotification>(contextGB)
//                     .UpdateNotification(
//                         "Notification",
//                         "T-Column and T-Row must be > 0",
//                         enumNotificationlist.Error);
//               }
//             },
//             child: Text('Generate Table'),
//             style: ElevatedButton.styleFrom(
//               minimumSize: Size(50, 45),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               primary: Colors.red,
//               onPrimary: Colors.white,
//             ),
//           ),
//         ],
//       ),
//       SizedBox(height: 20),
//       Table(
//         border: TableBorder.all(
//           color: Colors.red,
//         ),
//         children: tableData.asMap().entries.map((entry) {
//           int rowIndex = entry.key;
//           List<String> rowData = entry.value;

//           return TableRow(
//             children: rowData.map((cellData) {
//               return TableCell(
//                 child: Container(
//                   color: rowIndex == 0
//                       ? Colors.grey
//                       : Colors
//                           .transparent, // เปลี่ยนสีพื้นหลังเฉพาะคอลัมน์บนสุด
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(cellData),
//                 ),
//               );
//             }).toList(),
//           );
//         }).toList(),
//       ),
//     ],
//   ),
// );
//  }
// }

class testclass {
  testclass({
    this.po = 'error',
    this.date = '',
    this.mat = '',
    this.data1 = '',
    this.data2 = '',
    this.data3 = '',
    this.data4 = '',
    this.data5 = '',
    this.data6 = '',
  });

  String po;
  String date;
  String mat;
  String data1;
  String data2;
  String data3;
  String data4;
  String data5;
  String data6;
}
