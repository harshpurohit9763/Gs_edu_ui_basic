import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:gs_edu/ui_part/ui.dart';
import 'package:gs_edu/widgets/assignments.dart';
import 'package:gs_edu/widgets/subClass.dart';
import 'package:gs_edu/widgets/txt_without_send.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class ClassCard extends StatefulWidget {
  const ClassCard({super.key});

  @override
  State<ClassCard> createState() => _ClassCardState();
}

class _ClassCardState extends State<ClassCard> {
  TextEditingController _ClassName = TextEditingController();
  TextEditingController _Standard = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _ClassName.dispose();
    _Standard.dispose();
  }

  FirebaseFirestore _firebase = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;

  addDataToDb() async {
    FirebaseFirestore _firebase = FirebaseFirestore.instance;

    Map<String, dynamic> classDetails = {
      "Class-Name": _ClassName,
      "Prof-Name": _auth.currentUser!.displayName,
      "Standard": _Standard,
    };

    await _firebase
        .collection('All_classes')
        .doc(_auth.currentUser?.displayName)
        .collection('classes')
        .add(classDetails)
        .whenComplete(() => print('data is stored successfully'));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'GS Education',
          textAlign: TextAlign.center,
        ),
      ),
      // body: FirebaseAnimatedList(
      //     query: ref,
      //     shrinkWrap: true,
      //     physics: ScrollPhysics(),
      //     itemBuilder: (context, snapshot, animation, index) {
      //       final data = snapshot.value as Map<dynamic, dynamic>;
      //       return addClass(context);
      //     }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openDialog();

          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => CreateClass()));
        },
        elevation: 0,
        hoverColor: Colors.blue[300],
        child: Icon(Icons.add),
      ),
    );
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(
            "Add new class",
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextFieldInput2(
                      textEditingController: _ClassName,
                      textInputType: TextInputType.text,
                      hintText: 'Enter Class Name'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  TextFieldInput2(
                      textEditingController: _Standard,
                      textInputType: TextInputType.text,
                      hintText: "Enter Standard "),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      addDataToDb();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration2,
                      child: Center(
                        child: Text('Add'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  Padding addClass(
    BuildContext context,
  ) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Assignments()));
        },
        child: Container(
          height: height * 0.25,
          width: width * 0.9,
          decoration: BoxDecoration1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 6),
                child: Container(
                  color: Colors.white,
                  height: height * 0.3,
                  width: width * 0.3,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '$_ClassName',
                        style: ClassName,
                      ),
                      SizedBox(
                        height: height * 0.1,
                      ),
                      Text(
                        '$_Standard',
                        style: ClassProfName,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
