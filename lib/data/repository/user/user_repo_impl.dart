import 'package:idance/data/data_sources/user/user_datasource.dart';
import 'package:idance/domain/entities/user.dart';
import 'package:idance/domain/repository/user/user_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:core';
import '../../models/user/dance_user.dart';

class UserRepoImpl implements UserRepository{
  final UserSource _userSource;

  UserRepoImpl(this._userSource);
  

  //instructors
  @override
  void createDanceClass() {
    // TODO: implement createDanceClass
    
  }
  
  @override
  void getBookedDanceClass() {
    // TODO: implement getBookedDanceClass
  }
  
  

  //students
  @override
  void bookDanceClass() {
    // TODO: implement bookDanceClass
  }
  
  @override
  void getAvailableDanceClass() {
    // TODO: implement getAvailableDanceClass
  }
  
  
  @override
  void submitProofofPayment() {
    // TODO: implement submitProofofPayment
  }
  
  @override
  void getDanceClassEnrolled() {
    // TODO: implement getDanceClassEnrolled
  }

 
  
}