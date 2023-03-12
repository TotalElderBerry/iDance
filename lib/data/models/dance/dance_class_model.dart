class DanceClassModel{
  final String id;
  final String name;

  DanceClassModel(this.id, this.name);

  factory DanceClassModel.fromDocSnap(Map<String, dynamic> ?snap){
    return DanceClassModel(snap?['id'], snap?['name']);
  }
}