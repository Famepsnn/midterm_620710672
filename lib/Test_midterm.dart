class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.purple[800]),
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(16),
          child: Center(
            child: Column(
              //mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/guess_logo.png', width: 100.0),
                    Column(
                      children: [
                        Text(' GUESS',
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.lightBlue.shade300),
                            textAlign: TextAlign.center),
                        Text('  THE NUMBER',
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.blue.shade300),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Random')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
