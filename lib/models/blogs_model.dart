class BlogsModel {
  final String image, desc;

  BlogsModel({
    required this.image,
    required this.desc,
  });
}

List<BlogsModel> blogs = [
  BlogsModel(
    image: "blog1",
    desc: "Smart cities integrating technology for better living",
  ),
  BlogsModel(
    image: "blog2",
    desc: "Healthcare access bridging the gap in underserved communities",
  ),
  BlogsModel(
    image: "blog3",
    desc: "Humanitarian crisis efforts intensify to Aid refugees",
  ),
  BlogsModel(
    image: "blog4",
    desc: "Flu season alert what you need to know to stay safe",
  ),
];
