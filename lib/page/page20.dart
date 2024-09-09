// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/P19-P25ORDERFROMPLANT.dart';
import 'P20PROGRESS/P20PROGRESSMAIN.dart';

class Page20 extends StatelessWidget {
  const Page20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page20blockget();
  }
}

class Page20blockget extends StatelessWidget {
  const Page20blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P19PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P19PROGRESSGETDATA_Bloc, List<P19PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page20Body(
              data: data,
            );
          },
        ));
  }
}

class Page20Body extends StatelessWidget {
  Page20Body({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P20PROGRESSMAIN(
      data: data,
    );
  }
}
