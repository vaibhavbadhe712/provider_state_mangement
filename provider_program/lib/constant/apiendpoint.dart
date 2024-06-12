
import 'package:provider_program/model/api_base_model.dart';

class ApiEndPoints {
  ApiBaseModel? apiBaseModel;

  ApiEndPoints({this.apiBaseModel}) {
    if (apiBaseModel == null) {}
  }

  late String baseUrl = apiBaseModel?.commerceUrl ?? "";
  late String authBaseUrl = apiBaseModel?.authUrl ?? "";
  late String gatewayBaseUrl = apiBaseModel?.gatewayUrl ?? "";
  late String memberBaseUrl = apiBaseModel?.memberUrl ?? "";
  late String paymentBaseUrl = apiBaseModel?.paymentUrl ?? "";
  late String imageUploadBaseUrl = apiBaseModel?.imageUploadUrl ?? "";
  late String imageResizeBaseUrl = apiBaseModel?.imageResizeUrl ?? "";
  late int appId= apiBaseModel?.appId ?? 0;
  late String version = apiBaseModel?.version ?? "";

  // Send OTP
  late String sendOTP = "${gatewayBaseUrl}authgw/sendotp";
  late String verifyOtp = "${authBaseUrl}auth/validateOtp";
  late String refreshToken = "${gatewayBaseUrl}authgw/refresh-token";
  late String savefirebaseToken = "${authBaseUrl}firebaseToken";
  late String getAllGroup = "${authBaseUrl}usergroup/all/";
  late String leaveList = "${memberBaseUrl}leave/";
  late String leaveApprovel = "peopleManagement/members/all/getByGroupId/";
  late String leaveApply = "${gatewayBaseUrl}/peoplemgmtgw/apply-leave/";
  late String attandanceShow = "${memberBaseUrl}attendance/attendance/group";
  late String leaveType = "${memberBaseUrl}leave-types/group/";
  late String regularizeApi = 'attendancelog/regularization';
  late String countLeaves = "${memberBaseUrl}leave/count/";
  late String getHierarchy = "${memberBaseUrl}members/";

  late String visitorlist = "${memberBaseUrl}visitor";

  late String resetPassword = "${authBaseUrl}auth/reset-password";
  late String getTaskApi="${memberBaseUrl}task/";
  late String taskDelete="${memberBaseUrl}task/";
  late String getAllRegulizationRequest="${memberBaseUrl}attendance/regulariz/";
  late String updateRegulisedRequest="${memberBaseUrl}attendance/";
  late String updatetask= "${gatewayBaseUrl}peopleManagement/task/";
  late String task= "${gatewayBaseUrl}peoplemgmtgw/assign-task";
  late String memberLogin="${memberBaseUrl}members/";
  late String checkAttendace ="${gatewayBaseUrl}commerce-gw/gps/attendance";
  late String AssignTo="${memberBaseUrl}/members/";
  late String groupInformation="${authBaseUrl}group/";

  late String markattendancepost="${gatewayBaseUrl}commerce-gw/setAttendanceLog";

  get groupId => 1703228300417;
}
