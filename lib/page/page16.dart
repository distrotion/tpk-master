// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/16-01-P16PROGRESSGETDATA.dart';
import 'P16PROGRESS/P16PROGRESSMAIN.dart';

//---------------------------------------------------------

class Page16 extends StatelessWidget {
  const Page16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page16blockget();
  }
}

class Page16blockget extends StatelessWidget {
  const Page16blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P16PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P16PROGRESSGETDATA_Bloc, List<P16PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page16Body(
              data: data,
            );
          },
        ));
  }
}

class Page16Body extends StatelessWidget {
  Page16Body({
    super.key,
    this.data,
  });
  List<P16PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P16PROGRESSMAIN(
      data: data,
    );
  }
}
