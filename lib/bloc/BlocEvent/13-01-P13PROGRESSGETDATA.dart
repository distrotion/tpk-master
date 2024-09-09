import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/global.dart';
import '../../page/P13PROGRESS/P13PROGRESSMAIN.dart';
import '../../widget/common/Loading.dart';

//-------------------------------------------------

abstract class P13PROGRESSGETDATA_Event {}

class P13PROGRESSGETDATA_GET extends P13PROGRESSGETDATA_Event {}

class P13PROGRESSGETDATA_GET2 extends P13PROGRESSGETDATA_Event {}

class P13PROGRESSGETDATA_GET3 extends P13PROGRESSGETDATA_Event {}

class P13PROGRESSGETDATA_FLUSH extends P13PROGRESSGETDATA_Event {}

class P13PROGRESSGETDATA_Bloc
    extends Bloc<P13PROGRESSGETDATA_Event, List<P13PROGRESSGETDATAclass>> {
  P13PROGRESSGETDATA_Bloc() : super([]) {
    on<P13PROGRESSGETDATA_GET>((event, emit) {
      return _P13PROGRESSGETDATA_GET([], emit);
    });

    on<P13PROGRESSGETDATA_GET2>((event, emit) {
      return _P13PROGRESSGETDATA_GET2([], emit);
    });
    on<P13PROGRESSGETDATA_GET3>((event, emit) {
      return _P13PROGRESSGETDATA_GET3([], emit);
    });
    on<P13PROGRESSGETDATA_FLUSH>((event, emit) {
      return _P13PROGRESSGETDATA_FLUSH([], emit);
    });
  }

  Future<void> _P13PROGRESSGETDATA_GET(List<P13PROGRESSGETDATAclass> toAdd,
      Emitter<List<P13PROGRESSGETDATAclass>> emit) async {
    FreeLoadingTan(P13PROGRESSMAINcontext);
    List<P13PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    final response = await Dio().post(
      "${server}getsap/getincomming_2",
      data: {
        "IMP_WERKS": USERDATA.BRANCHNUMBER.toString(),
        "IMP_PRCTR": USERDATA.PLANTNUMBER.toString(),
        // "IMP_WERKS": 2100,
        // "IMP_PRCTR": 21000,
        "LAST_DATE": "${'01'}-${'01'}-${'2024'}",
        "LAST_TIME": "${'00'}:${'00'}:00",
        // "LAST_DATE": "01-04-2024",
        // "LAST_TIME": "19:00:08"
      },
    );
    var input = [];
    // var input = actualdata;
    Navigator.pop(P13PROGRESSMAINcontext);
    if (response.statusCode == 200) {
      print(response.statusCode);
      // print(response.data);
      var databuff = response.data;
      input = databuff;

      List<P13PROGRESSGETDATAclass> outputdata = input.map((dataActual) {
        return P13PROGRESSGETDATAclass(
          BRANCH: savenull(dataActual['WERKS']),
          TYPE: savenull(dataActual['TYPE']),
          MATCP: savenull(dataActual['MATNR']?.substring(10)),
          CHARG: savenull(dataActual['CHARG']),
          QTY: savenull(dataActual['MENGE']),
          UNIT: savenull(dataActual['MEINS']),
          QTY_ISP: savenull(dataActual['MENGE_ISP']),
          UNIT_ISP: savenull(dataActual['MEINS_ISP']),
          KUNNR: savenull(dataActual['KUNNR']),
          CUST_LOT: savenull(dataActual['CUST_LOT']),
          PARTNAME: savenull(dataActual['PART_NM']),
          PART_NO: savenull(dataActual['PART_NO']),
          ISP_ID: savenull(dataActual['ISP_ID']),
          NAME: savenull(dataActual['NAME']),
          SURNAME: savenull(dataActual['SURNAME']),
          STATUS: savenull(dataActual['STATUS']),
          ISP_DATE: savenull(dataActual['ISP_DATE']),
          ISP_TIME: savenull(dataActual['ISP_TIME']),
          CUST_SHORT: savenull(dataActual['SORTL']),
          CUST_FULL: savenull(dataActual['NAME1']),
          MATCP_FG: savenull(dataActual['MATNR_FG']),
          PLANT: savenull(dataActual['PROC_PRDHA']),
        );
      }).toList();

      output = outputdata;
      emit(output);
    } else {
      Navigator.pop(P13PROGRESSMAINcontext);
      print("where is my server");
      output = [];
      emit(output);
    }
  }

  Future<void> _P13PROGRESSGETDATA_GET2(List<P13PROGRESSGETDATAclass> toAdd,
      Emitter<List<P13PROGRESSGETDATAclass>> emit) async {
    List<P13PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P13PROGRESSGETDATAclass> datadummy = [];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P13PROGRESSGETDATA_GET3(List<P13PROGRESSGETDATAclass> toAdd,
      Emitter<List<P13PROGRESSGETDATAclass>> emit) async {
    List<P13PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P13PROGRESSGETDATAclass> datadummy = [];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P13PROGRESSGETDATA_FLUSH(List<P13PROGRESSGETDATAclass> toAdd,
      Emitter<List<P13PROGRESSGETDATAclass>> emit) async {
    List<P13PROGRESSGETDATAclass> output = [];
    emit(output);
  }
}

class P13PROGRESSGETDATAclass {
  P13PROGRESSGETDATAclass({
    this.BRANCH = '',
    this.TYPE = '',
    this.MATCP = '',
    this.CHARG = '',
    this.QTY = '',
    this.UNIT = '',
    this.QTY_ISP = '',
    this.UNIT_ISP = '',
    this.KUNNR = '',
    this.CUST_LOT = '',
    this.PARTNAME = '',
    this.PART_NO = '',
    this.ISP_ID = '',
    this.NAME = '',
    this.SURNAME = '',
    this.STATUS = '',
    this.ISP_DATE = '',
    this.ISP_TIME = '',
    this.CUST_SHORT = '',
    this.CUST_FULL = '',
    this.MATCP_FG = '',
    this.PLANT = '',
  });

  String BRANCH;
  String TYPE;
  String MATCP;
  String CHARG;
  String QTY;
  String UNIT;
  String QTY_ISP;
  String UNIT_ISP;
  String KUNNR;
  String CUST_LOT;
  String PARTNAME;
  String PART_NO;
  String ISP_ID;
  String NAME;
  String SURNAME;
  String STATUS;
  String ISP_DATE;
  String ISP_TIME;
  String CUST_SHORT;
  String CUST_FULL;
  String MATCP_FG;
  String PLANT;
}

String savenull(input) {
  String output = '-';
  if (input != null) {
    output = input.toString();
  }
  return output;
}
