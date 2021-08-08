import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mailing_desktop/helpers/screen_size_accessor.dart';
import 'package:mailing_desktop/store/dashboard/dashboard_state.dart';
import 'package:mailing_desktop/ui/common_button.dart';

import '../../../../app_theme.dart';
import '../../text_input.dart';

class NewEmailDialog extends StatefulWidget {
  const NewEmailDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<NewEmailDialog> createState() => _NewEmailDialogState();
}

class _NewEmailDialogState extends State<NewEmailDialog> {
  TextEditingController sendingAddressController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController snippetController = TextEditingController();
  final dashboardState = GetIt.I<DashboardState>();
  File? selectedFile;
  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: screenWidth(context) * .4,
            height: screenHeight(context) * .7,
            decoration: BoxDecoration(
              color: white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 10,
                  color: darkGrey.withOpacity(.5),
                ),
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    const Center(
                      child: Text(
                        'Compose an email',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: textBlueColor),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextInput(
                      controller: sendingAddressController,
                      textInputAction: TextInputAction.next,
                      fieldName: 'To',
                      hintText: 'e.g nikoyan@gmail.com',
                    ),
                    TextInput(
                      controller: subjectController,
                      textInputAction: TextInputAction.next,
                      fieldName: 'Subject',
                      hintText: 'e.g Important',
                    ),
                    TextInput(
                      controller: snippetController,
                      textInputAction: TextInputAction.next,
                      fieldName: 'Text',
                      hintText: '...',
                    ),
                  GestureDetector(child: Row(children: [Icon(Icons.attach_file), Text('Add attachment', style: TextStyle(overflow: TextOverflow.ellipsis),) , SizedBox(width: 40,),Text(selectedFile==null? '' : selectedFile!.path.split('\\').last) ],), onTap: () {
                        var file = OpenFilePicker()
                          ..filterSpecification = {
                            'Word Document (*.doc)': '*.doc',
                            'Web Page (*.htm; *.html)': '*.htm;*.html',
                            'Text Document (*.txt)': '*.txt',
                            'All Files': '*.*'
                          }
                          ..defaultFilterIndex = 0
                          ..defaultExtension = 'doc'
                          ..title = 'Select a document';

                        final result = file.getFile();
                        if (result != null) {
                         // dashboardState.file = file.getFile();
                           selectedFile = File(result.path);
                           setState(() {

                           });
                          //dashboardState.file = dashboardState.file!;
                        // print('aaaaaaaaaa ${file.}');
                        }},),
                    SizedBox(height: 40,),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: CommonButton(
                        text: 'Send',
                        callback: () => dashboardState
                            .sendEmail(
                                sendingAddressController.text,
                                'nikoyanvarsik@gmail.com',
                                snippetController.text,
                                subjectController.text,selectedFile, selectedFile==null? null: selectedFile!.path)
                            .then((value) => AutoRouter.of(context).pop()),
                        color: accentColor,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
