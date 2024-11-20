class Information {
  int? userId;
  int? id;
  String? todo;
  bool? completed;
  Information({this.id, this.todo, this.completed, this.userId});
  Information.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    completed = json['completed'];
    todo = json['todo'];
  }
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.id;
    data['id'] = this.todo;
    data['Completed'] = this.completed;
    data['todo'] = this.userId;
    return data;
  }
}
