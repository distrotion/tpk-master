// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/P19-P25ORDERFROMPLANT.dart';
import 'P19PROGRESS/P19PROGRESSMAIN.dart';

class Page19 extends StatelessWidget {
  const Page19({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page19blockget();
  }
}

class Page19blockget extends StatelessWidget {
  const Page19blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P19PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P19PROGRESSGETDATA_Bloc, List<P19PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page19Body(
              data: data,
            );
          },
        ));
  }
}

class Page19Body extends StatelessWidget {
  Page19Body({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P19PROGRESSMAIN(
      data: data,
    );
  }
}
