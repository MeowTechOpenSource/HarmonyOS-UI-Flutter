import 'package:flutter/material.dart';
import 'package:harmonyos/harmonyos.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return HMAbility(
      body: Column(children: [
        HMButton(onPressed: () {}, child: Text("Button")),
        HMButton(
            onPressed: () {}, isDanger: true, child: Text("Danger Button")),
        HMElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
        HMTextButton(onPressed: () {}, child: Text("Text Button")),
        HMIconButton(onPressed: () {}, icon: Icon(Icons.abc)),
        HMTextInput(placeholder: "Text Input",prefixIcon: Icon(Icons.abc),grey: true,),
        HMElevatedButton(
            onPressed: () {
              showHMDialog(
                  false,
                  context,
                  [
                    HMTextButton(onPressed: () {}, child: Text("123")),
                    HMTextButton(onPressed: () {}, child: Text("123"))
                  ],
                  "Test123",
                  Text("1234"),
                  true);
            },
            child: Text("Show Dialog"))
      ]),
      title: "HarmonyOS UI Library Example",
      actions:[
        HMIconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded,color: Colors.black,))
      ],
      floatingActionButton: HMFloatingActionButton(
        child: Icon(
          Icons.add_rounded,
          color: Colors.white,
        ),
        onPress: () {},
      ),
    );
  }
}
