import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:idance/data/models/dance/dance_class_model.dart';

class DanceUserModel{
  final String id;
  final String firstName;
  final String lastName;
  final String contactNumber;
  final String emailAddress;
  final List<String> roles;
  
  //student
  final List<DanceClassModel> classes_booked;

  //instructor
  final List<DanceClassModel> classes_offered;

  DanceUserModel(this.id, this.firstName, this.lastName, this.contactNumber, this.emailAddress, this.roles, this.classes_booked, this.classes_offered);
  
//   factory DanceUserModel.fromDocSnap(Map <String,dynamic>? snap){
//     return null;
//   }
// }

  factory DanceUserModel.fromFirestore(DocumentReference<Map<String,dynamic>> snapshot){
     snapshot.get().then((DocumentSnapshot<Map<String,dynamic>> snp) {
      if (snp.exists) {
        final data = snp.data();
        // Document exists
        return DanceUserModel(snapshot.id, data?['firstName'], data?['lastName'], data?['contactNumber'], data?['email'], data?['roles'], data?['classesBooked'], data?['classesOffered']);
      } else {
        // Document does not exist
        print('Document does not exist');
      }
    }).catchError((error) {
      // Handle the error
      print('Error getting document: $error');
    });
    return DanceUserModel("", "", "", "", "", [], [], []);
  }

}