import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../data/global.dart';
import '../../page/P16PROGRESS/P16PROGRESSMAIN.dart';
import '../../widget/common/Loading.dart';

//-------------------------------------------------

abstract class P16PROGRESSGETDATA_Event {}

class P16PROGRESSGETDATA_GET extends P16PROGRESSGETDATA_Event {}

class P16PROGRESSGETDATA_GET2 extends P16PROGRESSGETDATA_Event {}

class P16PROGRESSGETDATA_GET3 extends P16PROGRESSGETDATA_Event {}

class P16PROGRESSGETDATA_FLUSH extends P16PROGRESSGETDATA_Event {}

class P16PROGRESSGETDATA_Bloc
    extends Bloc<P16PROGRESSGETDATA_Event, List<P16PROGRESSGETDATAclass>> {
  P16PROGRESSGETDATA_Bloc() : super([]) {
    on<P16PROGRESSGETDATA_GET>((event, emit) {
      return _P16PROGRESSGETDATA_GET([], emit);
    });

    on<P16PROGRESSGETDATA_GET2>((event, emit) {
      return _P16PROGRESSGETDATA_GET2([], emit);
    });
    on<P16PROGRESSGETDATA_GET3>((event, emit) {
      return _P16PROGRESSGETDATA_GET3([], emit);
    });
    on<P16PROGRESSGETDATA_FLUSH>((event, emit) {
      return _P16PROGRESSGETDATA_FLUSH([], emit);
    });
  }

  Future<void> _P16PROGRESSGETDATA_GET(List<P16PROGRESSGETDATAclass> toAdd,
      Emitter<List<P16PROGRESSGETDATAclass>> emit) async {
    FreeLoadingTan(P16PROGRESSMAINcontext);
    List<P16PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    var now = DateTime.now();
    String formattedDate = DateFormat('dd-MMM-yy').format(now);
    String formattedDate1 = DateFormat('yyyyMMdd').format(now);
    final response = await Dio().post(
      "${server2}datacentertest/getsap",
      data: {
        "BAPI_NAME": "ZPPIN011_OUT",
        "TABLE_NAME": "PPORDER",
        // "IMP_WERKS": "2100",
        // "IMP_PRCTR": "21000",
        "IMP_WERKS": USERDATA.BRANCHNUMBER.toString(),
        "IMP_PRCTR": USERDATA.PLANTNUMBER.toString(),
        // "LAST_DATE": "20240814"
        "LAST_DATE": formattedDate1
      },
    );
    var input = [];
    Navigator.pop(P16PROGRESSMAINcontext);
    if (response.statusCode == 200) {
      print(response.statusCode);
      // print(response.data);
      var databuff = response.data;
      input = databuff;

      List<P16PROGRESSGETDATAclass> outputdata = input.map((dataActual) {
        return P16PROGRESSGETDATAclass(
          PO: savenull(dataActual['PO']?.substring(2)),
          SEQ: savenull(dataActual['SEQ']),
          DATSTA: savenull(dataActual['DATSTA']),
          TIMSTA: savenull(dataActual['TIMSTA']),
          MATCP: savenull(dataActual['CPMAT']),
          MATFG: savenull(dataActual['FGMAT']),
          STA: savenull(dataActual['STA']),
          QTY: savenull(dataActual['QTYT']),
          UNIT: savenull(dataActual['UNIT']),
          CUST_SHORT: savenull(dataActual['CUSTNA']),
          PARTNAME: savenull(dataActual['PARTNA']),
          PRCTR: savenull(dataActual['PRCTR']),
          MATNAME: savenull(dataActual['MATNA']),
          PARTNO: savenull(dataActual['PARTNO']),
          PROC: savenull(dataActual['PROC']),
          STADATE: savenull(dataActual['STADATE']),
          STATIME: savenull(dataActual['STATIME']),
          FINDATE: savenull(dataActual['FINDATE']),
          FINTIME: savenull(dataActual['FINTIME']),
          PKSTADATE: savenull(dataActual['PKSTADATE']),
          PKSTATIME: savenull(dataActual['PKSTATIME']),
          PKFINDATE: savenull(dataActual['PKFINDATE']),
          PKFINTIME: savenull(dataActual['PKFINTIME']),
          WEIGHT_PC: savenull(dataActual['WEIGHT_PC']),
          WEIGHT_JIG: savenull(dataActual['WEIGHT_JIG']),
          ACT_QTY: savenull(dataActual['ACT_QTY']),
          CUSLOTNO: savenull(dataActual['CUSLOTNO']),
          STDTIME400: savenull(dataActual['STDTIME400']),
          TPKLOT: savenull(dataActual['FG_CHARG']),
          CUST_FULL: savenull(dataActual['CUST_FULLNM']),
          MAT_INTEGRATE: savenull(dataActual['MAT_INTEGRATE']),
          CUSLOTNO2: savenull(dataActual['CUSLOTNO2']),
        );
      }).toList();

      output = outputdata;
      emit(output);
    } else {
      Navigator.pop(P16PROGRESSMAINcontext);
      print("where is my server");
      output = [];
      emit(output);
    }
  }

  Future<void> _P16PROGRESSGETDATA_GET2(List<P16PROGRESSGETDATAclass> toAdd,
      Emitter<List<P16PROGRESSGETDATAclass>> emit) async {
    List<P16PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P16PROGRESSGETDATAclass> datadummy = [];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P16PROGRESSGETDATA_GET3(List<P16PROGRESSGETDATAclass> toAdd,
      Emitter<List<P16PROGRESSGETDATAclass>> emit) async {
    List<P16PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P16PROGRESSGETDATAclass> datadummy = [];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P16PROGRESSGETDATA_FLUSH(List<P16PROGRESSGETDATAclass> toAdd,
      Emitter<List<P16PROGRESSGETDATAclass>> emit) async {
    List<P16PROGRESSGETDATAclass> output = [];
    emit(output);
  }
}

class P16PROGRESSGETDATAclass {
  P16PROGRESSGETDATAclass({
    this.PO = '',
    this.SEQ = '',
    this.DATSTA = '',
    this.TIMSTA = '',
    this.MATCP = '',
    this.MATFG = '',
    this.STA = '',
    this.QTY = '',
    this.UNIT = '',
    this.CUST_SHORT = '',
    this.PARTNAME = '',
    this.PRCTR = '',
    this.MATNAME = '',
    this.PARTNO = '',
    this.PROC = '',
    this.STADATE = '',
    this.STATIME = '',
    this.FINDATE = '',
    this.FINTIME = '',
    this.PKSTADATE = '',
    this.PKSTATIME = '',
    this.PKFINDATE = '',
    this.PKFINTIME = '',
    this.WEIGHT_PC = '',
    this.WEIGHT_JIG = '',
    this.ACT_QTY = '',
    this.CUSLOTNO = '',
    this.STDTIME400 = '',
    this.TPKLOT = '',
    this.CUST_FULL = '',
    this.MAT_INTEGRATE = '',
    this.CUSLOTNO2 = '',
  });

  String PO;
  String SEQ;
  String DATSTA;
  String TIMSTA;
  String MATCP;
  String MATFG;
  String STA;
  String QTY;
  String UNIT;
  String CUST_SHORT;
  String PARTNAME;
  String PRCTR;
  String MATNAME;
  String PARTNO;
  String PROC;
  String STADATE;
  String STATIME;
  String FINDATE;
  String FINTIME;
  String PKSTADATE;
  String PKSTATIME;
  String PKFINDATE;
  String PKFINTIME;
  String WEIGHT_PC;
  String WEIGHT_JIG;
  String ACT_QTY;
  String CUSLOTNO;
  String STDTIME400;
  String TPKLOT;
  String CUST_FULL;
  String MAT_INTEGRATE;
  String CUSLOTNO2;
}

String savenull(input) {
  String output = '-';
  if (input != null) {
    output = input.toString();
  }
  return output;
}
