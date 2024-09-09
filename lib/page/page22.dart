// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/P19-P25ORDERFROMPLANT.dart';
import 'P22PROGRESS/P22PROGRESSMAIN.dart';

class Page22 extends StatelessWidget {
  const Page22({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page22blockget();
  }
}

class Page22blockget extends StatelessWidget {
  const Page22blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P19PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P19PROGRESSGETDATA_Bloc, List<P19PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page22Body(
              data: data,
            );
          },
        ));
  }
}

class Page22Body extends StatelessWidget {
  Page22Body({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P22PROGRESSMAIN(
      data: data,
    );
  }
}
