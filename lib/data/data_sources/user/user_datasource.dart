import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:idance/data/models/user/dance_user.dart';

import '../../../domain/entities/user_params.dart';

class UserSource{
  static final db = FirebaseFirestore.instance;

  void addUser(String id, UserParams params){
    var data = <String,dynamic>{
      "firstName": params.firstName,
      "lastName": params.lastName,
      "emailAddress": params.email,
      "gender": params.gender,
      "roles": params.roles,
    };
    db.collection('users').doc(id).set(data);
  }

  DanceUserModel getUserbyId(String id){
    final docRef = db.doc('document_id');
    return DanceUserModel.fromFirestore(docRef);
  }

}