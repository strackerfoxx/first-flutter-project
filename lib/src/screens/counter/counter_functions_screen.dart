import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({Key? key}) : super(key: key);

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text("Counter Functions"),
        )),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$counter",
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              counter == 1 ? "click" : "clicks",
              style: const TextStyle(fontSize: 30),
            ),
          ],
        )),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: CustomButton(
                  icon: Icons.plus_one,
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                ),
              ),
              const SizedBox(width: 50),
              CustomButton(
                icon: Icons.refresh_rounded,
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
              ),
              const SizedBox(width: 50),
              CustomButton(
                icon: Icons.exposure_minus_1_outlined,
                onPressed: () {
                  setState(() {
                    if (counter == 0) return;
                    counter--;
                  });
                },
              ),
            ],
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(),
      backgroundColor: Colors.teal,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
