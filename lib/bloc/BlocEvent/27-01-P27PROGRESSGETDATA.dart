import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/dummydataplanning.dart';
import '../../page/P27PROGRESS/P27PROGRESSMAIN.dart';
import '../../widget/common/Loading.dart';

//-------------------------------------------------

abstract class P27PROGRESSGETDATA_Event {}

class P27PROGRESSGETDATA_GET extends P27PROGRESSGETDATA_Event {}

class P27PROGRESSGETDATA_GET2 extends P27PROGRESSGETDATA_Event {}

class P27PROGRESSGETDATA_GET3 extends P27PROGRESSGETDATA_Event {}

class P27PROGRESSGETDATA_FLUSH extends P27PROGRESSGETDATA_Event {}

class P27PROGRESSGETDATA_Bloc
    extends Bloc<P27PROGRESSGETDATA_Event, List<P27PROGRESSGETDATAclass>> {
  P27PROGRESSGETDATA_Bloc() : super([]) {
    on<P27PROGRESSGETDATA_GET>((event, emit) {
      return _P27PROGRESSGETDATA_GET([], emit);
    });

    on<P27PROGRESSGETDATA_GET2>((event, emit) {
      return _P27PROGRESSGETDATA_GET2([], emit);
    });
    on<P27PROGRESSGETDATA_GET3>((event, emit) {
      return _P27PROGRESSGETDATA_GET3([], emit);
    });
    on<P27PROGRESSGETDATA_FLUSH>((event, emit) {
      return _P27PROGRESSGETDATA_FLUSH([], emit);
    });
  }

  Future<void> _P27PROGRESSGETDATA_GET(List<P27PROGRESSGETDATAclass> toAdd,
      Emitter<List<P27PROGRESSGETDATAclass>> emit) async {
    FreeLoadingTan(P27PROGRESSMAINcontext);
    List<P27PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    var input = dummydatainputplanning;

    List<P27PROGRESSGETDATAclass> outputdata = input.map((dataActual) {
      return P27PROGRESSGETDATAclass(
        PLANT: savenull(dataActual['plant']),
        LOT: savenull(dataActual['lot']),
        CHMNAME: savenull(dataActual['chmname']),
        QTY: savenull(dataActual['qty']),
        TANK: savenull(dataActual['tank']),
        MIXER: savenull(dataActual['mixer']),
        PACKAGING: savenull(dataActual['packaging']),
      );
    }).toList();
    Navigator.pop(P27PROGRESSMAINcontext);

    output = outputdata;
    emit(output);
  }

  Future<void> _P27PROGRESSGETDATA_GET2(List<P27PROGRESSGETDATAclass> toAdd,
      Emitter<List<P27PROGRESSGETDATAclass>> emit) async {
    List<P27PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P27PROGRESSGETDATAclass> datadummy = [];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P27PROGRESSGETDATA_GET3(List<P27PROGRESSGETDATAclass> toAdd,
      Emitter<List<P27PROGRESSGETDATAclass>> emit) async {
    List<P27PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P27PROGRESSGETDATAclass> datadummy = [];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P27PROGRESSGETDATA_FLUSH(List<P27PROGRESSGETDATAclass> toAdd,
      Emitter<List<P27PROGRESSGETDATAclass>> emit) async {
    List<P27PROGRESSGETDATAclass> output = [];
    emit(output);
  }
}

class P27PROGRESSGETDATAclass {
  P27PROGRESSGETDATAclass({
    this.PLANT = '',
    this.LOT = '',
    this.CHMNAME = '',
    this.QTY = '',
    this.TANK = '',
    this.MIXER = '',
    this.PACKAGING = '',
  });

  String PLANT;
  String LOT;
  String CHMNAME;
  String QTY;
  String TANK;
  String MIXER;
  String PACKAGING;
}

String savenull(input) {
  String output = '-';
  if (input != null) {
    output = input.toString();
  }
  return output;
}
