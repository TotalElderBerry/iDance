import 'package:idance/domain/entities/user.dart';

import '../../../data/models/user/dance_user.dart';

abstract class UserRepository{
    //for instructors
    void createDanceClass();
    void getBookedDanceClass();

    //for students  
    void getAvailableDanceClass();
    void getDanceClassEnrolled();
    void bookDanceClass();
    void submitProofofPayment();
}