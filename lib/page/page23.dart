// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/P19-P25ORDERFROMPLANT.dart';
import 'P23PROGRESS/P23PROGRESSMAIN.dart';

class Page23 extends StatelessWidget {
  const Page23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page23blockget();
  }
}

class Page23blockget extends StatelessWidget {
  const Page23blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P19PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P19PROGRESSGETDATA_Bloc, List<P19PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page23Body(
              data: data,
            );
          },
        ));
  }
}

class Page23Body extends StatelessWidget {
  Page23Body({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P23PROGRESSMAIN(
      data: data,
    );
  }
}
