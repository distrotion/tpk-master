// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/27-01-P27PROGRESSGETDATA.dart';
import 'P27PROGRESS/P27PROGRESSMAIN.dart';

//---------------------------------------------------------

class Page27 extends StatelessWidget {
  const Page27({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page27blockget();
  }
}

class Page27blockget extends StatelessWidget {
  const Page27blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P27PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P27PROGRESSGETDATA_Bloc, List<P27PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page27Body(
              data: data,
            );
          },
        ));
  }
}

class Page27Body extends StatelessWidget {
  Page27Body({
    super.key,
    this.data,
  });
  List<P27PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P27PROGRESSMAIN(
      data: data,
    );
  }
}
