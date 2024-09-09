// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/Cubit/ChangePageEventCUBIT.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page11.dart';
import '../page9.dart';
import 'P08PROGRESSVAR.dart';

class P08PROGRESSMAIN extends StatefulWidget {
  const P08PROGRESSMAIN({super.key});

  @override
  State<P08PROGRESSMAIN> createState() => _P08PROGRESSMAINState();
}

class _P08PROGRESSMAINState extends State<P08PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P08PROGRESSMAINBody();
  }
}

class P08PROGRESSMAINBody extends StatefulWidget {
  const P08PROGRESSMAINBody({super.key});

  @override
  State<P08PROGRESSMAINBody> createState() => _P08PROGRESSMAINBodyState();
}

class _P08PROGRESSMAINBodyState extends State<P08PROGRESSMAINBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: const [Colors.blueAccent, Colors.lightBlueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds),
                child: Text(
                  'SELECT PROGRESS',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            P08PROGRESSVAR.isHoveredHAndS = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            P08PROGRESSVAR.isHoveredHAndS = false;
                          });
                        },
                        child: InkWell(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () {
                            setState(() {
                              P08PROGRESSVAR.isHoveredHAndS = false;
                            });
                            USERDATA.INSMASTER = 'H&S';
                            print(USERDATA.INSMASTER);
                            // CuPage = Page9();
                            // MainBodyContext.read<ChangePage_Bloc>()
                            //     .add(ChangePage_nodrower());
                            MainBodyContext.read<ChangePage_Bloc>()
                                .ChangePage_nodrower('', Page9());
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: P08PROGRESSVAR.isHoveredHAndS
                                    ? Colors.yellowAccent.shade700
                                    : Colors.redAccent.shade700,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: const [
                                      Colors.white,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ).createShader(bounds),
                                  child: TweenAnimationBuilder<double>(
                                    tween: Tween<double>(
                                      begin: P08PROGRESSVAR.isHoveredHAndS
                                          ? 200
                                          : 220,
                                      end: P08PROGRESSVAR.isHoveredHAndS
                                          ? 220
                                          : 200,
                                    ),
                                    duration: Duration(milliseconds: 200),
                                    builder: (context, size, child) {
                                      return TweenAnimationBuilder<Color?>(
                                        tween: ColorTween(
                                          begin: P08PROGRESSVAR.isHoveredHAndS
                                              ? Colors.redAccent.shade700
                                              : Colors.yellowAccent.shade700,
                                          end: P08PROGRESSVAR.isHoveredHAndS
                                              ? Colors.yellowAccent.shade700
                                              : Colors.redAccent.shade700,
                                        ),
                                        duration: Duration(milliseconds: 200),
                                        builder: (context, color, child) {
                                          return Icon(
                                            Icons.fireplace_rounded,
                                            size: size,
                                            color: color,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      Colors.redAccent.shade700,
                                      Colors.yellowAccent.shade700,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds),
                                  child: Text(
                                    'HEAT & SURFACE',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            P08PROGRESSVAR.isHoveredChem = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            P08PROGRESSVAR.isHoveredChem = false;
                          });
                        },
                        child: InkWell(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onTap: () {
                            setState(() {
                              P08PROGRESSVAR.isHoveredChem = false;
                            });
                            USERDATA.INSMASTER = 'CHEMICAL';
                            print(USERDATA.INSMASTER);
                            // CuPage = Page11();
                            // MainBodyContext.read<ChangePage_Bloc>()
                            //     .add(ChangePage_nodrower());
                            MainBodyContext.read<ChangePage_Bloc>()
                                .ChangePage_nodrower('', Page11());
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: P08PROGRESSVAR.isHoveredChem
                                    ? Colors.greenAccent
                                    : Colors.green,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      Colors.white,
                                      Colors.lightGreenAccent.shade400,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ).createShader(bounds),
                                  child: TweenAnimationBuilder<double>(
                                    tween: Tween<double>(
                                      begin: P08PROGRESSVAR.isHoveredChem
                                          ? 200
                                          : 220,
                                      end: P08PROGRESSVAR.isHoveredChem
                                          ? 220
                                          : 200,
                                    ),
                                    duration: Duration(milliseconds: 200),
                                    builder: (context, size, child) {
                                      return TweenAnimationBuilder<Color?>(
                                        tween: ColorTween(
                                          begin: P08PROGRESSVAR.isHoveredChem
                                              ? Colors.greenAccent
                                              : Colors.green,
                                          end: P08PROGRESSVAR.isHoveredChem
                                              ? Colors.greenAccent
                                              : Colors.green,
                                        ),
                                        duration: Duration(milliseconds: 200),
                                        builder: (context, color, child) {
                                          return Icon(
                                            Icons.science_rounded,
                                            size: size,
                                            color: color,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      Colors.green,
                                      Colors.lightGreenAccent.shade400,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds),
                                  child: Text(
                                    'CHEMICAL',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
