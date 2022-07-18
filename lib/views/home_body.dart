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
                key: Key(index.toString()),
                child: Column(
                  children: <Widget>[
                    Image.asset('images/card.png'),
                    SizedBox(
                      height: 50,
                      child: Padding(
                          padding: EdgeInsets.all(7),
                          child: Text('Краткое описание карточки')),
                    ),
                  ],
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 1,
              maxCrossAxisExtent: 200,
            ),
          ),
        ),
      ],
    );
  }
}
