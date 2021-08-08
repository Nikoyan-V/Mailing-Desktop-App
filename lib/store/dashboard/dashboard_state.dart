import 'package:mailing_desktop/data/repository/dashboard_repository.dart';
import 'package:mailing_desktop/model/email/email_model.dart';
import 'package:mobx/mobx.dart';

import '../loading/loading_state.dart';

part 'dashboard_state.g.dart';

class DashboardState = _DashboardState with _$DashboardState;

abstract class _DashboardState with Store {
  final loadingState = LoadingState();
  final dashboardRepository = DashboardRepository();

  @observable
  String currentFolder = '';

  @observable
  ObservableList<EmailModel> emails = <EmailModel>[].asObservable();

  ObservableList<String> folders = <String>[
    'UK',
    'USA',
    'Tenerife',
    'Austria',
    'Ireland'
  ].asObservable();

  @action
  Future<void> addFolder(String folderName) async {
    loadingState.startLoading();
    folders.add(folderName);
    loadingState.stopLoading();
  }

  @action
  Future<void> fetchEmails() async {
    loadingState.stopLoading();
    emails.clear();
    var emailList = await dashboardRepository.fetchEmail(currentFolder);
    emails.addAll(emailList);
    loadingState.stopLoading();
  }

  @action
  Future<void> sendEmail(String to, String from, String plainText,
      String subject) async {
    loadingState.stopLoading();
    await dashboardRepository.sendEmail(to, from, plainText, currentFolder, subject);
    loadingState.stopLoading();
  }

  @action
  void setCurrentFolder(String folder)  {
    loadingState.stopLoading();
    currentFolder = folder;
    loadingState.stopLoading();
  }
}
