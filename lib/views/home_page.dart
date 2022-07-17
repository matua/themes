import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  semanticLabel: 'Home',
                )),
            BottomNavigationBarItem(
                label: 'Messages',
                icon: Icon(
                  Icons.email_outlined,
                  semanticLabel: 'Messages',
                )),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  Icons.person,
                  semanticLabel: 'Profile',
                )),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.file_download_outlined),
            )
          ],
          title: Text(widget.title),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Список товаров',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Поиск товаров',
                          suffixIcon: Icon(Icons.search)),
                    )),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Заказать товар'),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    key: UniqueKey(),
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/card.png'),
                        SizedBox(
                          height: 50,
                          child: Text('Краткое описание карточки'),
                        ),
                      ],
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: 4 / 5,
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
