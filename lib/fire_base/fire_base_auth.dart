import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/utilities/Constants.dart';
import 'package:firebase_database/firebase_database.dart';

class FireAuth{
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void signUp(String username, String email, String password, String confirmPassword, Function onSuccess) {
    _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((userCredential) {
          _createUser(userCredential.user!.uid, username, confirmPassword, onSuccess);
          print(userCredential.user);
        })
        .catchError((err) {
          // Todo: Xử lý lỗi
        });
  }

  _createUser(String userId, String username, String confirmPassword, Function onSuccess) {
    var user = {
      Constants.KEY_USERNAME: username,
      Constants.KEY_CONFIRM_PASSWORD: confirmPassword
    };
    var ref = FirebaseDatabase.instance.reference().child("users");
    ref.child(userId).set(user).then((user) {
      // success
      onSuccess();
    }).catchError((err) {

    });
  }
}
