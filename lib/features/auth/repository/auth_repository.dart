import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:redditclone/core_floder/provider/firebase_providers.dart';
final authRepositoryProvider=Provider((ref) => AuthRepository(auth: ref.read(authProvider), firestore: ref.read(firestoreProvider), google: ref.read(googleSignInProvider)));
class AuthRepository {
  final FirebaseAuth _auth;
   final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;
//    GoogleSignIn _googleSignIn = GoogleSignIn(
//   scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly'],
// );
  AuthRepository({
    required FirebaseAuth auth,
   required FirebaseFirestore firestore,
   required GoogleSignIn google}): _auth=auth, _firestore=firestore, _googleSignIn=google;
  void signWithGoogle() async{
    try{
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final googleAuth=await googleUser?.authentication;
      final credential=GoogleAuthProvider.credential(
        idToken: googleAuth?.idToken,
        accessToken: googleAuth?.accessToken,
      );
      UserCredential userCredential =await _auth.signInWithCredential(credential);

    }
    catch(e){
    }
  }
}