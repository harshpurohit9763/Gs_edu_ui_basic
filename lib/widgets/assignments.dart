import 'package:flutter/material.dart';
import 'package:gs_edu/ui_part/ui.dart';
import 'package:gs_edu/widgets/subClass.dart';
import 'package:gs_edu/widgets/txt_wih_send.dart';

class Assignments extends StatefulWidget {
  const Assignments({super.key});

  @override
  State<Assignments> createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments> {
  TextEditingController _Queary = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Container(
                height: height * 0.1,
                width: width * 0.9,
                decoration: BoxDecoration1,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: textInputDecoration,
                      height: 0.3,
                      width: width * 0.6,
                      child:
                          Center(child: (Text('Important feeds From Class'))),
                    )),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SubClassScreen()));
                },
                child: Container(
                  height: height * 0.3,
                  width: width * 0.9,
                  decoration: BoxDecoration1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Assignment No.',
                                style: ClassName,
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Text(
                                ' Discription:',
                                style: Discription,
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Column(
                            children: [
                              Container(
                                color: Colors.white,
                                height: height * 0.22,
                                width: width * 0.35,
                                child: Center(
                                  child: Text('Pdf Preview'),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
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
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        hoverColor: Colors.blue[300],
        child: Icon(Icons.add),
      ),
    );
  }
}
