class LatestProject {
  final String imageUrl;
  final String topic;
  final String subTopic;
  final String area;
  final String price;
  final String amount;

  LatestProject({
    required this.imageUrl,
    required this.topic,
    required this.subTopic,
    required this.area,
    required this.price,
    required this.amount,
  });
}

List<LatestProject> latestproject = [
  LatestProject(
    imageUrl: "assets/h.png",
    topic: "Home For Sale",
    subTopic: "Station,Hampton,GA 23423",
    area: "3bds | 5baths | 1750 sqft",
    price: "Starting Price",
    amount: "\$335,900",
  ),
  LatestProject(
    imageUrl: "assets/i.png",
    topic: "Home For Sale",
    subTopic: "129 hopper Ln,Folsom...",
    area: "3bds | 5baths | 1750 sqft",
    price: "Starting Price",
    amount: "\$289,700",
  ),
  LatestProject(
    imageUrl: "assets/l.png",
    topic: "Home For Sale",
    subTopic: "13598 Lagrone St,Powder",
    area: "3bds | 5baths | 1750 sqft",
    price: "Starting Price",
    amount: "\$470,700",
  ),
  LatestProject(
    imageUrl: "assets/h.png",
    topic: "Home For Sale",
    subTopic: "4625 Careyback Ave, Elk...",
    area: "3bds | 5baths | 1750 sqft",
    price: "Starting Price",
    amount: "\$224,900",
  ),
  LatestProject(
    imageUrl: "assets/l.png",
    topic: "Home For Sale",
    subTopic: "4592 EldyWood Ln Batavia....",
    area: "3bds | 5baths | 1750 sqft",
    price: "Starting Price",
    amount: "\$435,900",
  ),
  LatestProject(
    imageUrl: "assets/i.png",
    topic: "Home For Sale",
    subTopic: "4028 Timber Creek....",
    area: "3bds | 5baths | 1750 sqft",
    price: "Starting Price",
    amount: "\$265,790",
  ),
];
