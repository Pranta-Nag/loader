import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:looader/next_screen.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';
// import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const MaterialApp(
    home: LoaderAndShift(),
  ));
}

class LoaderAndShift extends StatefulWidget {
  const LoaderAndShift({super.key});

  @override
  State<LoaderAndShift> createState() => _LoaderAndShiftState();
}

class _LoaderAndShiftState extends State<LoaderAndShift> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NextScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const LoaderScreen();
  }
}

class LoaderScreen extends StatelessWidget {
  const LoaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: /* CircularStepProgressIndicator(
        totalSteps: 100,
        currentStep: 74,
        stepSize: 10,
        selectedColor: Colors.greenAccent,
        unselectedColor: Colors.grey[200],
        padding: 0,
        width: 150,
        height: 150,
        selectedStepSize: 15,
        roundedCap: (_, __) => true,
    ), */
      
      
       /* SpinKitFadingCube(
        color: Colors.amber,
        size: 100,
        
      ) */


      /* Center(
        child: CircularProgressIndicator(),
      ), */

      Container(
    /*    decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          ),
          ),
        ), */

    

        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: const CircularProgressIndicator(
              color: Colors.blue,
              strokeWidth: 6.0,
            ),
          ),
        ),
      ),
    );
  }
}