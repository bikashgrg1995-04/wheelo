class AppConstants {
  AppConstants._();

  static const String appName = 'Wheelo';
  static const String appTagline = 'Dealer management, automated.';
  static const String appVersion = '0.1.0';
  static const String appLogo = 'assets/images/app_logo.png';

  // Desktop window
  static const double minWindowWidth = 1280;
  static const double minWindowHeight = 800;

  // API
  static const String baseUrl = 'http://127.0.0.1:8000/api/v1';

  // Storage Keys
  static const String accessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String rememberEmailKey = 'remember_email';

  // Animation
  static const Duration animationDuration = Duration(milliseconds: 200);

  // Layout
  static const double authCardMaxWidth = 420;

  // Sidebar
  static const double sidebarExpandedWidth = 260;
  static const double sidebarCollapsedWidth = 80;

  // Topbar
  static const double topBarHeight = 70;

  // Padding
  static const double pagePadding = 24;

  // Card
  static const double cardRadius = 16;
}
