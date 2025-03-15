class BlogsModel {
  final String image, category, desc, profile;

  BlogsModel(
      {required this.image,
      required this.category,
      required this.desc,
      required this.profile});
}

List<BlogsModel> blogs = [
  BlogsModel(
      image: "blog1",
      category: "Motion Design",
      desc: "Using Motion Design for Social Media Marketing",
      profile: "person1"),
  BlogsModel(
      image: "blog2",
      category: "Marketing",
      desc: "Top Marketing Automation Tools for Creatives",
      profile: "person2"),
  BlogsModel(
      image: "blog3",
      category: "SEO",
      desc: "SEO for Beginners: A Comprehensive Guide",
      profile: "person1"),
  BlogsModel(
      image: "blog4",
      category: "Motion Design",
      desc: "The Role of Motion Design in Advertising",
      profile: "person1"),
  BlogsModel(
      image: "blog5",
      category: "UI Design",
      desc: "UI Design Trends to Watch in 2023",
      profile: "person2"),
  BlogsModel(
      image: "blog6",
      category: "Marketing",
      desc: "Marketing Strategies for Creative Professionals",
      profile: "person1"),
];
