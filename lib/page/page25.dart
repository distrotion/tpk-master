// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/P19-P25ORDERFROMPLANT.dart';
import 'P25PROGRESS/P25PROGRESSMAIN.dart';

class Page25 extends StatelessWidget {
  const Page25({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page25blockget();
  }
}

class Page25blockget extends StatelessWidget {
  const Page25blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P19PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P19PROGRESSGETDATA_Bloc, List<P19PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page25Body(
              data: data,
            );
          },
        ));
  }
}

class Page25Body extends StatelessWidget {
  Page25Body({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P25PROGRESSMAIN(
      data: data,
    );
  }
}
