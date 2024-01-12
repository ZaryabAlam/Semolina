class MongodbModel {
  // Id? iId;
  String? word;
  List<String>? grammer;
  List<String>? meaning;

  MongodbModel({this.word, this.grammer, this.meaning});

  MongodbModel.fromJson(Map<String, dynamic> json) {
    // iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    word = json['word'];
    grammer = json['grammer'].cast<String>();
    meaning = json['meaning'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // if (this.iId != null) {
    //   data['_id'] = this.iId!.toJson();
    // }
    data['word'] = this.word;
    data['grammer'] = this.grammer;
    data['meaning'] = this.meaning;
    return data;
  }
}

// class Id {
//   String? oid;

//   Id({this.oid});

//   Id.fromJson(Map<String, dynamic> json) {
//     oid = json['$oid'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['$oid'] = this.oid;
//     return data;
//   }
// }