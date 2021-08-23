import 'package:findskill/core/progress_tracker/progress_tracker.dart';
import 'package:flutter/material.dart';

class EmployerPage extends StatefulWidget {
  const EmployerPage({Key? key}) : super(key: key);

  @override
  State<EmployerPage> createState() => _EmployerPageState();
}

class _EmployerPageState extends State<EmployerPage> {
  static const ProgressKey pKey = ProgressKey.employerHome;

  @override
  void initState() {
    saveProgress(pKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
      ),
    );
  }
}
