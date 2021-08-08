import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mailing_desktop/store/dashboard/dashboard_state.dart';
import 'package:mailing_desktop/ui/widgets/dialogs/bottom_sheet_dialog/new_email_dialog.dart';
import 'package:mailing_desktop/ui/widgets/dialogs/reset_password_type_email_dialog.dart';
import 'package:mailing_desktop/ui/widgets/loading.dart';

import '../../app_theme.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final dashboardState = GetIt.I<DashboardState>();

  @override
  void initState() {
    super.initState();
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
                      child: Text(
                        'Available folders',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Observer(
                      builder: (_) => ListView.builder(
                          padding: EdgeInsets.only(right: 10, top: 2),
                          itemCount: dashboardState.folders.length,
                          itemBuilder: (context, index) {
                            return Card(
                                elevation: 2,
                                child: ClipPath(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: dashboardState
                                                            .currentFolder ==
                                                        dashboardState
                                                            .folders[index]
                                                    ? Colors.white
                                                    : accentColor,
                                                width: 5))),
                                    child: Observer(
                                      builder: (_) => ListTile(
                                        selected: dashboardState
                                                    .currentFolder ==
                                                dashboardState.folders[index]
                                            ? true
                                            : false,
                                        selectedTileColor: dashboardState
                                                    .currentFolder ==
                                                dashboardState.folders[index]
                                            ? accentColor
                                            : Colors.white,
                                        title: Text(
                                          dashboardState.folders[index],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color:
                                                dashboardState.currentFolder ==
                                                        index
                                                    ? whiteColor
                                                    : greyDarken,
                                          ),
                                        ),
                                        onTap: () {
                                          //  dashboardState.setCurrentFolder(dashboardState.folders[index]);
                                          dashboardState.currentFolder =
                                              dashboardState.folders[index];
                                          dashboardState.fetchEmails();
                                        },
                                      ),
                                    ),
                                  ),
                                  clipper: ShapeBorderClipper(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3))),
                                ));
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(accentColor),
                          foregroundColor:
                              MaterialStateProperty.all(whiteColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      child: Text('Add Folder'),
                      onPressed: () {
                        showDialog(
                            context: context,
                            useRootNavigator: false,
                            builder: (context) =>
                                const ResetPasswordTypeEmailDialog());
                      },
                    ),
                  ),
                ],
              ),
            ),
            Observer(
              builder: (_) => Stack(
                children: [
                  !dashboardState.loadingState.loading
                      ? Expanded(
                          child: ListView.builder(
                              padding: EdgeInsets.only(right: 10, top: 2),
                              itemCount: dashboardState.emails.length,
                              itemBuilder: (context, index) {
                                return Card(
                                    elevation: 2,
                                    child: ClipPath(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border(
                                                right: BorderSide(
                                                    color: accentColor,
                                                    width: 5))),
                                        child: ListTile(
                                          title: Text(
                                            dashboardState.emails[index].from!,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: dashboardState
                                                          .currentFolder ==
                                                      index
                                                  ? whiteColor
                                                  : greyDarken,
                                            ),
                                          ),
                                          subtitle: Text(
                                            dashboardState
                                                .emails[index].snippet!,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: dashboardState
                                                          .currentFolder ==
                                                      index
                                                  ? whiteColor
                                                  : greyDarken,
                                            ),
                                          ),
                                          trailing: Text(
                                            dashboardState.emails[index].date!
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: accentColor),
                                          ),
                                          // onTap: () {
                                          //   setState(() {
                                          //     dashboardState.currentFolder =
                                          //         dashboardState.folders[index];
                                          //     dashboardState.fetchEmails();
                                          //   });
                                          // },
                                        ),
                                      ),
                                      clipper: ShapeBorderClipper(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3))),
                                    ));
                              }),
                        )
                      : Loading(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: dashboardState.currentFolder.isNotEmpty,
        child: FloatingActionButton(
          backgroundColor: accentColor,
          onPressed: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) => Observer(builder: (_) => NewEmailDialog()),
          ),
          tooltip: 'Create new message',
          child: Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
