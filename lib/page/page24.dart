// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/BlocEvent/P19-P25ORDERFROMPLANT.dart';
import 'P24PROGRESS/P24PROGRESSMAIN.dart';

class Page24 extends StatelessWidget {
  const Page24({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page24blockget();
  }
}

class Page24blockget extends StatelessWidget {
  const Page24blockget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P19PROGRESSGETDATA_Bloc(),
        child:
            BlocBuilder<P19PROGRESSGETDATA_Bloc, List<P19PROGRESSGETDATAclass>>(
          builder: (context, data) {
            return Page24Body(
              data: data,
            );
          },
        ));
  }
}

class Page24Body extends StatelessWidget {
  Page24Body({
    super.key,
    this.data,
  });
  List<P19PROGRESSGETDATAclass>? data;
  @override
  Widget build(BuildContext context) {
    return P24PROGRESSMAIN(
      data: data,
    );
  }
}
