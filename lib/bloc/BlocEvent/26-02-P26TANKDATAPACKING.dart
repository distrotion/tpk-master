import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/global.dart';
import '../../page/P26PROGRESS/P26PROGRESSMAIN.dart';
import '../../widget/common/Loading.dart';

//-------------------------------------------------

abstract class P26TANKDATAPACKING_Event {}

class P26TANKDATAPACKING_GET extends P26TANKDATAPACKING_Event {}

class P26TANKDATAPACKING_GET2 extends P26TANKDATAPACKING_Event {}

class P26TANKDATAPACKING_GET3 extends P26TANKDATAPACKING_Event {}

class P26TANKDATAPACKING_FLUSH extends P26TANKDATAPACKING_Event {}

class P26TANKDATAPACKING_Bloc
    extends Bloc<P26TANKDATAPACKING_Event, P26TANKDATAPACKINGclass> {
  P26TANKDATAPACKING_Bloc() : super(P26TANKDATAPACKINGclass()) {
    on<P26TANKDATAPACKING_GET>((event, emit) {
      return _P26TANKDATAPACKING_GET(P26TANKDATAPACKINGclass(), emit);
    });

    on<P26TANKDATAPACKING_FLUSH>((event, emit) {
      return _P26TANKDATAPACKING_FLUSH(P26TANKDATAPACKINGclass(), emit);
    });
  }

  Future<void> _P26TANKDATAPACKING_GET(P26TANKDATAPACKINGclass toAdd,
      Emitter<P26TANKDATAPACKINGclass> emit) async {
    // FreeLoadingTan(P26PROGRESSMAINcontext);
    P26TANKDATAPACKINGclass output = P26TANKDATAPACKINGclass();
    //-------------------------------------------------------------------------------------
    final response = await Dio().post(
      "${server2}datacentertest/getsoi8order-pack",
      data: {"PLANT": USERDATA.PLANT, "ORDER": USERDATA.ORDER},
    );
    var input = [];
    if (response.statusCode == 200) {
      // print(response.statusCode);
      print(response.data);
      var databuff = response.data;
      // input = databuff;
      if (databuff.length > 0) {
        output = P26TANKDATAPACKINGclass(
          NumOrder: savenull(databuff[0]['NumOrder']),
          NumPackSize1: savenull(databuff[0]['NumPackSize1']),
          NumQuantity1: savenull(databuff[0]['NumQuantity1']),
          NumPackSize2: savenull(databuff[0]['NumPackSize2']),
          NumQuantity2: savenull(databuff[0]['NumQuantity2']),
          NumPackSize3: savenull(databuff[0]['NumPackSize3']),
          NumQuantity3: savenull(databuff[0]['NumQuantity3']),
        );
      }

      // Navigator.pop(P26PROGRESSMAINcontext);

      emit(output);
    } else {
      print("where is my server");

      emit(output);
    }
  }

  Future<void> _P26TANKDATAPACKING_FLUSH(P26TANKDATAPACKINGclass toAdd,
      Emitter<P26TANKDATAPACKINGclass> emit) async {
    P26TANKDATAPACKINGclass output = P26TANKDATAPACKINGclass();
    emit(output);
  }
}

//  ,[NumPackSize1]
//       ,[NumQuantity1]
//       ,[NumPackSize2]
//       ,[NumQuantity2]
//       ,[NumPackSize3]
//       ,[NumQuantity3]

class P26TANKDATAPACKINGclass {
  P26TANKDATAPACKINGclass({
    this.NumOrder = '',
    this.NumPackSize1 = '',
    this.NumQuantity1 = '',
    this.NumPackSize2 = '',
    this.NumQuantity2 = '',
    this.NumPackSize3 = '',
    this.NumQuantity3 = '',
  });

  String NumOrder;
  String NumPackSize1;
  String NumQuantity1;
  String NumPackSize2;
  String NumQuantity2;
  String NumPackSize3;
  String NumQuantity3;
}

String savenull(input) {
  String output = '-';
  if (input != null) {
    output = input.toString();
  }
  return output;
}
