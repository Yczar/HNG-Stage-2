import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG TASK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'HNG TASK'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String printedData = '';
  TextEditingController _textEditingController = TextEditingController(
    text: '',
  );

  void _setData() {
    setState(() {
      printedData = _textEditingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                printedData.isEmpty
                    ? 'Please Enter the text you would love to display and click the submit button below'
                    : printedData,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: printedData.isEmpty ? null : 24,
                ),
              ),
              SizedBox(
                height: 90,
              ),
              TextFormField(
                controller: _textEditingController,
              ),
              SizedBox(
                height: 90,
              ),
              InkWell(
                onTap: () {
                  _setData();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
