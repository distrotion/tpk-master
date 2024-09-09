// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/P19-P25ORDERFROMPLANT.dart';
import 'P21PROGRESS/P21PROGRESSMAIN.dart';

class Page21 extends StatelessWidget {
  const Page21({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page21blockget();
  }
}

class Page21blockget extends StatelessWidget {
  const Page21blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P19PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P19PROGRESSGETDATA_Bloc, List<P19PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page21Body(
              data: data,
            );
          },
        ));
  }
}

class Page21Body extends StatelessWidget {
  Page21Body({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P21PROGRESSMAIN(
      data: data,
    );
  }
}
