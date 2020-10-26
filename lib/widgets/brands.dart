import 'package:flutter/material.dart';
import '../widgets/semilac.dart';

/// This Widget is the main application widget.
class Brand extends StatelessWidget {
  static const String _title = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Image.asset('assets/images/ic_app_icon.png', width: 140),
          const SizedBox(height: 30),
          FlatButton(
            color: Colors.pink[300],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SEMILAC()),
              );
            },
            //child: AssetImage('assets/images/ic_app_icon.png'),
            child: const Text('SEMILAC', style: TextStyle(fontSize: 20)),
          ),
          new Image.asset('assets/images/EMiLac.jpg', width: 140),
          RaisedButton(
            color: Colors.blue[300],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SEMILAC()),
              );
            },
            //child: AssetImage('assets/images/ic_app_icon.png'),
            child: const Text('EMiLac', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SEMILANC',
        theme: ThemeData(primaryColor: Colors.pink, accentColor: Colors.black),
        home: HomePage(),
        routes: {
          DetailPage.routeName: (ctx) => DetailPage(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}*/
