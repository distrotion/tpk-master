import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../data/dummydata2.dart';
import '../../data/global.dart';
import '../../page/P4PROGRESS/P04PROGRESSMAIN.dart';
import '../../page/P4PROGRESS/P04PROGRESSVAR.dart';
import '../../widget/common/Loading.dart';

//-------------------------------------------------

abstract class P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_GET extends P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_GET2 extends P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_GET3 extends P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_FLUSH extends P04PROGRESSGETDATA_Event {}

class P04PROGRESSGETDATA_Bloc
    extends Bloc<P04PROGRESSGETDATA_Event, List<P04PROGRESSGETDATAclass>> {
  P04PROGRESSGETDATA_Bloc() : super([]) {
    on<P04PROGRESSGETDATA_GET>((event, emit) {
      return _P04PROGRESSGETDATA_GET([], emit);
    });

    on<P04PROGRESSGETDATA_GET2>((event, emit) {
      return _P04PROGRESSGETDATA_GET2([], emit);
    });
    on<P04PROGRESSGETDATA_GET3>((event, emit) {
      return _P04PROGRESSGETDATA_GET3([], emit);
    });
    on<P04PROGRESSGETDATA_FLUSH>((event, emit) {
      return _P04PROGRESSGETDATA_FLUSH([], emit);
    });
  }

  Future<void> _P04PROGRESSGETDATA_GET(List<P04PROGRESSGETDATAclass> toAdd,
      Emitter<List<P04PROGRESSGETDATAclass>> emit) async {
    FreeLoadingTan(P04PROGRESSMAINcontext);
    List<P04PROGRESSGETDATAclass> output = [];
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
    print(response.statusCode);
    // print(response);
    List<dynamic> data = response.data;
    Navigator.pop(P04PROGRESSMAINcontext);
    if (data.isNotEmpty) {
      // Clear existing data before adding new data
      P04PROGRESSVAR.GWNEWdata.clear();
      P04PROGRESSVAR.GWOLDdata.clear();

      for (var item in data) {
        if (item["PRCTR"] == "0000025700") {
          P04PROGRESSVAR.GWNEWdata.add(item);
        } else if (item["PRCTR"] == "0000025000") {
          P04PROGRESSVAR.GWOLDdata.add(item);
        }
      }
    }

    List<P04PROGRESSGETDATAclass> outputdata =
        input.where((data) => data['location'] == 'GW').map((data) {
      return P04PROGRESSGETDATAclass(
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

  Future<void> _P04PROGRESSGETDATA_GET2(List<P04PROGRESSGETDATAclass> toAdd,
      Emitter<List<P04PROGRESSGETDATAclass>> emit) async {
    List<P04PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P04PROGRESSGETDATAclass> datadummy = [
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:1234",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:5555",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:5556",
        STEP01: "YES",
        STEP02: "YES",
      ),
    ];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P04PROGRESSGETDATA_GET3(List<P04PROGRESSGETDATAclass> toAdd,
      Emitter<List<P04PROGRESSGETDATAclass>> emit) async {
    List<P04PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P04PROGRESSGETDATAclass> datadummy = [
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:1234",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:5555",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:5556",
        STEP01: "YES",
        STEP02: "YES",
      ),
      P04PROGRESSGETDATAclass(
        PLANT: "PH PO:9999",
      ),
    ];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P04PROGRESSGETDATA_FLUSH(List<P04PROGRESSGETDATAclass> toAdd,
      Emitter<List<P04PROGRESSGETDATAclass>> emit) async {
    List<P04PROGRESSGETDATAclass> output = [];
    emit(output);
  }
}

class P04PROGRESSGETDATAclass {
  P04PROGRESSGETDATAclass({
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
