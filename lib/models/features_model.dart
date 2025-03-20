class FeaturesModel {
  FeaturesModel({required this.title, required this.desc});
  final String title, desc;
}

List<FeaturesModel> allFeatures = [
  FeaturesModel(
      title: "Centralized Event Listings",
      desc:
          "Access events from nearly every major platform in one place, making it easy to discover what's happening nearby."),
  FeaturesModel(
      title: "AI-Powered Recommendations",
      desc:
          "Our AI learns your preferences and provides personalized event suggestions. A recommendation quiz further ensures you see the most relevant events."),
  FeaturesModel(
      title: "Smart Search Bar & Chatbot",
      desc:
          "Quickly find events or get instant assistance with our intelligent, AI-powered search bar and chatbot."),
  FeaturesModel(
      title: "Easy-to-Use Filters",
      desc:
          "Customize search by categories, location, distance, and dates to find events that match your interests."),
  FeaturesModel(
      title: "Interactive Map",
      desc: "Explore nearby events with our user-friendly interactive map."),
  FeaturesModel(
      title: "Seamless Calendar Integration",
      desc:
          "Add events to your calendar and share them with friends effortlessly, simplifying your social planning."),
  FeaturesModel(
      title: "Personalized Notifications",
      desc:
          "Receive notifications for events that match your interests and preferences."),
  FeaturesModel(
      title: "Social Sharing",
      desc:
          "Easily share events with friends and family to plan group outings."),
];
