import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/dummydata2.dart';
import '../../page/P1PROGRESS/P01PROGRESSVAR.dart';

//-------------------------------------------------

abstract class P07PROGRESSGETDATA_Event {}

class P07PROGRESSGETDATA_GET extends P07PROGRESSGETDATA_Event {}

class P07PROGRESSGETDATA_GET2 extends P07PROGRESSGETDATA_Event {}

class P07PROGRESSGETDATA_GET3 extends P07PROGRESSGETDATA_Event {}

class P07PROGRESSGETDATA_FLUSH extends P07PROGRESSGETDATA_Event {}

class P07PROGRESSGETDATA_Bloc
    extends Bloc<P07PROGRESSGETDATA_Event, List<P07PROGRESSGETDATAclass>> {
  P07PROGRESSGETDATA_Bloc() : super([]) {
    on<P07PROGRESSGETDATA_GET>((event, emit) {
      return _P07PROGRESSGETDATA_GET([], emit);
    });

    on<P07PROGRESSGETDATA_GET2>((event, emit) {
      return _P07PROGRESSGETDATA_GET2([], emit);
    });

    on<P07PROGRESSGETDATA_GET3>((event, emit) {
      return _P07PROGRESSGETDATA_GET3([], emit);
    });

    on<P07PROGRESSGETDATA_FLUSH>((event, emit) {
      return _P07PROGRESSGETDATA_FLUSH([], emit);
    });
  }

  Future<void> _P07PROGRESSGETDATA_GET(event, emit) async {
    List<P07PROGRESSGETDATAclass> output = [];
    var input = dummydatainput2;

    List<P07PROGRESSGETDATAclass> outputdata = input
        .where(
      (data) =>
          data['location'] == P01PROGRESSVAR.sendLocation &&
          data['plant'] == P01PROGRESSVAR.sendPlant &&
          data[P01PROGRESSVAR.changeStep] == 'YES',
    )
        .map((data) {
      return P07PROGRESSGETDATAclass(
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

  Future<void> _P07PROGRESSGETDATA_GET2(List<P07PROGRESSGETDATAclass> toAdd,
      Emitter<List<P07PROGRESSGETDATAclass>> emit) async {
    List<P07PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P07PROGRESSGETDATAclass> datadummy = [
      P07PROGRESSGETDATAclass(
        PLANT: "PH PO:1234",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P07PROGRESSGETDATAclass(
        PLANT: "PH PO:5555",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P07PROGRESSGETDATAclass(
        PLANT: "PH PO:5556",
        STEP01: "YES",
        STEP02: "YES",
      ),
    ];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P07PROGRESSGETDATA_GET3(List<P07PROGRESSGETDATAclass> toAdd,
      Emitter<List<P07PROGRESSGETDATAclass>> emit) async {
    List<P07PROGRESSGETDATAclass> output = [];
    //-------------------------------------------------------------------------------------
    List<P07PROGRESSGETDATAclass> datadummy = [
      P07PROGRESSGETDATAclass(
        PLANT: "PH PO:1234",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
      ),
      P07PROGRESSGETDATAclass(
        PLANT: "PH PO:5555",
        STEP01: "YES",
        STEP02: "YES",
        STEP03: "YES",
        STEP04: "YES",
      ),
      P07PROGRESSGETDATAclass(
        PLANT: "PH PO:5556",
        STEP01: "YES",
        STEP02: "YES",
      ),
      P07PROGRESSGETDATAclass(
        PLANT: "PH PO:9999",
      ),
    ];

    //-------------------------------------------------------------------------------------
    output = datadummy;
    emit(output);
  }

  Future<void> _P07PROGRESSGETDATA_FLUSH(List<P07PROGRESSGETDATAclass> toAdd,
      Emitter<List<P07PROGRESSGETDATAclass>> emit) async {
    List<P07PROGRESSGETDATAclass> output = [];
    emit(output);
  }
}

class P07PROGRESSGETDATAclass {
  P07PROGRESSGETDATAclass({
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
