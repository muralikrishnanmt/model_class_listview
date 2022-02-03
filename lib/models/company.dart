class Company {
  String? name;
  String? catchPhase;
  Company({this.name, this.catchPhase});
  Company.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    catchPhase = json['catchPhrase'];
  }
}
