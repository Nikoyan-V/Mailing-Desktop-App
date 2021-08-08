import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mailing_desktop/store/dashboard/dashboard_state.dart';

import '../../../app_theme.dart';
import '../../common_button.dart';
import '../text_input.dart';

class ResetPasswordTypeEmailDialog extends StatefulWidget {
  const ResetPasswordTypeEmailDialog({
    Key? key,
  }) : super(key: key);

  @override
  _ResetPasswordTypeEmailDialogState createState() =>
      _ResetPasswordTypeEmailDialogState();
}

class _ResetPasswordTypeEmailDialogState
    extends State<ResetPasswordTypeEmailDialog> {
  final dashboardState = GetIt.I<DashboardState>();

  TextEditingController folderNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 400,
        width: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextInput(
              controller: folderNameController,
              textInputAction: TextInputAction.next,
              fieldName: 'Name of folder',
              hintText: 'e.g work',
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CommonButton(
                horizontalPadding: 20,
                callback: () async {
                  dashboardState.addFolder(folderNameController.text);
                },
                text: 'OK',
                color: commonButtonColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
