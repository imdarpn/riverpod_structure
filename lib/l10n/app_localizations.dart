import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'Street Deals'**
  String get app_name;

  /// No description provided for @select_language.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get select_language;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @regAcc.
  ///
  /// In en, this message translates to:
  /// **'Welcome to C2C'**
  String get regAcc;

  /// No description provided for @regAccDesc.
  ///
  /// In en, this message translates to:
  /// **'Unlock access and get started!'**
  String get regAccDesc;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number'**
  String get mobileNumber;

  /// No description provided for @enterMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Mobile Number'**
  String get enterMobileNumber;

  /// No description provided for @pleaseEnterMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter your mobile number'**
  String get pleaseEnterMobileNumber;

  /// No description provided for @iveRead.
  ///
  /// In en, this message translates to:
  /// **'I have read and agree to the '**
  String get iveRead;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get and;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsAndConditions;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUse;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @getOTP.
  ///
  /// In en, this message translates to:
  /// **'Get OTP'**
  String get getOTP;

  /// No description provided for @verifyNumber.
  ///
  /// In en, this message translates to:
  /// **'Verify your number'**
  String get verifyNumber;

  /// No description provided for @verifyNumberDesc1.
  ///
  /// In en, this message translates to:
  /// **'Enter the 4-digit code we sent to your mobile'**
  String get verifyNumberDesc1;

  /// No description provided for @verifyNumberDes2.
  ///
  /// In en, this message translates to:
  /// **'to verify your account.'**
  String get verifyNumberDes2;

  /// No description provided for @didOTP.
  ///
  /// In en, this message translates to:
  /// **'Didn’t get the OTP?'**
  String get didOTP;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myOrders;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @personalInfo.
  ///
  /// In en, this message translates to:
  /// **'Personal Info'**
  String get personalInfo;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @accountManagement.
  ///
  /// In en, this message translates to:
  /// **'Account Management'**
  String get accountManagement;

  /// No description provided for @accountManagementDes.
  ///
  /// In en, this message translates to:
  /// **'Manage your profile, business details, and account settings - all in one place.'**
  String get accountManagementDes;

  /// No description provided for @registerAsInspector.
  ///
  /// In en, this message translates to:
  /// **'Register as a inspector'**
  String get registerAsInspector;

  /// No description provided for @registerAsFreelanceDriver.
  ///
  /// In en, this message translates to:
  /// **'Register as a freelance driver'**
  String get registerAsFreelanceDriver;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @lastSeen.
  ///
  /// In en, this message translates to:
  /// **'Last Seen'**
  String get lastSeen;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// No description provided for @productsCategories.
  ///
  /// In en, this message translates to:
  /// **'Products categories'**
  String get productsCategories;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// No description provided for @idDocumented.
  ///
  /// In en, this message translates to:
  /// **'ID Documented'**
  String get idDocumented;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @typeHere.
  ///
  /// In en, this message translates to:
  /// **'Type here...'**
  String get typeHere;

  /// No description provided for @registerWithC2C.
  ///
  /// In en, this message translates to:
  /// **'Register with us in C2C'**
  String get registerWithC2C;

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal information:'**
  String get personalInformation;

  /// No description provided for @personalInformationDes.
  ///
  /// In en, this message translates to:
  /// **'This information is necessary to prove identity and secret and does not appear to anyone on the platform'**
  String get personalInformationDes;

  /// No description provided for @phenomenonInformation.
  ///
  /// In en, this message translates to:
  /// **'Phenomenon information:'**
  String get phenomenonInformation;

  /// No description provided for @phenomenonInformationDes.
  ///
  /// In en, this message translates to:
  /// **'This information appears on the platform in front of all customers'**
  String get phenomenonInformationDes;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get state;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @accountSecurityPIN.
  ///
  /// In en, this message translates to:
  /// **'Account security PIN*'**
  String get accountSecurityPIN;

  /// No description provided for @confirmSecurityPIN.
  ///
  /// In en, this message translates to:
  /// **'Confirm Account security PIN*'**
  String get confirmSecurityPIN;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @refId.
  ///
  /// In en, this message translates to:
  /// **'Ref ID'**
  String get refId;

  /// No description provided for @downloadInvoice.
  ///
  /// In en, this message translates to:
  /// **'Download Invoice'**
  String get downloadInvoice;

  /// No description provided for @downloadPolicy.
  ///
  /// In en, this message translates to:
  /// **'Download Policy'**
  String get downloadPolicy;

  /// No description provided for @contactC2CHelpCenter.
  ///
  /// In en, this message translates to:
  /// **'Contact to C2C Help Center'**
  String get contactC2CHelpCenter;

  /// No description provided for @shipmentPhotos.
  ///
  /// In en, this message translates to:
  /// **'Shipment Photos'**
  String get shipmentPhotos;

  /// No description provided for @cancellationReason.
  ///
  /// In en, this message translates to:
  /// **'Cancellation Reason:'**
  String get cancellationReason;

  /// No description provided for @qualityControlIssues.
  ///
  /// In en, this message translates to:
  /// **'Quality control issues or damaged items.'**
  String get qualityControlIssues;

  /// No description provided for @deliveryTo.
  ///
  /// In en, this message translates to:
  /// **'Delivery To'**
  String get deliveryTo;

  /// No description provided for @rateAndReview.
  ///
  /// In en, this message translates to:
  /// **'Rate and Review'**
  String get rateAndReview;

  /// No description provided for @seller.
  ///
  /// In en, this message translates to:
  /// **'Seller'**
  String get seller;

  /// No description provided for @reviewDes.
  ///
  /// In en, this message translates to:
  /// **'Thank you for providing a valuable rate & review'**
  String get reviewDes;

  /// No description provided for @forgotAccountSecurityPIN.
  ///
  /// In en, this message translates to:
  /// **'Forgot Account Security PIN?'**
  String get forgotAccountSecurityPIN;

  /// No description provided for @enterOtpDes.
  ///
  /// In en, this message translates to:
  /// **'Enter the 4~ digit PIN code we sent to your'**
  String get enterOtpDes;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'email'**
  String get email;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @ordersCategories.
  ///
  /// In en, this message translates to:
  /// **'Orders categories'**
  String get ordersCategories;

  /// No description provided for @topPicks.
  ///
  /// In en, this message translates to:
  /// **'Top Picks'**
  String get topPicks;

  /// No description provided for @luxuryBrands.
  ///
  /// In en, this message translates to:
  /// **'Luxury Brands'**
  String get luxuryBrands;

  /// No description provided for @redWeek.
  ///
  /// In en, this message translates to:
  /// **'Red Week'**
  String get redWeek;

  /// No description provided for @endsIn.
  ///
  /// In en, this message translates to:
  /// **'Ends In'**
  String get endsIn;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @recommendedForYou.
  ///
  /// In en, this message translates to:
  /// **'Recommended for You'**
  String get recommendedForYou;

  /// No description provided for @newArrivals.
  ///
  /// In en, this message translates to:
  /// **'New Arrivals'**
  String get newArrivals;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// No description provided for @c2c.
  ///
  /// In en, this message translates to:
  /// **'C2C'**
  String get c2c;

  /// No description provided for @knowMore.
  ///
  /// In en, this message translates to:
  /// **'Know More'**
  String get knowMore;

  /// No description provided for @inspectorsDetail.
  ///
  /// In en, this message translates to:
  /// **'Inspectors Detail'**
  String get inspectorsDetail;

  /// No description provided for @skill.
  ///
  /// In en, this message translates to:
  /// **'Skill'**
  String get skill;

  /// No description provided for @ratings.
  ///
  /// In en, this message translates to:
  /// **'Ratings'**
  String get ratings;

  /// No description provided for @overallRatings.
  ///
  /// In en, this message translates to:
  /// **'Overall Ratings'**
  String get overallRatings;

  /// No description provided for @requestAnInspector.
  ///
  /// In en, this message translates to:
  /// **'Request an Inspector'**
  String get requestAnInspector;

  /// No description provided for @since.
  ///
  /// In en, this message translates to:
  /// **'Since'**
  String get since;

  /// No description provided for @inspectorsList.
  ///
  /// In en, this message translates to:
  /// **'Inspectors List'**
  String get inspectorsList;

  /// No description provided for @inspectorsCurrentlyOccupied.
  ///
  /// In en, this message translates to:
  /// **'Our C2C inspectors are currently occupied.'**
  String get inspectorsCurrentlyOccupied;

  /// No description provided for @qualityGuarantee.
  ///
  /// In en, this message translates to:
  /// **'You can purchase with absolute confidence. Our products are meticulously inspected, and we provide a comprehensive quality guarantee.'**
  String get qualityGuarantee;

  /// No description provided for @directPurchase.
  ///
  /// In en, this message translates to:
  /// **'Direct Purchase'**
  String get directPurchase;

  /// No description provided for @whyDirectPurchase.
  ///
  /// In en, this message translates to:
  /// **'Why Direct Purchase?'**
  String get whyDirectPurchase;

  /// No description provided for @certifiedProductsQualityStandards.
  ///
  /// In en, this message translates to:
  /// **'Certified products meet quality standards.'**
  String get certifiedProductsQualityStandards;

  /// No description provided for @technicalAlwaysAvailable.
  ///
  /// In en, this message translates to:
  /// **'Expert technical support always available.'**
  String get technicalAlwaysAvailable;

  /// No description provided for @ourItemsMeetNormsStrictTests.
  ///
  /// In en, this message translates to:
  /// **'Our items meet high norms, and they pass strict tests.'**
  String get ourItemsMeetNormsStrictTests;

  /// No description provided for @certifiedProductsMeetQualityStandards.
  ///
  /// In en, this message translates to:
  /// **'Certified products meet quality standards.'**
  String get certifiedProductsMeetQualityStandards;

  /// No description provided for @productExperience.
  ///
  /// In en, this message translates to:
  /// **'Product Experience'**
  String get productExperience;

  /// No description provided for @inspectorService.
  ///
  /// In en, this message translates to:
  /// **'Inspector Service'**
  String get inspectorService;

  /// No description provided for @allReviews.
  ///
  /// In en, this message translates to:
  /// **'All Reviews'**
  String get allReviews;

  /// No description provided for @request.
  ///
  /// In en, this message translates to:
  /// **'Request'**
  String get request;

  /// No description provided for @switchLanguages.
  ///
  /// In en, this message translates to:
  /// **'Switch languages for personalized experience!'**
  String get switchLanguages;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort:'**
  String get sort;

  /// No description provided for @rateReviewThisProduct.
  ///
  /// In en, this message translates to:
  /// **'Rate & Review This Product'**
  String get rateReviewThisProduct;

  /// No description provided for @requestAccepted.
  ///
  /// In en, this message translates to:
  /// **'Request accepted'**
  String get requestAccepted;

  /// No description provided for @requestHasBeenAccepted.
  ///
  /// In en, this message translates to:
  /// **'Your Inspection request has been accepted.'**
  String get requestHasBeenAccepted;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @payNow.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get payNow;

  /// No description provided for @clearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get clearAll;

  /// No description provided for @joinSellYourProducts.
  ///
  /// In en, this message translates to:
  /// **'Join us and sell your products'**
  String get joinSellYourProducts;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @exploreGuest.
  ///
  /// In en, this message translates to:
  /// **'Explore as Guest'**
  String get exploreGuest;

  /// No description provided for @reportProduct.
  ///
  /// In en, this message translates to:
  /// **'Report Product'**
  String get reportProduct;

  /// No description provided for @additionalReview.
  ///
  /// In en, this message translates to:
  /// **'Additional Review'**
  String get additionalReview;

  /// No description provided for @writeAnReview.
  ///
  /// In en, this message translates to:
  /// **'Write an review...'**
  String get writeAnReview;

  /// No description provided for @downloadInspectionConversation.
  ///
  /// In en, this message translates to:
  /// **'Download Inspection Conversation'**
  String get downloadInspectionConversation;

  /// No description provided for @orderList.
  ///
  /// In en, this message translates to:
  /// **'Order list'**
  String get orderList;

  /// No description provided for @orderPlacedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Order Placed Successfully!'**
  String get orderPlacedSuccessfully;

  /// No description provided for @congratulationsSuccessfullyProcessed.
  ///
  /// In en, this message translates to:
  /// **'Congratulations! Your order has been placed successfully and is now being processed.'**
  String get congratulationsSuccessfullyProcessed;

  /// No description provided for @inspectionID.
  ///
  /// In en, this message translates to:
  /// **'Inspection ID'**
  String get inspectionID;

  /// No description provided for @uploadReceipt.
  ///
  /// In en, this message translates to:
  /// **'Upload Receipt'**
  String get uploadReceipt;

  /// No description provided for @inspectionRequest.
  ///
  /// In en, this message translates to:
  /// **'My Inspection Request'**
  String get inspectionRequest;

  /// No description provided for @orderSummary.
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get orderSummary;

  /// No description provided for @chatWithCustomer.
  ///
  /// In en, this message translates to:
  /// **'Chat with customer'**
  String get chatWithCustomer;

  /// No description provided for @condition.
  ///
  /// In en, this message translates to:
  /// **'Condition'**
  String get condition;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @moreDetails.
  ///
  /// In en, this message translates to:
  /// **'More Details'**
  String get moreDetails;

  /// No description provided for @cardholderName.
  ///
  /// In en, this message translates to:
  /// **'Cardholder Name'**
  String get cardholderName;

  /// No description provided for @enterCardholderName.
  ///
  /// In en, this message translates to:
  /// **'Enter Cardholder Name'**
  String get enterCardholderName;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card  Number'**
  String get cardNumber;

  /// No description provided for @enterCardNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Card  Number'**
  String get enterCardNumber;

  /// No description provided for @expirationDate.
  ///
  /// In en, this message translates to:
  /// **'Expiration Date'**
  String get expirationDate;

  /// No description provided for @productPrice.
  ///
  /// In en, this message translates to:
  /// **'Product Price'**
  String get productPrice;

  /// No description provided for @includingTax.
  ///
  /// In en, this message translates to:
  /// **'Including Tax'**
  String get includingTax;

  /// No description provided for @c2CPurchaseSupportFees.
  ///
  /// In en, this message translates to:
  /// **'C2C Purchase Support Fees'**
  String get c2CPurchaseSupportFees;

  /// No description provided for @taxFees.
  ///
  /// In en, this message translates to:
  /// **'Tax Fees'**
  String get taxFees;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @grandTotal.
  ///
  /// In en, this message translates to:
  /// **'Grand Total'**
  String get grandTotal;

  /// No description provided for @paymentSummary.
  ///
  /// In en, this message translates to:
  /// **'Payment Summary'**
  String get paymentSummary;

  /// No description provided for @newT.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newT;

  /// No description provided for @agreedTerms.
  ///
  /// In en, this message translates to:
  /// **'Agreed Terms'**
  String get agreedTerms;

  /// No description provided for @deliveryMethod.
  ///
  /// In en, this message translates to:
  /// **'Delivery method'**
  String get deliveryMethod;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @rejectRequest.
  ///
  /// In en, this message translates to:
  /// **'Reject Request'**
  String get rejectRequest;

  /// No description provided for @goToCheckout.
  ///
  /// In en, this message translates to:
  /// **'Go to checkout'**
  String get goToCheckout;

  /// No description provided for @wishlist.
  ///
  /// In en, this message translates to:
  /// **'Wishlist'**
  String get wishlist;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @signYourPerfectPiece.
  ///
  /// In en, this message translates to:
  /// **'Sign in to find your perfect piece.'**
  String get signYourPerfectPiece;

  /// No description provided for @gladToHaveBack.
  ///
  /// In en, this message translates to:
  /// **'Glad to have you back'**
  String get gladToHaveBack;

  /// No description provided for @sort_.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort_;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @sold.
  ///
  /// In en, this message translates to:
  /// **'SOLD'**
  String get sold;

  /// No description provided for @allProducts.
  ///
  /// In en, this message translates to:
  /// **'All Products'**
  String get allProducts;

  /// No description provided for @gotIt.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get gotIt;

  /// No description provided for @learnBuyerProtectionFee.
  ///
  /// In en, this message translates to:
  /// **'Learn how we calculate the Buyer Protection fee'**
  String get learnBuyerProtectionFee;

  /// No description provided for @c2CPurchaseSupportFee.
  ///
  /// In en, this message translates to:
  /// **'C2C purchase support fee'**
  String get c2CPurchaseSupportFee;

  /// No description provided for @shipping.
  ///
  /// In en, this message translates to:
  /// **'Shipping'**
  String get shipping;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @writeSpecification.
  ///
  /// In en, this message translates to:
  /// **'Write a specification...'**
  String get writeSpecification;

  /// No description provided for @purchaseThroughInspector.
  ///
  /// In en, this message translates to:
  /// **'Purchase Through Inspector'**
  String get purchaseThroughInspector;

  /// No description provided for @makeOffer.
  ///
  /// In en, this message translates to:
  /// **'Make offer'**
  String get makeOffer;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to ❤️ cart'**
  String get addToCart;

  /// No description provided for @mostSearchedProducts.
  ///
  /// In en, this message translates to:
  /// **'Most Searched Products'**
  String get mostSearchedProducts;

  /// No description provided for @similarProducts.
  ///
  /// In en, this message translates to:
  /// **'Similar Products'**
  String get similarProducts;

  /// No description provided for @buyerProtectionFees.
  ///
  /// In en, this message translates to:
  /// **'Buyer Protection Fees'**
  String get buyerProtectionFees;

  /// No description provided for @our.
  ///
  /// In en, this message translates to:
  /// **'Our'**
  String get our;

  /// No description provided for @buyerProtection.
  ///
  /// In en, this message translates to:
  /// **'Buyer Protection'**
  String get buyerProtection;

  /// No description provided for @everyPurchase.
  ///
  /// In en, this message translates to:
  /// **'is added for a fee to every purchase.'**
  String get everyPurchase;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @inProcess.
  ///
  /// In en, this message translates to:
  /// **'In Process'**
  String get inProcess;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @onboarding1Title.
  ///
  /// In en, this message translates to:
  /// **'Why didn’t we know this before buying?'**
  String get onboarding1Title;

  /// No description provided for @onboarding2Title.
  ///
  /// In en, this message translates to:
  /// **'Start your journey with complete confidence.'**
  String get onboarding2Title;

  /// No description provided for @onboarding3Title.
  ///
  /// In en, this message translates to:
  /// **'Start your C2C journey with complete confidence.'**
  String get onboarding3Title;

  /// No description provided for @onboarding1Desc.
  ///
  /// In en, this message translates to:
  /// **'From a small upset, a big dream began'**
  String get onboarding1Desc;

  /// No description provided for @onboarding2Desc.
  ///
  /// In en, this message translates to:
  /// **'We need a trust-based security solution'**
  String get onboarding2Desc;

  /// No description provided for @onboarding3Desc.
  ///
  /// In en, this message translates to:
  /// **'In C2C, check, buy, sell in easier steps than you can imagine.'**
  String get onboarding3Desc;

  /// No description provided for @onboarding1ButtonText.
  ///
  /// In en, this message translates to:
  /// **'Problem'**
  String get onboarding1ButtonText;

  /// No description provided for @onboarding2ButtonText.
  ///
  /// In en, this message translates to:
  /// **'Solutions'**
  String get onboarding2ButtonText;

  /// No description provided for @onboarding3ButtonText.
  ///
  /// In en, this message translates to:
  /// **'Discover'**
  String get onboarding3ButtonText;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCode;

  /// No description provided for @yourStoreName.
  ///
  /// In en, this message translates to:
  /// **'Your Store Name'**
  String get yourStoreName;

  /// No description provided for @enterYourStoreName.
  ///
  /// In en, this message translates to:
  /// **'Enter your store name'**
  String get enterYourStoreName;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterYourEmail;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @enterFullName.
  ///
  /// In en, this message translates to:
  /// **'Enter Full Name'**
  String get enterFullName;

  /// No description provided for @pleaseEnterFullName.
  ///
  /// In en, this message translates to:
  /// **'Please enter full name'**
  String get pleaseEnterFullName;

  /// No description provided for @fullNameWithRange.
  ///
  /// In en, this message translates to:
  /// **'Please enter minimum 2 characters in full name'**
  String get fullNameWithRange;

  /// No description provided for @aboutYou.
  ///
  /// In en, this message translates to:
  /// **'About You'**
  String get aboutYou;

  /// No description provided for @aboutYouDesc.
  ///
  /// In en, this message translates to:
  /// **'Write an overview of you and your interests'**
  String get aboutYouDesc;

  /// No description provided for @uploadPhoto.
  ///
  /// In en, this message translates to:
  /// **'Upload photo'**
  String get uploadPhoto;

  /// No description provided for @sarWithPrice.
  ///
  /// In en, this message translates to:
  /// **'SAR {price}'**
  String sarWithPrice(Object price);

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// No description provided for @uploadSelectionDesc.
  ///
  /// In en, this message translates to:
  /// **'Please choose the option you want to upload into C2C.'**
  String get uploadSelectionDesc;

  /// No description provided for @uploadProduct.
  ///
  /// In en, this message translates to:
  /// **'Upload Product'**
  String get uploadProduct;

  /// No description provided for @uploadOrder.
  ///
  /// In en, this message translates to:
  /// **'Upload Order'**
  String get uploadOrder;

  /// No description provided for @selectType.
  ///
  /// In en, this message translates to:
  /// **'Select Type'**
  String get selectType;

  /// No description provided for @asABuyer.
  ///
  /// In en, this message translates to:
  /// **'As a Buyer'**
  String get asABuyer;

  /// No description provided for @asASeller.
  ///
  /// In en, this message translates to:
  /// **'As a Seller'**
  String get asASeller;

  /// No description provided for @uploadProductPhotos.
  ///
  /// In en, this message translates to:
  /// **'Upload Product Photos'**
  String get uploadProductPhotos;

  /// No description provided for @max20Photos.
  ///
  /// In en, this message translates to:
  /// **'(Max 20 Photo)'**
  String get max20Photos;

  /// No description provided for @seePhotoTips.
  ///
  /// In en, this message translates to:
  /// **'See photo tips'**
  String get seePhotoTips;

  /// No description provided for @uploadBulkImages.
  ///
  /// In en, this message translates to:
  /// **'Upload Bulk Images'**
  String get uploadBulkImages;

  /// No description provided for @productName.
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get productName;

  /// No description provided for @enterYourProductName.
  ///
  /// In en, this message translates to:
  /// **'Enter your product name'**
  String get enterYourProductName;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @enterDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter description'**
  String get enterDescription;

  /// No description provided for @brand.
  ///
  /// In en, this message translates to:
  /// **'Brand'**
  String get brand;

  /// No description provided for @colour.
  ///
  /// In en, this message translates to:
  /// **'Colour'**
  String get colour;

  /// No description provided for @material.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get material;

  /// No description provided for @style.
  ///
  /// In en, this message translates to:
  /// **'Style'**
  String get style;

  /// No description provided for @pattern.
  ///
  /// In en, this message translates to:
  /// **'Pattern'**
  String get pattern;

  /// No description provided for @productConditionDescription.
  ///
  /// In en, this message translates to:
  /// **'Product Condition Description'**
  String get productConditionDescription;

  /// No description provided for @enterProductConditionDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter Product Condition Description'**
  String get enterProductConditionDescription;

  /// No description provided for @productLocation.
  ///
  /// In en, this message translates to:
  /// **'Product Location'**
  String get productLocation;

  /// No description provided for @enterProductLocation.
  ///
  /// In en, this message translates to:
  /// **'Enter Product Location'**
  String get enterProductLocation;

  /// No description provided for @sellingMethod.
  ///
  /// In en, this message translates to:
  /// **'Selling method:'**
  String get sellingMethod;

  /// No description provided for @byPrice.
  ///
  /// In en, this message translates to:
  /// **'By Price'**
  String get byPrice;

  /// No description provided for @byMakeOffer.
  ///
  /// In en, this message translates to:
  /// **'By Make Offer'**
  String get byMakeOffer;

  /// No description provided for @productShippingFromBuyerToSeller.
  ///
  /// In en, this message translates to:
  /// **'Product shipping from seller to buyer'**
  String get productShippingFromBuyerToSeller;

  /// No description provided for @uploadProductCheckbox1.
  ///
  /// In en, this message translates to:
  /// **'I acknowledge the accuracy of all the information entered above about the item to be sold to the buyer and the legitimacy and legality of the sale process of the item to be sold'**
  String get uploadProductCheckbox1;

  /// No description provided for @uploadProductCheckbox2.
  ///
  /// In en, this message translates to:
  /// **'I acknowledge that I have read, understood and agree to the C2C Platform Terms of Use and Privacy Policy.'**
  String get uploadProductCheckbox2;

  /// No description provided for @productPreview.
  ///
  /// In en, this message translates to:
  /// **'Product Preview'**
  String get productPreview;

  /// No description provided for @photoTips.
  ///
  /// In en, this message translates to:
  /// **'Photo Tips'**
  String get photoTips;

  /// No description provided for @photoTipsTitle1.
  ///
  /// In en, this message translates to:
  /// **'Choose natural lighting'**
  String get photoTipsTitle1;

  /// No description provided for @photoTipsSubTitle1.
  ///
  /// In en, this message translates to:
  /// **'Take photos of your products in a well-lit location.'**
  String get photoTipsSubTitle1;

  /// No description provided for @photoTipsTitle2.
  ///
  /// In en, this message translates to:
  /// **'Choose a suitable background'**
  String get photoTipsTitle2;

  /// No description provided for @photoTipsSubTitle2.
  ///
  /// In en, this message translates to:
  /// **'Use an uncluttered, neutral background to make your item stand out.'**
  String get photoTipsSubTitle2;

  /// No description provided for @photoTipsTitle3.
  ///
  /// In en, this message translates to:
  /// **'Do not use flash when photographing.'**
  String get photoTipsTitle3;

  /// No description provided for @photoTipsSubTitle3.
  ///
  /// In en, this message translates to:
  /// **'Artificial light can distort colors, so avoid using a flash.'**
  String get photoTipsSubTitle3;

  /// No description provided for @photoTipsTitle4.
  ///
  /// In en, this message translates to:
  /// **'Use your own photos'**
  String get photoTipsTitle4;

  /// No description provided for @photoTipsSubTitle4.
  ///
  /// In en, this message translates to:
  /// **'Take the photos yourself or ask a friend for help. Copyrighted images are not allowed.'**
  String get photoTipsSubTitle4;

  /// No description provided for @photoTipsTitle5.
  ///
  /// In en, this message translates to:
  /// **'Product images from different angles'**
  String get photoTipsTitle5;

  /// No description provided for @photoTipsSubTitle5.
  ///
  /// In en, this message translates to:
  /// **'Take more than one photo of your product from different distances and angles that show all the details of your product.'**
  String get photoTipsSubTitle5;

  /// No description provided for @orderTitle.
  ///
  /// In en, this message translates to:
  /// **'Order Title'**
  String get orderTitle;

  /// No description provided for @enterOrderTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter Order Title'**
  String get enterOrderTitle;

  /// No description provided for @orderLocation.
  ///
  /// In en, this message translates to:
  /// **'Order Location'**
  String get orderLocation;

  /// No description provided for @enterOrderLocation.
  ///
  /// In en, this message translates to:
  /// **'Enter Order Location'**
  String get enterOrderLocation;

  /// No description provided for @priceRange.
  ///
  /// In en, this message translates to:
  /// **'Price Range'**
  String get priceRange;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @specialTerms.
  ///
  /// In en, this message translates to:
  /// **'Special Terms'**
  String get specialTerms;

  /// No description provided for @enterSpecialTerms.
  ///
  /// In en, this message translates to:
  /// **'Enter Special Terms'**
  String get enterSpecialTerms;

  /// No description provided for @uploadOrderCheckbox1.
  ///
  /// In en, this message translates to:
  /// **'I acknowledge the correctness of all information entered above regarding the attached advertisement for the basket and its legitimacy and legality.'**
  String get uploadOrderCheckbox1;

  /// No description provided for @uploadOrderCheckbox2.
  ///
  /// In en, this message translates to:
  /// **'I acknowledge that I have read, understood and agree to the C2C Platform Terms of Use and Privacy Policy.'**
  String get uploadOrderCheckbox2;

  /// No description provided for @reviewOrder.
  ///
  /// In en, this message translates to:
  /// **'Review Order'**
  String get reviewOrder;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @ordersDesc.
  ///
  /// In en, this message translates to:
  /// **'Can’t Find what you need?'**
  String get ordersDesc;

  /// No description provided for @postYourReq.
  ///
  /// In en, this message translates to:
  /// **'Post your request'**
  String get postYourReq;

  /// No description provided for @guaranteedRefund.
  ///
  /// In en, this message translates to:
  /// **'Guaranteed Refund'**
  String get guaranteedRefund;

  /// No description provided for @guaranteedRefundDDesc.
  ///
  /// In en, this message translates to:
  /// **'If your item doesn’t arrive or is significantly different from the description, you can receive a full refund.'**
  String get guaranteedRefundDDesc;

  /// No description provided for @securedPayments.
  ///
  /// In en, this message translates to:
  /// **'Secured Payments'**
  String get securedPayments;

  /// No description provided for @securedPaymentsDesc.
  ///
  /// In en, this message translates to:
  /// **'Your payment is held securely until you confirm receipt of your order, ensuring a safe transaction.'**
  String get securedPaymentsDesc;

  /// No description provided for @onTimeDelivery.
  ///
  /// In en, this message translates to:
  /// **'On-time Delivery'**
  String get onTimeDelivery;

  /// No description provided for @onTimeDeliveryDesc.
  ///
  /// In en, this message translates to:
  /// **'If your item is delayed or lost, you\'re covered for a refund or replacement.'**
  String get onTimeDeliveryDesc;

  /// No description provided for @disputeResolution.
  ///
  /// In en, this message translates to:
  /// **'Dispute Resolution'**
  String get disputeResolution;

  /// No description provided for @disputeResolutionDesc.
  ///
  /// In en, this message translates to:
  /// **'In case of any issues, you can open a dispute, and the platform will mediate between you and the seller.'**
  String get disputeResolutionDesc;

  /// No description provided for @authenticityGuarantee.
  ///
  /// In en, this message translates to:
  /// **'Authenticity Guarantee'**
  String get authenticityGuarantee;

  /// No description provided for @authenticityGuaranteeDesc.
  ///
  /// In en, this message translates to:
  /// **'Some platforms offer protection against counterfeit products, ensuring you get genuine items.'**
  String get authenticityGuaranteeDesc;

  /// No description provided for @ourSupport.
  ///
  /// In en, this message translates to:
  /// **'Our support'**
  String get ourSupport;

  /// No description provided for @ourSupportDesc.
  ///
  /// In en, this message translates to:
  /// **'Reach out to our support team at any time- they\'re here to help.'**
  String get ourSupportDesc;

  /// No description provided for @rfIDNumber.
  ///
  /// In en, this message translates to:
  /// **'Ref ID Number'**
  String get rfIDNumber;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @addNewAddress.
  ///
  /// In en, this message translates to:
  /// **'Add New Address'**
  String get addNewAddress;

  /// No description provided for @addAddress.
  ///
  /// In en, this message translates to:
  /// **'Add Address'**
  String get addAddress;

  /// No description provided for @searchYourLocation.
  ///
  /// In en, this message translates to:
  /// **'Search Your Location'**
  String get searchYourLocation;

  /// No description provided for @confirmYourLocation.
  ///
  /// In en, this message translates to:
  /// **'Confirm Your Location'**
  String get confirmYourLocation;

  /// No description provided for @personalDetails.
  ///
  /// In en, this message translates to:
  /// **'Personal Details'**
  String get personalDetails;

  /// No description provided for @changePhoto.
  ///
  /// In en, this message translates to:
  /// **'Change Photo'**
  String get changePhoto;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @welcomeTo.
  ///
  /// In en, this message translates to:
  /// **'Welcome To'**
  String get welcomeTo;

  /// No description provided for @c2cStreetDeals.
  ///
  /// In en, this message translates to:
  /// **'C2C Street Deals'**
  String get c2cStreetDeals;

  /// No description provided for @myDeal.
  ///
  /// In en, this message translates to:
  /// **'My Deal'**
  String get myDeal;

  /// No description provided for @idVerified.
  ///
  /// In en, this message translates to:
  /// **'ID Verified'**
  String get idVerified;

  /// No description provided for @bankDetails.
  ///
  /// In en, this message translates to:
  /// **'Bank Details'**
  String get bankDetails;

  /// No description provided for @myAddress.
  ///
  /// In en, this message translates to:
  /// **'My Address'**
  String get myAddress;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountDesc.
  ///
  /// In en, this message translates to:
  /// **'Deleting your account is permanent and cannot be undone. All your data will be lost. Proceed with caution!'**
  String get deleteAccountDesc;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @startTheServiceAs.
  ///
  /// In en, this message translates to:
  /// **'Start the service as'**
  String get startTheServiceAs;

  /// No description provided for @howItWorks.
  ///
  /// In en, this message translates to:
  /// **'How It Works'**
  String get howItWorks;

  /// No description provided for @howItWorksDesc.
  ///
  /// In en, this message translates to:
  /// **'Discover a seamless shopping experience—from product search and inspection to secure checkout and reliable delivery.'**
  String get howItWorksDesc;

  /// No description provided for @howToUseStreetDeals.
  ///
  /// In en, this message translates to:
  /// **'How to use C2C street deals'**
  String get howToUseStreetDeals;

  /// No description provided for @howToUseStreetDealsAsSeller.
  ///
  /// In en, this message translates to:
  /// **'How to use C2C street deals as a Seller'**
  String get howToUseStreetDealsAsSeller;

  /// No description provided for @howToUseStreetDealsAsBuyer.
  ///
  /// In en, this message translates to:
  /// **'How to use C2C street deals as a Buyer'**
  String get howToUseStreetDealsAsBuyer;

  /// No description provided for @takeAPhoto.
  ///
  /// In en, this message translates to:
  /// **'Take a Photo'**
  String get takeAPhoto;

  /// No description provided for @writeAgreedTerms.
  ///
  /// In en, this message translates to:
  /// **'Write the agreed terms'**
  String get writeAgreedTerms;

  /// No description provided for @deliveryMethodAndReceipt.
  ///
  /// In en, this message translates to:
  /// **'Delivery method and receipt of the product:'**
  String get deliveryMethodAndReceipt;

  /// No description provided for @selfPickup.
  ///
  /// In en, this message translates to:
  /// **'Self pickup'**
  String get selfPickup;

  /// No description provided for @fromBuyerToSeller.
  ///
  /// In en, this message translates to:
  /// **'From Buyer To Seller'**
  String get fromBuyerToSeller;

  /// No description provided for @fromC2CToSeller.
  ///
  /// In en, this message translates to:
  /// **'From C2C to Seller'**
  String get fromC2CToSeller;

  /// No description provided for @uploadProductCheckbox3.
  ///
  /// In en, this message translates to:
  /// **'I agree I take amount directly from buyer outside of C2C.'**
  String get uploadProductCheckbox3;

  /// No description provided for @ibanNumber.
  ///
  /// In en, this message translates to:
  /// **'IBAN Number'**
  String get ibanNumber;

  /// No description provided for @enterIBANNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter IBAN Number'**
  String get enterIBANNumber;

  /// No description provided for @pleaseEnterIban.
  ///
  /// In en, this message translates to:
  /// **'Please enter IBAN number'**
  String get pleaseEnterIban;

  /// No description provided for @idNumber.
  ///
  /// In en, this message translates to:
  /// **'ID Number'**
  String get idNumber;

  /// No description provided for @enterIDNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter ID Number'**
  String get enterIDNumber;

  /// No description provided for @pleaseEnterID.
  ///
  /// In en, this message translates to:
  /// **'Please enter ID number'**
  String get pleaseEnterID;

  /// No description provided for @bankName.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bankName;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @changeAccDetails.
  ///
  /// In en, this message translates to:
  /// **'Change Account Details'**
  String get changeAccDetails;

  /// No description provided for @modifyProduct.
  ///
  /// In en, this message translates to:
  /// **'Modify Product'**
  String get modifyProduct;

  /// No description provided for @getQRCode.
  ///
  /// In en, this message translates to:
  /// **'Get QR Code'**
  String get getQRCode;

  /// No description provided for @shareTo.
  ///
  /// In en, this message translates to:
  /// **'Share to :'**
  String get shareTo;

  /// No description provided for @sendCode.
  ///
  /// In en, this message translates to:
  /// **'Send Code'**
  String get sendCode;

  /// No description provided for @yourDealSent.
  ///
  /// In en, this message translates to:
  /// **'Your Deal sent 🎉'**
  String get yourDealSent;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @basketSecurityCode.
  ///
  /// In en, this message translates to:
  /// **'Basket Security Code'**
  String get basketSecurityCode;

  /// No description provided for @securityCode.
  ///
  /// In en, this message translates to:
  /// **'Security Code'**
  String get securityCode;

  /// No description provided for @office.
  ///
  /// In en, this message translates to:
  /// **'Office'**
  String get office;

  /// No description provided for @addressType.
  ///
  /// In en, this message translates to:
  /// **'Address Type'**
  String get addressType;

  /// No description provided for @buyer.
  ///
  /// In en, this message translates to:
  /// **'Buyer'**
  String get buyer;

  /// No description provided for @rfCode.
  ///
  /// In en, this message translates to:
  /// **'Ref Code'**
  String get rfCode;

  /// No description provided for @dealSentFrom.
  ///
  /// In en, this message translates to:
  /// **'Your deal sent from'**
  String get dealSentFrom;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @waiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get waiting;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @enterAddressType.
  ///
  /// In en, this message translates to:
  /// **'Enter Address Type'**
  String get enterAddressType;

  /// No description provided for @pleaseEnterAddressType.
  ///
  /// In en, this message translates to:
  /// **'Please enter address type'**
  String get pleaseEnterAddressType;

  /// No description provided for @enableLocationMessageIOS.
  ///
  /// In en, this message translates to:
  /// **'Location is Disabled'**
  String get enableLocationMessageIOS;

  /// No description provided for @locationIsDisabled.
  ///
  /// In en, this message translates to:
  /// **'To use location, go to Settings App > Privacy > Location Services.'**
  String get locationIsDisabled;

  /// No description provided for @pleaseEnableLocation.
  ///
  /// In en, this message translates to:
  /// **'Please enable location service from setting.'**
  String get pleaseEnableLocation;

  /// No description provided for @noThanks.
  ///
  /// In en, this message translates to:
  /// **'NO, THANKS'**
  String get noThanks;

  /// No description provided for @locationPermission.
  ///
  /// In en, this message translates to:
  /// **'Location permission'**
  String get locationPermission;

  /// No description provided for @locationPermissionMsg.
  ///
  /// In en, this message translates to:
  /// **'Enable your location permission to explore nearby services'**
  String get locationPermissionMsg;

  /// No description provided for @permission.
  ///
  /// In en, this message translates to:
  /// **'Permission'**
  String get permission;

  /// No description provided for @pleaseAllowThe.
  ///
  /// In en, this message translates to:
  /// **'Please allow the'**
  String get pleaseAllowThe;

  /// No description provided for @permissionFromSettings.
  ///
  /// In en, this message translates to:
  /// **'permission from settings'**
  String get permissionFromSettings;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okay;

  /// No description provided for @tCValidate.
  ///
  /// In en, this message translates to:
  /// **'Please Accept Terms & Conditions and Privacy Policy'**
  String get tCValidate;

  /// No description provided for @profilePhotoValidate.
  ///
  /// In en, this message translates to:
  /// **'Please select profile photo'**
  String get profilePhotoValidate;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @logoutDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure want to logout?'**
  String get logoutDesc;

  /// No description provided for @deleteAccDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure want to delete account?'**
  String get deleteAccDesc;

  /// No description provided for @pinTile.
  ///
  /// In en, this message translates to:
  /// **'Move Pin to Select your exact selection'**
  String get pinTile;

  /// No description provided for @apiLogoutMsg.
  ///
  /// In en, this message translates to:
  /// **'You\'ve been logged out. Please log back in.'**
  String get apiLogoutMsg;

  /// No description provided for @noInternetMsg.
  ///
  /// In en, this message translates to:
  /// **'No internet found.Check your connection or try again'**
  String get noInternetMsg;

  /// No description provided for @bankNameValidate.
  ///
  /// In en, this message translates to:
  /// **'Please select bank name.'**
  String get bankNameValidate;

  /// No description provided for @pleaseSelect.
  ///
  /// In en, this message translates to:
  /// **'Please select {placeHolder}.'**
  String pleaseSelect(Object placeHolder);

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @verifyMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Please verify mobile number'**
  String get verifyMobileNumber;

  /// No description provided for @imageFormatValidation.
  ///
  /// In en, this message translates to:
  /// **'Please upload image format like JPG, PNG, JPEG, HEIC,HEIF etc.'**
  String get imageFormatValidation;

  /// No description provided for @fileSizeValidation.
  ///
  /// In en, this message translates to:
  /// **'Maximum image file size should be 25MB.'**
  String get fileSizeValidation;

  /// No description provided for @askForMoney.
  ///
  /// In en, this message translates to:
  /// **'Ask for money'**
  String get askForMoney;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
