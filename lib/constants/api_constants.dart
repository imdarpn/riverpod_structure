
class ApiConstants{
  //http://localhost:3000/share-news?id=23
  static const String basURL = 'http://13.200.164.126/api';
  static const String appId = 'd8053b39af7e4b719d0c95bd1e7cc7d4';
  static const mapApiBaseUrl = 'https://maps.googleapis.com/maps/api';

  static const String init = '/init';
  static const String loginPath = 'login';
  static const String profilePath = 'profile';
  static const String login = '/loginUser';
  static const String terms = '/cms/terms_and_conditions';
  static const String privacyPolicy = '/cms/privacy_policy';
  static const String aboutUs = '/cms/about_us';

  /// USED WHILE LOGIN
  static const String loginOrRegister = '/send/mobile/otp';
  static const String verifyOTP = '/verify/mobile/otp';

  static const String updateProfile = '/update';
  static const String getProfile = '/me';
  static const String logout = '/logout';
  static const String deleteAccount  = '/delete/account';
  static const String addAddress  = '/address/create';
  static const String updateAddress  = '/address/update';
  static const String getAddress  = '/address';
  static const String deleteAddress  = '/address/delete';
  static const String bankNameList  = '/bank/list';
  static const String bank  = '/bank';
  static const String bankUpdate  = '/bank/update';
  static const String uploadProduct  = '/product/create';
  static const String createDeal  = '/deal/create';
  static const String rejectDeal  = '/deal/reject';
  static const String myDeals  = '/deal';
  static const String verifyDeal  = '/deal/verify';
  static const String productDetail  = '/product/show';
  static const String idVerification  = '/nafath/initiate';








  /////////
  static const String createUser = '/createUser';
  static const String getAllInterest = '/getAllIntrest';
  static const String updateUser = '/api/updateUser';
  static const String addPost = '/api/createPost';
  static const String getAllPost = '/api/getAllPost';
  static const String getAllComments = '/api/getAllComments';
  static const String addComment = '/api/addComment';
  static const String likePost = '/api/likePost';
  static const String savePost = '/api/savePost';
  static const String getUserSavedPosts = '/api/getUserSavedPosts';
  static const String getUserLikesPosts = '/api/getUserLikesPosts';
  static const String getPostFromUserId = '/api/getPostFromUserId';
  static const String getUserPostsByType = '/api/getUserPostsByType';
  static const String getSingleUser = '/api/getSingleUser';
  static const String updatePushNotificationToken = '/api/updatePushNotificationToken';
  static const String getStreamingToken = '/api/getStreamingToken';
}