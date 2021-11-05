import 'package:flutter/material.dart';
import 'package:clonegmail/screen/sidebar.dart';

class HOME extends StatefulWidget {
  @override
  _HOMEState createState() => _HOMEState();
}

class _HOMEState extends State<HOME> with TickerProviderStateMixin {
//late TabController _controller;
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     // ignore: deprecated_member_use
      //     title: Text('Beranda'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.mail),
      //       // ignore: deprecated_member_use
      //       title: Text('Inbox'),
      //       ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //      // ignore: deprecated_member_use
      //       title: Text('Akun'),
      //       ),
      //   ],
      //   currentIndex: 0,
      //   selectedItemColor: Colors.green,
      //   unselectedItemColor: Colors.grey,
      //   showUnselectedLabels: true,
      // ),

      bottomNavigationBar: Container(
        height: 100,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              // ignore: deprecated_member_use
              title: Text('Pesan'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              // ignore: deprecated_member_use
              title: Text("Meet"),
            ),
          ],
          currentIndex: 0,
	  backgroundColor: Color(0xF1F5FB),	  
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
        //   indicatorColor: Colors.deepPurple,
        //   unselectedLabelColor: Colors.grey,
        //   controller: _controller,
        //   labelColor: Colors.red,
        //   indicatorSize: TabBarIndicatorSize.tab,
        //   tabs: [
        //     Icon(
        //       Icons.mail,
        //     ),
        //     Icon(
        //       Icons.video_call,
        //     ),
        //   ],
        // ),
      ),
      key: _drawerkey,
      drawer: SideBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 0),
                      )
                    ]),
                child: RawMaterialButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _drawerkey.currentState!.openDrawer();
                          },
                          child: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Search in mail',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        SizedBox(
                          width: 35,
                          child: RawMaterialButton(
                            onPressed: () {},
                            child: CircleAvatar(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
