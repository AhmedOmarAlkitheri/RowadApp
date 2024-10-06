import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  final int currentStep;

  CustomStepper({required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildStep(context, "معلومات\nشخصية", 4),
        _buildDivider(),
        _buildStep(context, "ولي الأمر", 3),
        _buildDivider(),
        _buildStep(context, "الدراسة", 2),
        _buildDivider(),
        _buildStep(context, "التواصل", 1),
        _buildDivider(),
        _buildStep(context, "حدثنا عنك", 0),
      ],
    );
  }

  Widget _buildStep(BuildContext context, String label, int step) {
    bool isActive = currentStep >= step;
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: isActive ? Colors.green : Colors.white,
          child: isActive
              ? Icon(Icons.check, color: Colors.white)
              : CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Text(""), // Leave it empty
                ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Expanded(
      child: Container(
        height: 2,
        color: Colors.black,
      ),
    );
  }
}

class StepperExample extends StatefulWidget {
  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int currentStep = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Stepper")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: CustomStepper(currentStep: currentStep),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: StepperExample(),
    ));
