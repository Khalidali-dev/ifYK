class BlogsModel {
  List<BlogData>? data;

  BlogsModel({this.data});

  factory BlogsModel.fromJson(Map<String, dynamic> json) {
    return BlogsModel(
      data: json['data'] != null
          ? List<BlogData>.from(
              json['data'].map((x) => BlogData.fromJson(x)),
            )
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data?.map((x) => x.toJson()).toList(),
    };
  }
}

class BlogData {
  String? id;
  String? date;
  String? name;
  String? title;
  String? image;

  BlogData({this.id, this.date, this.name, this.title, this.image});

  factory BlogData.fromJson(Map<String, dynamic> json) {
    return BlogData(
      id: json['id'] as String?,
      date: json['date'] as String?,
      name: json['name'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date,
      'name': name,
      'title': title,
      'image': image,
    };
  }
}
