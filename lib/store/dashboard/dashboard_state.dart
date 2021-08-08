
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mailing_desktop/data/repository/login_repository.dart';
import 'package:mailing_desktop/model/email/email_model.dart';
import 'package:mobx/mobx.dart';

import '../../helpers/storage_helper.dart';
import '../loading/loading_state.dart';

part 'dashboard_state.g.dart';


class DashboardState = _DashboardState with _$DashboardState;

abstract class _DashboardState with Store {
  final loadingState = LoadingState();
  final dashboardRepository = DashboardRepository();


//
  // @observable
  // bool userHasToken = false;
  //
  // @observable
  // int? currentTabIndex = 1;
  //
  // @observable
  // int allDealsQuantity = 0;
  //
  // @observable
  // CategoryModel? selectedCategory;
  //
  // @observable
  // CategoryModel? selectedOnlineCategory;
  //
  // @observable
  // RegionModel? selectedRegion;
  //
  // @observable
  // ObservableList<LocationModel> locationList = <LocationModel>[].asObservable();
  //
  // @observable
  // ObservableList<DealModel> dealsList = <DealModel>[].asObservable();
  //
  // @observable
  // ObservableList<RegionModel> regions = <RegionModel>[].asObservable();
  //
  @observable
  ObservableList<EmailModel> emails = <EmailModel>[].asObservable();




  // @action
  // Future<void> getMemberByEmail() async {
  //   loadingState.startLoading();
  //   try {
  //     final email = await StorageHelper.getEmail();
  //     final res = await dashboardRepository.getByEmail(email);
  //     userModel = res;
  //     print('seeelllecttt ${userModel.toString()}');
  //   } on DioError catch (e) {
  //     final Map<String, dynamic> map = jsonDecode(e.response!.data);
  //
  //       showCustomOverlayNotification(
  //         color: Colors.red,
  //         text: map['detail'],
  //       );
  //     return Future.error(e.response!.data('detail'));
  //   } finally {
  //     loadingState.stopLoading();
  //   }
  // }


  //
  // @action
  // Future<void> updateMember(String name, String surname, String email) async {
  //   loadingState.startLoading();
  //   final member = MemberResponseModel(
  //       user: UserModel(
  //         firstName: name,
  //         lastName: surname,
  //         email: email,
  //       ),
  //       location: selectedLocation);
  //   try {
  //     final res = await dashboardRepository.updateMember(member);
  //     memberResponseModel = res;
  //   } on DioError catch (e) {
  //     final Map<String, dynamic> map = jsonDecode(e.response!.data);
  //     showCustomOverlayNotification(
  //       color: Colors.red,
  //       text: map['detail'],
  //     );
  //     return Future.error(e.response!.data('detail'));
  //   } finally {
  //     loadingState.stopLoading();
  //   }
  // }
  //
  // @action
  // Future<void> fetchPage(
  //     int pageKey, bool isFiltered, PagingController pagingController) async {
  //   try {
  //     await getDeals(pageKey, isFiltered: isFiltered);
  //     if (hasNextPage) {
  //       pagingController.appendLastPage(isFiltered ? filteredList : dealsList);
  //     } else {
  //       //final nextPageKey = pageKey + res.dealList.length;
  //       pagingController.appendPage(
  //           isFiltered ? filteredList : dealsList, pageKey + 1);
  //     }
  //   } on Exception catch (error) {
  //     pagingController.error = error;
  //   }
  // }
}
