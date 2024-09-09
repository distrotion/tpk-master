import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/global.dart';
import '../../page/P26PROGRESS/P26PROGRESSMAIN.dart';
import '../../widget/common/Loading.dart';

//-------------------------------------------------

abstract class P26PROGRESSGETDATA_Event {}

class P26PROGRESSGETDATA_GET extends P26PROGRESSGETDATA_Event {}

class P26PROGRESSGETDATA_GET2 extends P26PROGRESSGETDATA_Event {}

class P26PROGRESSGETDATA_GET3 extends P26PROGRESSGETDATA_Event {}

class P26PROGRESSGETDATA_FLUSH extends P26PROGRESSGETDATA_Event {}

class P26PROGRESSGETDATA_Bloc
    extends Bloc<P26PROGRESSGETDATA_Event, List<P26PROGRESSGETDATAclass>> {
  P26PROGRESSGETDATA_Bloc() : super([]) {
    on<P26PROGRESSGETDATA_GET>((event, emit) {
      return _P26PROGRESSGETDATA_GET([], emit);
    });

    on<P26PROGRESSGETDATA_GET2>((event, emit) {
      return _P26PROGRESSGETDATA_GET2([], emit);
    });
    on<P26PROGRESSGETDATA_GET3>((event, emit) {
      return _P26PROGRESSGETDATA_GET3([], emit);
    });
    on<P26PROGRESSGETDATA_FLUSH>((event, emit) {
      return _P26PROGRESSGETDATA_FLUSH([], emit);
    });
  }

  Future<void> _P26PROGRESSGETDATA_GET(List<P26PROGRESSGETDATAclass> toAdd,
      Emitter<List<P26PROGRESSGETDATAclass>> emit) async {
    FreeLoadingTan(P26PROGRESSMAINcontext);
    List<P26PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    final response = await Dio().post(
      "${server2}datacentertest/getsoi8order",
      data: {"PLANT": USERDATA.PLANT, "ORDER": USERDATA.ORDER},
    );
    var input = [];
    if (response.statusCode == 200) {
      print(response.statusCode);
      // print(response.data);
      var databuff = response.data;
      input = databuff;

      List<P26PROGRESSGETDATAclass> outputdata = input
          .where((dataActual) =>
              dataActual['StrChemical'] != 'END' &&
              dataActual['StrBarcode'] != 'END')
          .map((dataActual) {
        return P26PROGRESSGETDATAclass(
          ID: savenull(dataActual['ID']),
          TIMESTART: savenull(dataActual['RecordTimeStart']),
          ORDER: savenull(dataActual['NumOrder']),
          TANK: savenull(dataActual['NumTank']),
          NUMMODE: savenull(dataActual['NumMode']),
          CHEMICALNAME: savenull(dataActual['StrChemical']),
          LOT: savenull(dataActual['StrLotNum']),
          BARCODE: savenull(dataActual['StrBarcode']),
          NUMMODEOPER: savenull(dataActual['NumModeOper']),
          STEP: savenull(dataActual['NumStep']),
          SP: savenull(dataActual['NumSp']),
          ACTUAL: savenull(dataActual['NumAct']),
          TEMP: savenull(dataActual['NumTemp']),
          DTDATE: savenull(dataActual['dtDate']),
        );
      }).toList();
      Navigator.pop(P26PROGRESSMAINcontext);

      output = outputdata;
      emit(output);
    } else {
      print("where is my server");
      output = [];
      emit(output);
    }
  }

  Future<void> _P26PROGRESSGETDATA_GET2(List<P26PROGRESSGETDATAclass> toAdd,
      Emitter<List<P26PROGRESSGETDATAclass>> emit) async {
    List<P26PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P26PROGRESSGETDATAclass> datadummy = [];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P26PROGRESSGETDATA_GET3(List<P26PROGRESSGETDATAclass> toAdd,
      Emitter<List<P26PROGRESSGETDATAclass>> emit) async {
    List<P26PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P26PROGRESSGETDATAclass> datadummy = [];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P26PROGRESSGETDATA_FLUSH(List<P26PROGRESSGETDATAclass> toAdd,
      Emitter<List<P26PROGRESSGETDATAclass>> emit) async {
    List<P26PROGRESSGETDATAclass> output = [];
    emit(output);
  }
}

class P26PROGRESSGETDATAclass {
  P26PROGRESSGETDATAclass({
    this.ID = '',
    this.TIMESTART = '',
    this.ORDER = '',
    this.TANK = '',
    this.NUMMODE = '',
    this.CHEMICALNAME = '',
    this.LOT = '',
    this.BARCODE = '',
    this.NUMMODEOPER = '',
    this.STEP = '',
    this.SP = '',
    this.ACTUAL = '',
    this.TEMP = '',
    this.DTDATE = '',
  });

  String ID;
  String TIMESTART;
  String ORDER;
  String TANK;
  String NUMMODE;
  String CHEMICALNAME;
  String LOT;
  String BARCODE;
  String NUMMODEOPER;
  String STEP;
  String SP;
  String ACTUAL;
  String TEMP;
  String DTDATE;
}

String savenull(input) {
  String output = '-';
  if (input != null) {
    output = input.toString();
  }
  return output;
}
