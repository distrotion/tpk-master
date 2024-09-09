// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/07-01-P07PROGRESSGETDATA.dart';
import 'P7PROGRESS/P07PROGRESSMAIN.dart';

//---------------------------------------------------------

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page7blockget();
  }
}

class Page7blockget extends StatelessWidget {
  const Page7blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P07PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P07PROGRESSGETDATA_Bloc, List<P07PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page7Body(
              data: data,
            );
          },
        ));
  }
}

class Page7Body extends StatelessWidget {
  Page7Body({
    super.key,
    this.data,
  });
  List<P07PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P07PROGRESSMAIN(
      data: data,
    );
  }
}
