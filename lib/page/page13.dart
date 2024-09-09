// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/13-01-P13PROGRESSGETDATA.dart';
import 'P13PROGRESS/P13PROGRESSMAIN.dart';

//---------------------------------------------------------

class Page13 extends StatelessWidget {
  const Page13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page13blockget();
  }
}

class Page13blockget extends StatelessWidget {
  const Page13blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P13PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P13PROGRESSGETDATA_Bloc, List<P13PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page13Body(
              data: data,
            );
          },
        ));
  }
}

class Page13Body extends StatelessWidget {
  Page13Body({
    super.key,
    this.data,
  });
  List<P13PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P13PROGRESSMAIN(
      data: data,
    );
  }
}
