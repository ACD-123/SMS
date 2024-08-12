import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sms/constants/route_constants.dart';
import 'package:sms/views/addcard.dart';
import 'package:sms/views/addnewcard_paymentmethod.dart';
import 'package:sms/views/addresbookscreen2_viewonmap.dart';
import 'package:sms/views/addressbookscreen.dart';
import 'package:sms/views/addressbookscreen3_Addnewaddress.dart';
import 'package:sms/views/addtocart.dart';
import 'package:sms/views/almosttherescreen.dart';
import 'package:sms/views/banksetting.dart';
import 'package:sms/views/bottomnavabar.dart';
import 'package:sms/views/categories_screen.dart';
import 'package:sms/views/changepassword.dart';
import 'package:sms/views/changepasswordscreen.dart';
import 'package:sms/views/chats/chatscreen.dart';
import 'package:sms/views/chats/chatslistscreen.dart';
import 'package:sms/views/checkout.dart';
import 'package:sms/views/createaccount.dart';
import 'package:sms/views/emailverification.dart';
import 'package:sms/views/faq.dart';
import 'package:sms/views/feedback.dart';
import 'package:sms/views/forgotemailverification.dart';
import 'package:sms/views/forgotpassword.dart';
import 'package:sms/views/helpsupport/helpsupportscreen.dart';
import 'package:sms/views/helpsupport/helpsupportscreen2.dart';
import 'package:sms/views/homeguest_screen.dart';
import 'package:sms/views/inventoryseller.dart';
import 'package:sms/views/loginscreen.dart';
import 'package:sms/views/myprofile.dart';
import 'package:sms/views/myprofile_contactus.dart';
import 'package:sms/views/notifications/notifications.dart';
import 'package:sms/views/onboarding/welcome_screen1.dart';
import 'package:sms/views/paymentsetting_paymentsmethodsscreen.dart';
import 'package:sms/views/privacypolicy.dart';
import 'package:sms/views/productsdetail_screen.dart';
import 'package:sms/views/profilesettingscreen.dart';
import 'package:sms/views/reportseller.dart';
import 'package:sms/views/returncancellation/return&cancellation_screen.dart';
import 'package:sms/views/search_screen.dart';
import 'package:sms/views/searchfilter_screen.dart';
import 'package:sms/views/customersideshop.dart';
import 'package:sms/views/seller/editsellershop.dart';
import 'package:sms/views/seller/selleractiveorderdetails.dart';
import 'package:sms/views/seller/sellerbankaccountsetting.dart';
import 'package:sms/views/seller/sellerchatlistscreen.dart';
import 'package:sms/views/seller/sellerchatscreen.dart';
import 'package:sms/views/seller/sellercompletedorderdetails.dart';
import 'package:sms/views/seller/sellercreateshopscreen.dart';
import 'package:sms/views/seller/sellerdashboard.dart';
import 'package:sms/views/seller/sellerorderhistoryscreen.dart';
import 'package:sms/views/seller/sellerprofilescreen.dart';
import 'package:sms/views/seller/sellerrefundorderdetails.dart';
import 'package:sms/views/seller/sellersalesreportscreen.dart';
import 'package:sms/views/seller/sellersettingscreen.dart';
import 'package:sms/views/seller/sellersetupbank.dart';
import 'package:sms/views/seller/sellersetuppassword.dart';
import 'package:sms/views/seller/sellersetupshop.dart';
import 'package:sms/views/sellersideshop.dart';
import 'package:sms/views/setprofile.dart';
import 'package:sms/views/setting/notificationsetting_screen.dart';
import 'package:sms/views/setting/settingcontactus_screen.dart';
import 'package:sms/views/setting/settingscreen.dart';
import 'package:sms/views/splashscreen.dart';
import 'package:sms/views/steppper.dart';
import 'package:sms/views/user/useractiveorderdetails.dart';
import 'package:sms/views/user/usercompletedorderdetails.dart';
import 'package:sms/views/user/userdashboard.dart';
import 'package:sms/views/user/userorderhistory.dart';
import 'package:sms/views/user/userrefundorderdetails.dart';
import 'package:sms/views/userbottomnavbar.dart';
import 'package:sms/views/userfeedback.dart';
import 'package:sms/views/userhomescreen.dart';
import 'package:sms/views/wishlistscreen.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(name: RouteConstants.bottomnavbar, page: () => BottomNavBar()),
      GetPage(
        name: RouteConstants.splashscreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: RouteConstants.splashscreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: RouteConstants.customershop,
        page: () => CustomerSellerShop(),
      ),
      GetPage(
        name: RouteConstants.sellersideshop,
        page: () => SellerSideShop(),
      ),
      GetPage(
        name: RouteConstants.banksetting,
        page: () => BankSetting(),
      ),
      GetPage(
        name: RouteConstants.welcome1,
        page: () => WelcomeScreen1(),
      ),
      GetPage(name: RouteConstants.privacypolicy, page: () => PrivacyPolicy()),
      GetPage(
        name: RouteConstants.welcome1,
        page: () => WelcomeScreen1(),
      ),
      GetPage(
        name: RouteConstants.faq,
        page: () => Faq(),
      ),
      GetPage(
        name: RouteConstants.loginscreen,
        page: () => const LoginScreen(),
      ),
      GetPage(
        name: RouteConstants.forgotemailverification,
        page: () => ForgotEmailverification(),
      ),
      GetPage(name: RouteConstants.feedback, page: () => FeedBack()),
      GetPage(
        name: RouteConstants.emailverificaiton,
        page: () => Emailverification(),
      ),
      GetPage(
        name: RouteConstants.forgot,
        page: () => ForgotPasswordScreens(),
      ),
      GetPage(
        name: RouteConstants.signup,
        page: () => Signup(),
      ),
      GetPage(
        name: RouteConstants.checkout,
        page: () => Checkout(),
      ),
      GetPage(
        name: RouteConstants.userfeedback,
        page: () => UserFeedback(),
      ),
      GetPage(
        name: RouteConstants.addnewcard,
        page: () => AddNewCard(),
      ),
      GetPage(
        name: RouteConstants.addtocart,
        page: () => AddToCart(),
      ),
      GetPage(
        name: RouteConstants.setyourprofile,
        page: () => SetYourProfile(),
      ),
      GetPage(
        name: RouteConstants.reasonreport,
        page: () => ReportSeller(),
      ),
      GetPage(
        name: RouteConstants.changepassword,
        page: () => ChangePassword(),
      ),
      GetPage(
        name: RouteConstants.setyourprofile,
        page: () => SetYourProfile(),
      ),
      GetPage(
        name: RouteConstants.splashscreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: RouteConstants.welcome1,
        page: () => WelcomeScreen1(),
      ),
      GetPage(
        name: RouteConstants.splashscreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: RouteConstants.welcome1,
        page: () => WelcomeScreen1(),
      ),
      GetPage(
        name: RouteConstants.homeguestscreen,
        page: () => const HomeGuestScreen(),
      ),
      GetPage(
        name: RouteConstants.stepper,
        page: () => MyStepperApp(),
      ),
      GetPage(
        name: RouteConstants.productdetailscreen,
        page: () => const ProductDetailScreen(),
      ),
      GetPage(
        name: RouteConstants.searchscreen,
        page: () => const SearchScreen(),
      ),
      GetPage(
        name: RouteConstants.categoriesscreen,
        page: () => const CategoriesScreen(),
      ),
      GetPage(
        name: RouteConstants.searchfilterscreen,
        page: () => const SearchFilterScreen(),
      ),
      GetPage(
        name: RouteConstants.myprofilescreen,
        page: () => const MyProfileScreen(),
      ),
      GetPage(
        name: RouteConstants.profilesettingscreen,
        page: () => const ProfileSettingScreen(),
      ),
      GetPage(
        name: RouteConstants.changepasswordscreen,
        page: () => const ChangePasswordScreen(),
      ),
      GetPage(
        name: RouteConstants.addressbookscreen,
        page: () => const AddressBookScreen(),
      ),
      GetPage(
        name: RouteConstants.addressbookscreen3,
        page: () => const AddressBookScreen3(),
      ),
      GetPage(
        name: RouteConstants.addressbookscreen2viewmap,
        page: () => const AddressBookScreen2ViewMap(),
      ),
      GetPage(
        name: RouteConstants.paymentmethodscreen,
        page: () => const PaymentSetting_PaymentMethodsScreen(),
      ),
      GetPage(
        name: RouteConstants.returncancellationscreen,
        page: () => const ReturnCancellationScreen(),
      ),
      GetPage(
        name: RouteConstants.wishlistscreen,
        page: () => const WishListScreen(),
      ),
      GetPage(
        name: RouteConstants.myprofilecontactus,
        page: () => const MyProfileContactus(),
      ),
      GetPage(
        name: RouteConstants.notificationscreens,
        page: () => const NotificationsScreen(),
      ),
      GetPage(
        name: RouteConstants.settingscreen,
        page: () => const SettingScreen(),
      ),
      GetPage(
        name: RouteConstants.notificationsetting,
        page: () => const NotificationsSettingScreen(),
      ),
      GetPage(
        name: RouteConstants.settingcontactusscreen,
        page: () => const SettingContactUsScreen(),
      ),
      GetPage(
        name: RouteConstants.helpsupportscreen,
        page: () => const HelpSupportScreen(),
      ),
      GetPage(
        name: RouteConstants.helpsupportscreen2,
        page: () => const HelpSupportScreen2(),
      ),
      GetPage(
        name: RouteConstants.chatslistscreen,
        page: () => ChatsListScreen(),
      ),
      GetPage(
        name: RouteConstants.chatscreen,
        page: () => const ChatScreen(),
      ),
      GetPage(
        name: RouteConstants.addnewcardpaymentmethod,
        page: () => AddNewCardPaymentMethod(),
      ),
      GetPage(
        name: RouteConstants.homeuserscreen,
        page: () => HomeUserScreen(),
      ),
      GetPage(
        name: RouteConstants.almosttherescreen,
        page: () => AlmostThereScreen(),
      ),
      GetPage(
        name: RouteConstants.userbottomnavbar,
        page: () => UserBottomNavBar(),
      ),

      ////////seller
      GetPage(
        name: RouteConstants.sellercreateshopscreen,
        page: () => const SellerCreateShopScreen(),
      ),
      GetPage(
        name: RouteConstants.inventory,
        page: () => const InventorySeller(),
      ),
      GetPage(
        name: RouteConstants.sellercreatebank,
        page: () => const SellerSetupBank(),
      ),
      GetPage(
        name: RouteConstants.sellerdashboard,
        page: () => const SellerDashboardScreen(),
      ),
      GetPage(
        name: RouteConstants.sellerorderhistoryscreen,
        page: () => const SellerOrderHistoryScreen(),
      ),
      GetPage(
        name: RouteConstants.selleractiveorderdetailsscreen,
        page: () => const SellerActiveOrderDetails(),
      ),
      GetPage(
        name: RouteConstants.sellercompletedorderdetailsscreen,
        page: () => const SellerCompletedOrderDetails(),
      ),
      GetPage(
        name: RouteConstants.sellerrefundorderdetailsscreen,
        page: () => const SellerRefundOrderDetails(),
      ),
      GetPage(
        name: RouteConstants.sellerprofilescreen,
        page: () => const SellerProfileScreen(),
      ),
      GetPage(
        name: RouteConstants.sellersettingscreen,
        page: () => const SellerSettingScreen(),
      ),
      GetPage(
        name: RouteConstants.sellersetuppassword,
        page: () => const SellerSetupPassword(),
      ),
      GetPage(
        name: RouteConstants.sellerbankaccountsetting,
        page: () => const SellerBankAccountSetting(),
      ),
      GetPage(
        name: RouteConstants.sellersalesreportscreen,
        page: () => const SellerSalesReportScreen(),
      ),
      GetPage(
        name: RouteConstants.sellersetupshop,
        page: () => const SellerSetupShop(),
      ),
      GetPage(
        name: RouteConstants.sellerchatlistscreen,
        page: () => SellerChatsListScreen(),
      ),
      GetPage(
        name: RouteConstants.sellerchatscreen,
        page: () => SellerChatScreen(),
      ),
      GetPage(
        name: RouteConstants.userdashboardscreen,
        page: () => UserDashboardScreen(),
      ),
      GetPage(
        name: RouteConstants.userorderhistory,
        page: () => UserOrderHistoryScreen(),
      ),
      GetPage(
        name: RouteConstants.useractiveorderdetails,
        page: () => UserActiveOrderDetails(),
      ),
      GetPage(
        name: RouteConstants.userrefundorderdetails,
        page: () => UserRefundOrderDetails(),
      ),
      GetPage(
        name: RouteConstants.usercompletedorderdetails,
        page: () => UserCompletedOrderDetails(),
      ),
      GetPage(
        name: RouteConstants.editsellershop,
        page: () => EditSellerShop(),
      ),
    ];
  }
}
