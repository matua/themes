import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                      labelText: 'Поиск товаров',
                      suffixIcon: Icon(
                        Icons.search,
                      )),
                )),
            ElevatedButton(
              onPressed: () {},
              child: Text('Заказать товар'),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircularProgressIndicator(),
        ),
        Expanded(
          child: GridView.builder(
            key: PageStorageKey<String>('pageOne'),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.all(8),
                key: Key(index.toString()),
                child: Column(
                  key: UniqueKey(),
                  children: <Widget>[
                    Image.asset('images/card.png'),
                    Padding(
                        padding: EdgeInsets.all(7),
                        child: Text('Краткое описание карточки')),
                  ],
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
            ),
          ),
        ),
      ],
    );
  }
}
