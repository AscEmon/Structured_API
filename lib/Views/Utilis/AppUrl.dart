String baseUrl = "https://work.mshakhawat.com/api";

class AppUrl {
  static String signUpUrl = "$baseUrl/auth/register";
  static String loginUrl =
      "https://app.ringersoft.com/api/ringersoftfoodapp/test-category/2?fbclid=IwAR3OfylOShIlzWs7pQEt5kLSyBfQhLrjhlWcbA4P6GIr-GUj0WDQaDgjTd0";
  static String logoutUrl = "$baseUrl/auth/logout";
  static String userPackagesUrl = "$baseUrl/packages";
  static String userSubscriptionUrl = "$baseUrl/auth/charge";
  static String adminLoginUrl = "https://reqres.in/api/users";
  static String adminLogOutUrl = "$baseUrl/admin/logout";
  static String adminPackagesUrl = "$baseUrl/admin/package";
  static String adminDashboardUrl = "$baseUrl/admin/dashboard";
  static String adminTotalUserUrl = "$baseUrl/admin/user";
  static String adminPackagesStatusUrl = "$baseUrl/admin/change/package/status";
  static String userHomePageUrl = "$baseUrl/auth/me";
  static String adminVideoUrl = "$baseUrl/admin/video";
  static String forumStatusUrl = "$baseUrl/auth/add/post";
  static String forumUrl = "$baseUrl/auth/forum";
  static String adminForumUrl = "$baseUrl/admin/forum";
  static String adminForumDeleteUrl = "$baseUrl/admin/forum-delete";
  static String commentUrl = "$baseUrl/auth/reply";
  static String adminCommentUrl = "$baseUrl/admin/reply";
  static String adminCommentDeleteUrl = "$baseUrl/admin/reply-delete";
  static String replyUrl = "$baseUrl/auth/add/reply";
  static String previousActivityUrl = "$baseUrl/auth/history";
  static String startingImageUrl = "$baseUrl/auth/up/startingimage";
  static String endingImageUrl = "$baseUrl/auth/up/endingingimage";
  static String changePasswordUserUrl = "$baseUrl/auth/change/password";
  static String changePasswordAdminUrl = "$baseUrl/admin/change/password";

  //Webview
  static String subscriptionUrl = "$baseUrl/mobile/payment";
  static String liveChatUserUrl = "$baseUrl/userchat";
  static String adminChatUrl = "$baseUrl/adminchat";
}
