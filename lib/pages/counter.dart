import 'package:flutter/material.dart';

class MyCounterApp extends StatefulWidget {
  const MyCounterApp({super.key});

  @override
  State<MyCounterApp> createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {

  int counterValue=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.greenAccent
                ),
                  onPressed: (){
                  setState(() {
                    counterValue=counterValue+1;
                  });
                  },
                  child: Text("+")),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.yellowAccent
                  ),
                  onPressed: (){
                    setState(() {
                      counterValue=counterValue-1;
                    });
                  },
                  child: Text("-")),
            ),
            SizedBox(
              height: 15,
            ),
            Text(counterValue.toString(),
            style: TextStyle(fontSize: 50),)
          ],
        ),
      ),
    );
  }
}
