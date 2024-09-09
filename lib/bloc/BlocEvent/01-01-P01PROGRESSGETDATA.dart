import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../data/dummydata2.dart';
import '../../data/global.dart';
import '../../page/P1PROGRESS/P01PROGRESSMAIN.dart';
import '../../page/P1PROGRESS/P01PROGRESSVAR.dart';
import '../../widget/common/Loading.dart';

//-------------------------------------------------

abstract class P01PROGRESSGETDATA_Event {}

class P01PROGRESSGETDATA_GET extends P01PROGRESSGETDATA_Event {}

class P01PROGRESSGETDATA_GET2 extends P01PROGRESSGETDATA_Event {}

class P01PROGRESSGETDATA_GET3 extends P01PROGRESSGETDATA_Event {}

class P01PROGRESSGETDATA_FLUSH extends P01PROGRESSGETDATA_Event {}

class P01PROGRESSGETDATA_Bloc
    extends Bloc<P01PROGRESSGETDATA_Event, List<P01PROGRESSGETDATAclass>> {
  P01PROGRESSGETDATA_Bloc() : super([]) {
    on<P01PROGRESSGETDATA_GET>((event, emit) {
      return _P01PROGRESSGETDATA_GET([], emit);
    });

    on<P01PROGRESSGETDATA_GET2>((event, emit) {
      return _P01PROGRESSGETDATA_GET2([], emit);
    });
    on<P01PROGRESSGETDATA_GET3>((event, emit) {
      return _P01PROGRESSGETDATA_GET3([], emit);
    });
    on<P01PROGRESSGETDATA_FLUSH>((event, emit) {
      return _P01PROGRESSGETDATA_FLUSH([], emit);
    });
  }

  Future<void> _P01PROGRESSGETDATA_GET(List<P01PROGRESSGETDATAclass> toAdd,
      Emitter<List<P01PROGRESSGETDATAclass>> emit) async {
    FreeLoadingTan(P01PROGRESSMAINcontext);
    List<P01PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    var now = DateTime.now();
    String formattedDate = DateFormat('dd-MMM-yy').format(now);
    String formattedDate1 = DateFormat('yyyyMMdd').format(now);
    var input = dummydatainput2;
    final response = await Dio().post(
      "${server2}datacentertest/getsap",
      data: {
        "BAPI_NAME": "ZPPIN011_OUT",
        "TABLE_NAME": "PPORDER",
        // "IMP_WERKS": "2100",
        // "IMP_PRCTR": "21000",
        "IMP_WERKS": USERDATA.BRANCHNUMBER.toString(),
        "IMP_PRCTR": "",
        // "LAST_DATE": "20240814"
        "LAST_DATE": formattedDate1
      },
    );
    print(formattedDate1);
    print(response.statusCode);
    // print(response.data);
    List<dynamic> data = response.data;
    Navigator.pop(P01PROGRESSMAINcontext);
    if (data.isNotEmpty) {
      // Clear existing data before adding new data
      P01PROGRESSVAR.PHOdata.clear();
      P01PROGRESSVAR.PALdata.clear();
      P01PROGRESSVAR.GASNONdata.clear();
      P01PROGRESSVAR.ISNdata.clear();
      P01PROGRESSVAR.GASBOIdata.clear();

      for (var item in data) {
        if (item["PRCTR"] == "0000051000") {
          P01PROGRESSVAR.PHOdata.add(item);
        } else if (item["PRCTR"] == "0000052000") {
          P01PROGRESSVAR.PALdata.add(item);
        } else if (item["PRCTR"] == "0000054000") {
          P01PROGRESSVAR.GASNONdata.add(item);
        } else if (item["PRCTR"] == "0000053000") {
          P01PROGRESSVAR.ISNdata.add(item);
        } else if (item["PRCTR"] == "0000054500") {
          P01PROGRESSVAR.GASBOIdata.add(item);
        }
      }
    }

    List<P01PROGRESSGETDATAclass> outputdata =
        input.where((data) => data['location'] == 'ESIE1').map((data) {
      return P01PROGRESSGETDATAclass(
        PLANT: savenull(data['plant']),
        ORDER: savenull(data['order']),
        MAT: savenull(data['mat']),
        LOCATION: savenull(data['location']),
        LOT: savenull(data['lot']),
        CUSTOMER: savenull(data['customer']),
        PARTNO: savenull(data['partno']),
        PARTNAME: savenull(data['partname']),
        STEP01: savenull(data['step1']),
        STEP02: savenull(data['step2']),
        STEP03: savenull(data['step3']),
        STEP04: savenull(data['step4']),
        STEP05: savenull(data['step5']),
        STEP06: savenull(data['step6']),
        STEP07: savenull(data['step7']),
        STEP08: savenull(data['step8']),
        STEP09: savenull(data['step9']),
      );
    }).toList();
    output = outputdata;
    emit(output);
  }

  Future<void> _P01PROGRESSGETDATA_GET2(List<P01PROGRESSGETDATAclass> toAdd,
      Emitter<List<P01PROGRESSGETDATAclass>> emit) async {
    // List<P01PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    // var input = dummydatainput2;

    // List<P01PROGRESSGETDATAclass> outputdata = input
    //     .where((data) =>
    //         data['location'] == 'ESIE1' &&
    //         data['plant'] == 'YES' &&
    //         data['step01'] == 'YES')
    //     .map((data) {
    //   return P01PROGRESSGETDATAclass(
    //     PLANT: savenull(data['plant']),
    //     ORDER: savenull(data['order']),
    //     MAT: savenull(data['mat']),
    //     LOCATION: savenull(data['location']),
    //     LOT: savenull(data['lot']),
    //     CUSTOMER: savenull(data['customer']),
    //     PARTNO: savenull(data['partno']),
    //     PARTNAME: savenull(data['partname']),
    //     STEP01: savenull(data['step1']),
    //     STEP02: savenull(data['step2']),
    //     STEP03: savenull(data['step3']),
    //     STEP04: savenull(data['step4']),
    //     STEP05: savenull(data['step5']),
    //     STEP06: savenull(data['step6']),
    //     STEP07: savenull(data['step7']),
    //     STEP08: savenull(data['step8']),
    //     STEP09: savenull(data['step9']),
    //   );
    // }).toList();

    // output = outputdata;
    // emit(output);
  }

  Future<void> _P01PROGRESSGETDATA_GET3(List<P01PROGRESSGETDATAclass> toAdd,
      Emitter<List<P01PROGRESSGETDATAclass>> emit) async {
    List<P01PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P01PROGRESSGETDATAclass> datadummy = [
      P01PROGRESSGETDATAclass(
        PLANT: "PH PO:1234",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
      ),
      P01PROGRESSGETDATAclass(
        PLANT: "PH PO:5555",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P01PROGRESSGETDATAclass(
        PLANT: "PH PO:5556",
        STEP01: "YES",
        STEP02: "YES",
      ),
      P01PROGRESSGETDATAclass(
        PLANT: "PH PO:9999",
      ),
    ];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P01PROGRESSGETDATA_FLUSH(List<P01PROGRESSGETDATAclass> toAdd,
      Emitter<List<P01PROGRESSGETDATAclass>> emit) async {
    List<P01PROGRESSGETDATAclass> output = [];
    emit(output);
  }
}

class P01PROGRESSGETDATAclass {
  P01PROGRESSGETDATAclass({
    this.PLANT = '',
    this.ORDER = '',
    this.MAT = '',
    this.LOT = '',
    this.LOCATION = '',
    this.CUSTOMER = '',
    this.PARTNO = '',
    this.PARTNAME = '',
    this.STEP01 = '',
    this.STEP02 = '',
    this.STEP03 = '',
    this.STEP04 = '',
    this.STEP05 = '',
    this.STEP06 = '',
    this.STEP07 = '',
    this.STEP08 = '',
    this.STEP09 = '',
  });

  String PLANT;
  String ORDER;
  String MAT;
  String LOCATION;
  String LOT;
  String CUSTOMER;
  String PARTNO;
  String PARTNAME;
  String STEP01;
  String STEP02;
  String STEP03;
  String STEP04;
  String STEP05;
  String STEP06;
  String STEP07;
  String STEP08;
  String STEP09;
}

String savenull(input) {
  String output = '-';
  if (input != null) {
    output = input.toString();
  }
  return output;
}
