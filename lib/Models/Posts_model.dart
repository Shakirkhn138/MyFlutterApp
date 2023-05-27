class PostsModel {
  PostsModel({
      this.url, 
      this.developer, 
      this.company, 
      this.name, 
      this.salary,});

  PostsModel.fromJson(dynamic json) {
    url = json['url'];
    developer = json['developer'];
    company = json['company'];
    name = json['name'];
    salary = json['salary'];
  }
  String? url;
  String? developer;
  String? company;
  String? name;
  int? salary;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['developer'] = developer;
    map['company'] = company;
    map['name'] = name;
    map['salary'] = salary;
    return map;
  }

}