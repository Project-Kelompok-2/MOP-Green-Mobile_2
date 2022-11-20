part of 'pages.dart';

class logView extends StatefulWidget {
  const logView({Key? key}) : super(key: key);

  @override
  State<logView> createState() => _logViewState();
}

class _logViewState extends State<logView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pepeq"),
        backgroundColor: Colors.green,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(child: Text("Pepeq")),
      backgroundColor: Colors.white,
    );
  }
}
