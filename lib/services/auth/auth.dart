import 'dart:async';


abstract class AuthService {
  // gives current authenticated user
  //============================================================================

  // sends email verification link
  Future<void> sendEmailVerification();

  //============================================================================
  //============================================================================

  // verify phone number : Android & IOS only
  Future<void> verifyPhoneNumber(String phoneNumber);



  // handle when a code has been sent to the device from Firebase, used to prompt users to enter the code
  void codeSent(String verificationId, int? resendToken);

  // handle a timeout of when automatic SMS code handling fails
  void codeAutoRetrievalTimeout(String verificationId);


  // update code sent status
  void updateCodeSentStatus(bool status);

  // listen to code sent status
  Stream<bool?> get onCodeSentStatusChanged;

  //============================================================================

  // update latest error
  void updateError(Object error);

  // listen to errors
  Stream<Object?> get onError;

  //============================================================================

  // Sign-Out
  Future<void> signOut();

  //============================================================================

  // deleteAccount
  Future<void> deleteAccount();
}

