import 'package:flutter/material.dart';
import 'package:fidel/features/authentication/view/SignUp/widgets/SignUp/verfied_box.dart';

class VerifiedPage extends StatelessWidget {
  const VerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 200, 32, 32),
            child: Expanded(
              child: Expanded(
                child: Container(
                  constraints: const BoxConstraints(
                    maxHeight: 350,
                    maxWidth: 500,
                  ),
                  color: const Color.fromARGB(255, 16, 2, 33),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Verfiedbox(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
