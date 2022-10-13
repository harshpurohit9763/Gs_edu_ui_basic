import 'package:flutter/material.dart';
import 'package:gs_edu/ui_part/ui.dart';
import 'package:gs_edu/widgets/txt_wih_send.dart';

class SubClassScreen extends StatefulWidget {
  const SubClassScreen({super.key});

  @override
  State<SubClassScreen> createState() => _SubClassScreenState();
}

class _SubClassScreenState extends State<SubClassScreen> {
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
                      child: Center(
                          child:
                              (Text('Important feed about this assignment'))),
                    )),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.4,
                width: width * 0.9,
                decoration: BoxDecoration1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 6),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.white,
                              height: height * 0.2,
                              width: width * 0.3,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Topic Name',
                              style: ClassProfNameSub,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Assignment',
                                  style: ClassName,
                                ),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.add))
                              ],
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              ' Discription:',
                              style: Discription,
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.3,
                width: width * 0.9,
                decoration: BoxDecoration1,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: textInputDecoration,
                      height: 0.2,
                      width: width * 0.9,
                      child: Center(
                          child: (Text('important points and notes to refer'))),
                    )),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.08,
                width: width * 0.9,
                decoration: BoxDecoration1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFieldInput(
                    hintText: 'Enter Your Queary',
                    textEditingController: _Queary,
                    textInputType: TextInputType.text,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
