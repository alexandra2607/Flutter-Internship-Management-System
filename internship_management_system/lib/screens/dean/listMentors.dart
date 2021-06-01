import 'package:flutter/material.dart';

class ListMentors extends StatelessWidget {
  static final String title = 'Mentors';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}
var names = ['Liam', 'Noah', 'Olivia', 'Ana', 'Microsoft', 'IBM', 'Endava', 'Maeave', 'Julia', 'Michael', 'Orange', 'Vodafone', 'Cegedim', 'Peter', 'Robert', 'SoftVision'];

class _MainPageState extends State<MainPage> {
  int index = 0;
  final items = List.generate(names.length, (counter) => names[counter]);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: buildListViews(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              icon: Text('List'),
              title: Text('Filtre'),
            ),
            BottomNavigationBarItem(
              icon: Text('List'),
              title: Text('Mentors'),
            ),
            
          ],
          onTap: (int index) => setState(() => this.index = index),
        ),
      );

  Widget buildListViews() {
    if (index == 0) {
      return buildBasicListView();
    } else if (index == 1) {
      return buildVerticalListView();
    } else if (index == 2) {
      return buildHorizontalListView();
    } else {
      return Container();
    }
  }

  Widget buildBasicListView() => ListView(
        children: [
          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('Entreprises'),
            subtitle: Text('All your favourite widgets'),
            trailing: Icon(Icons.build, color: Colors.orange),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('Mentors'),
            subtitle: Text('All widgets liked by the community'),
            trailing: Icon(Icons.people, color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.delete_forever, color: Colors.red),
            title: Text('Deleted'),
            onTap: () {
              print('Deleted pressed');
            },
          ),
        ],
      );

  Widget buildVerticalListView() => ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.black),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            title: Text(item),
          );
        },
      );

  Widget buildHorizontalListView() => Container(
        height: 100,
        child: ListView.separated(
          padding: EdgeInsets.all(16),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => Divider(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 16),
              child: Text(item, style: TextStyle(fontSize: 24)),
            );
          },
        ),
      );
}