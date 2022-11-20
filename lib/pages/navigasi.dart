part of 'pages.dart';

class navigasiPage extends StatefulWidget {
  const navigasiPage({Key? key}) : super(key: key);

  @override
  State<navigasiPage> createState() => _navigasiPageState();
}

class _navigasiPageState extends State<navigasiPage> {
  int index = 0;
  final screens = [
    const dashboard(),
    const logView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Color(0xFF6ad9a0),
            labelTextStyle: MaterialStateProperty.all(const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ))),
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          height: 60,
          backgroundColor: Colors.white,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.note_outlined),
              selectedIcon: Icon(Icons.note),
              label: 'Log view',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outlined),
              selectedIcon: Icon(Icons.person),
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
