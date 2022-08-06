class AppAPIEndPoints {
  AppAPIEndPoints._();
  static const int TIMEOUT_REQUEST = 60;
  // static const String BASE_URL = 'http://164.52.213.218:5000'; // DEVELOPMENT
  static const String BASE_URL = 'http://164.52.213.218:7070'; // DEVELOPMENT
  // static const String BASE_URL = 'http://103.178.248.83'; // PRODUCTION
  static const String GET_COLORS = '/colors';

  //=========================== GET ===============================
  //IP INFORMATION
  static const String GET_IP = 'https://api.ipify.org';

  //SUNRISE SUNSET
  static const String GET_SUNRISE_SUNSET = 'https://api.sunrise-sunset.org';

  //AIRLINES
  static const String GET_AIRLINES = '/airlines';

  //SYNC DETAILS
  static const String GET_SYNC_DETAILS = '/syncdetails';

  //PROFILE
  static const String GET_PERSONAL_DETAILS = '/personaldetails';
  static const String GET_CM_USER_PROFILE = '/cmuserprofile';
  static const String GET_AEP_DETAILS = '/aep';
  static const String GET_MEDICAL_DETAILS = '/medical';
  static const String GET_VACCINATION_DETAILS = '/vaccination';
  static const String GET_NEAR_EXPIRIES_DETAILS = '/nearbyexpiries';
  static const String GET_PASSPORT_DETAILS = '/passport';
  static const String GET_VISA_DETAILS = '/visa';
  static const String GET_FLYING_SUMMARY = '/flyingsummary';
  static const String POST_PROFILE_FETCH_REQUEST = '/profilefetchrequest';

  //CREW LIBRARY
  static const String GET_LICENSES = '/licenses';
  static const String GET_AIRFIELD_CLEARANCE = '/airfieldclearance';
  static const String GET_GROUND_TRAINING = '/groundtraining';
  static const String GET_SIM_FLIGHT_TRAINING = '/simflighttraining';

  //VALIDATIONS
  static const String GET_USERID_VALID = '/useridvalid';
  static const String GET_SOCIAL_PROFILE_VALID = '/socialprofilevalid';
  static const String GET_USER_AIRLINE_VALID = '/userairlinevalid';
  static const String GET_CREDENTIALS_VALID = '/credentialsvalid';
  static const String GET_USER_INFO_AVAILABILITY = '/userinfoavailability';
  static const String GET_BUSINESS_STAFF_INFO = '/businessstaffinfo';

  //PROGRESS
  static const String GET_CRED_VERIFY_PROGRESS = '/credverifyprogress';
  // static const String GET_PROFILE_FETCH_PROGRESS = '/profilefetchprogress';
  static const String GET_REQUEST_RUN_STATUS = '/requestrunstatus';

  //EGCA
  static const String GET_EGCA_TRIPS = '/egcatrips';
  static const String GET_AUTH_PERSON_DESIG = '/authpersondesign';
  static const String GET_AUTH_PERSON_NAME = '/authpersonname';
  static const String GET_TAILNOS = '/tailnos';
  static const String GET_AIRPORTS = '/airports';
  static const String GET_FLIGHT_PURPOSE = '/flightpurpose';
  static const String GET_PILOT_FUNCTION_NAME = '/pilotfunctionname';
  static const String GET_EGCA_CART_ITEMS = '/egcacartitems';
  static const String GET_BOOK_ENTRIES = '/bookentries';
  static const String GET_AIPPORT_INFO = '/airportinfo';
  static const String GET_SIMULATOR_FTO = '/ftonames';
  static const String GET_REGNOS = '/regnos';
  static const String GET_APPROCH_TYPE = '/approachtypes';
  static const String GET_SIMULATOR_TYPES = '/simtypes';
  static const String GET_SIMULATOR_REGNOS = '/simregnos';
  static const String GET_SIMULATOR_INSTRUCTORS = '/siminstructors';

  static const String POST_EGCA_LOG_DRAFT = '/egcalogdraft';
  static const String POST_MARK_EGCA_LOGGED_RECORDS = '/markegcalogged';
  static const String POST_EGCA_CART_ITEMS_DELETE = '/egcacartitemsdelete';

  //ROSTER
  static const String GET_ROSTER_TRIPS = '/rostertrips';
  static const String POST_ROSTER_FETCH_REQUEST = '/rosterrequest';

  //TRAININGS
  static const String GET_TRAINING_RECORDS = '/traininginfo';

  //TRAINING MODULE - DYNAMIC WIDGETS
  static const String GET_DYNAMIC_WIDGETS = '/form/getFormDetails';

  //=========================== POST ===============================
  static const String POST_ADDUSER = '/adduser';

  static const String POST_PORTAL_CRED = '/portalcred';

  static const String POST_USER_AIRLINE_MAP = '/useroptrmap';

  static const String POST_ANDROID_INFO = '/androidinfo';

  static const String POST_IOS_INFO = '/iosinfo';

  static const String POST_LINUX_INFO = '/linuxinfo';

  static const String POST_MACOS_INFO = '/maxosinfo';

  static const String POST_WEBBROWSER_INFO = '/webbrowserinfo';

  static const String POST_WINDOWS_INFO = '/windowsdeviceinfo';
}
