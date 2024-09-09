// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'P17PROGRESSVAR.dart';

class P17PROGRESSMAIN extends StatefulWidget {
  const P17PROGRESSMAIN({super.key});

  @override
  State<P17PROGRESSMAIN> createState() => _P17PROGRESSMAINState();
}

class _P17PROGRESSMAINState extends State<P17PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P17PROGRESSMAINBody();
  }
}

class P17PROGRESSMAINBody extends StatefulWidget {
  const P17PROGRESSMAINBody({super.key});

  @override
  State<P17PROGRESSMAINBody> createState() => _P17PROGRESSMAINBodyState();
}

class _P17PROGRESSMAINBodyState extends State<P17PROGRESSMAINBody> {
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
                  'TEST LINK DROPDOWN',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First Dropdown
              SizedBox(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text('Select First'),
                    value: P17PROGRESSVAR.FirstDropdown,
                    onChanged: (newValue) {
                      setState(() {
                        P17PROGRESSVAR.FirstDropdown = newValue;
                        P17PROGRESSVAR.SecondDropdown = null;
                        P17PROGRESSVAR.ThirdDropdown = null;
                      });
                    },
                    items:
                        P17PROGRESSVAR.dropdownItems.keys.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(width: 20),
              // Second Dropdown
              SizedBox(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text('Select Second'),
                    value: P17PROGRESSVAR.SecondDropdown,
                    onChanged: (newValue) {
                      setState(() {
                        P17PROGRESSVAR.SecondDropdown = newValue;
                        P17PROGRESSVAR.ThirdDropdown = null;
                      });
                    },
                    items: P17PROGRESSVAR.FirstDropdown != null
                        ? P17PROGRESSVAR
                            .dropdownItems[P17PROGRESSVAR.FirstDropdown]!
                            .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList()
                        : [],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(width: 20),
              // Third Dropdown
              SizedBox(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text('Select Third'),
                    value: P17PROGRESSVAR.ThirdDropdown,
                    onChanged: (newValue) {
                      setState(() {
                        P17PROGRESSVAR.ThirdDropdown = newValue;
                      });
                    },
                    items: P17PROGRESSVAR.SecondDropdown != null
                        ? P17PROGRESSVAR
                            .getThirdDropdownItems(
                                P17PROGRESSVAR.SecondDropdown!)
                            .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList()
                        : [],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
