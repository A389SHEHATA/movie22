import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent.shade200,
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.pink.shade900
            ),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                      color: Colors.pink.shade900,
                      width: 1
                    )
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("upcoming movies"),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                          color: Colors.pink.shade900,
                          width: 1
                      )
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("favorite movies"),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                          color: Colors.pink.shade900,
                          width: 1
                      )
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("popular movies"),
                  ),
                ),
              ),

            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
           Icon(Icons.event_seat),
            Icon(Icons.favorite),
            Icon(Icons.event),

          ],
        ),
      ),
    );
  }

}
