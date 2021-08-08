import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mailing_desktop/data/repository/login_repository.dart';

import '../../app_theme.dart';

class DashboardPage extends StatefulWidget {
   DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _counter = 0;
  final numbers = new List<String>.generate(7, (i) => "Trip folder ${i + 10}");
  int selectedIndex = -1;
  LoginRepository loginRepository =LoginRepository();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    loginRepository.fetchEmail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: accentColor,
        title: Text('MailBook'),
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              color: paleGrey,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18, left: 10),
                      child: Text('Available folders',  style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        ),),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: ListView.builder(
                        padding: EdgeInsets.only(right: 10, top: 2),
                        itemCount: numbers.length,
                        itemBuilder: (context, index) {
                          return Card(
                              elevation: 2,
                              child: ClipPath(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          right: BorderSide(
                                              color: selectedIndex == index
                                                  ? Colors.white
                                                  : accentColor,
                                              width: 5))),
                                  child: ListTile(
                                    selected:
                                        selectedIndex == index ? true : false,
                                    selectedTileColor: selectedIndex == index
                                        ? accentColor
                                        : Colors.white,
                                    title: Text(
                                      numbers[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: selectedIndex == index
                                            ? whiteColor
                                            : greyDarken,
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                  ),
                                ),
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(3))),
                              ));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(accentColor),
                        foregroundColor:  MaterialStateProperty.all(whiteColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      ))),
                      child: Text('Add Folder'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 2,
              color: Colors.black45,
              height: MediaQuery.of(context).size.height,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start                                                                                                                                                                                                                                              ,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Card(
                  elevation: 2,
                  child: ClipPath(
                    child: Container(
                      decoration: BoxDecoration(
                         ),
                      child: ListTile(

                        title: Text(
                          'Merged #4 into main. — You are receiving this because you authored the thread. Reply to this email directly, view it on GitHub, or unsubscribe. Triage notifications on the go with GitHub Mobile for iOS',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,

                          ),
                        ),
                      ),
                    ),
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(3))),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: accentColor,
        onPressed: _incrementCounter,
        tooltip: 'Create new message',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
