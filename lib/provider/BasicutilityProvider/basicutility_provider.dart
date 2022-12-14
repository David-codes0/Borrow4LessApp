import 'package:flutter/material.dart';


enum ChatTypeEnum { sender, receiver }

enum UserType { mentor, mentee }

class BasicUtilityProvider with ChangeNotifier {
  // UserType Logic Setting and parsing
  // UserType _userType = UserType.mentee;
  // get userType => _userType;

  // parseUserTypeToString(UserType usertype) {
  //   if (usertype == UserType.mentee) {
  //     return 'mentee';
  //   } else {
  //     return 'mentor';
  //   }
  // }

  // getUserTypefromString(String usertype) {
  //   if (usertype == 'mentee') {
  //     return UserType.mentee;
  //   } else {
  //     return UserType.mentor;
  //   }
  // }

  // setuserType(UserType usertype) {
  //   _userType = usertype;
  //   StorageUtil.putString(
  //       key: 'userType', value: parseUserTypeToString(usertype));
  // }

  /* mentee  ButtomNav Bar Logic */
  int _currentIndex = 0;
  get currentIndex => _currentIndex;
  resetCurrentIndex() {
    _currentIndex = 0;
    notifyListeners();
  }

  changeCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  // topic List
  int _currentIndexTopicList = 0;
  get currentIndexTopicList => _currentIndexTopicList;
  resetCurrentIndexT() {
    _currentIndexTopicList = 0;
    notifyListeners();
  }

  changeCurrentIndexT(int index) {
    _currentIndexTopicList = index;
    notifyListeners();
  }

  bool _toggleNotification = false;
  get toggleNotification => _toggleNotification;
  toggleNotee() {
    _toggleNotification = !_toggleNotification;
    notifyListeners();
  }

  // home screen state change on Searching
  bool _isSearchFocused = true;
  get iSEarchFocused => _isSearchFocused;
  set isSearchFocused(bool value) {
    _isSearchFocused = value;
    notifyListeners();
  }

// MicroPhone and Send Button
  bool _isChatTextfieldFocused = false;
  get isChatTextfieldFocused => _isChatTextfieldFocused;
  set isCHatTextfieldFocused(bool value) {
    _isChatTextfieldFocused = value;
    notifyListeners();
  }

  bool _isSelected = true;
  get isSelected => _isSelected;
  changeSelected() {
    _isSelected = !_isSelected;
    notifyListeners();
  }

  // remember me
  bool _isRememberme = false;
  get isRememberme => _isRememberme;
  toggleIsRememberMe() {
    _isRememberme = !isRememberme;
    notifyListeners();
  }

// Text Input Field Validation
  String? _emailErrorMessage;
  get emailErrorMessage => _emailErrorMessage;
  bool validateEmail(String value, bool isSubmit) {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      _emailErrorMessage = null;
      notifyListeners();
      return true;
    } else if (value.isEmpty) {
      if (!isSubmit) {
        _emailErrorMessage = null;
        notifyListeners();
      } else {
        _emailErrorMessage = 'invalid email address';
        notifyListeners();
      }
      return false;
    } else {
      _emailErrorMessage = 'invalid email address';
      notifyListeners();
      return false;
    }
  }

  String? _passwordErrorMessage;
  get passwordErrorMessage => _passwordErrorMessage;
  bool validatePassword(String value, bool isSubmit) {
    if (RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$").hasMatch(value)) {
      _passwordErrorMessage = null;
      notifyListeners();
      return true;
    } else if (value.isEmpty) {
      if (!isSubmit) {
        _passwordErrorMessage = null;
        notifyListeners();
      } else {
        _passwordErrorMessage =
            'password must have at least 8 digit including a number';
        notifyListeners();
      }
      return false;
    } else {
      _passwordErrorMessage =
          'password must have at least 8 digit including a number';
      notifyListeners();
      return false;
    }
  }

  // Chat Dummies
  TextEditingController chatController = TextEditingController();

  final List<Map<String, dynamic>> testchats = [
    {
      'chat': 'Hello, How are you today ?',
      'type': ChatTypeEnum.receiver,
    },
    {
      'chat':
          'Hello, How are you today ?Hello, How are you today ?Hello, How are you today ?',
      'type': ChatTypeEnum.sender
    },
    {
      'chat': 'Hello, How are you today ?',
      'type': ChatTypeEnum.receiver,
    },
    {
      'chat': 'Hello, How are you today ?',
      'type': ChatTypeEnum.sender,
    },
    {
      'chat': 'Hello, How are you today ?',
      'typeHello, How are you today ?Hello, How are you today ?Hello, How are you today ?':
          ChatTypeEnum.receiver
    },
    {
      'chat': 'Hello, How are you today ?',
      'type': ChatTypeEnum.sender,
    },
    {
      'chat':
          'Hello, How are you today ?Hello, How are you today ?Hello, How are you today ?Hello, How are you today ?',
      'type': ChatTypeEnum.sender,
    }
  ];

  addchat(String chatmessage, int index) {
    Map<String, dynamic> chat = {
      'chat': chatmessage,
      'type': index % 3 == 1 ? ChatTypeEnum.receiver : ChatTypeEnum.sender,
    };
    if (chatmessage.isNotEmpty) {
      testchats.add(chat);
    }

    notifyListeners();
  }

  // Gender and Language selecting
  List<String> genders = ['Male', 'Female'];
  String _selectedGender = 'Male';

  get selectedGender => _selectedGender;
  set selectedGenders(String gender) {
    _selectedGender = gender;
    notifyListeners();
  }

  List<String> language = ['English', 'French', 'Yoruba'];
  String _selectedLanguage = 'English';

  get selectedLanguage => _selectedLanguage;
  set selectedLanguages(String language) {
    _selectedLanguage = language;
    notifyListeners();
  }

  List<String> category = [
    'Business',
    'Business2',
    'Business3',
  ];
  String _selectedCategory = 'Business';

  get selectedCategory => _selectedCategory;
  set selectedCategorys(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

// Uploaded logic to change create profile page
  bool _isUploaded = false;
  get isUploaded => _isUploaded;
  set isupload(bool uploaded) {
    _isUploaded = uploaded;
    notifyListeners();
  }

// Submitted list specialist
  bool _listSubmitted = false;
  get listSubmitted => _listSubmitted;
  set listSubmittedz(bool submitted) {
    _listSubmitted = submitted;
    notifyListeners();
  }

  // For Mentee bookin
  int _acceptOrDeclineBookingIndex = 0;
  get acceptOrDeclineBookingIndex => _acceptOrDeclineBookingIndex;
  resetAcceptorDeclineIndexT() {
    _acceptOrDeclineBookingIndex = 0;
    notifyListeners();
  }

  changeAcceptOrDeclineBookingIndex(int index) {
    _acceptOrDeclineBookingIndex = index;
    notifyListeners();
  }
}
