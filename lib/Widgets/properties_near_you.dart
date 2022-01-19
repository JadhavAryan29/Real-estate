
class PropertiesNearYou {
  final String imageUrl;
  final String amount;
  final String subtopic;
  final String area;
  final String sale;

  PropertiesNearYou({
    required this.imageUrl,
    required this.amount,
    required this.subtopic,
    required this.area,
    required this.sale,
  });
}

List<PropertiesNearYou> propertiesNearYou = [
  PropertiesNearYou(
    imageUrl: "assets/h.png",
    amount: "\$335,900",
    subtopic: "Station,Hampton,GA 23423",
    area: "3bds | 5baths | 1750 sqft",
    sale: "Home For Sale",
  ),
  PropertiesNearYou(
    imageUrl: "assets/i.png",
    amount: "\$289,700",
    subtopic: "129 hopper Ln,Folsom...",
    area: "3bds | 5baths | 1750 sqft",
    sale: "Home For Sale",
  ),
  PropertiesNearYou(
    imageUrl: "assets/l.png",
    amount: "\$470,700",
    subtopic: "13598 Lagrone St,Powder",
    area: "3bds | 5baths | 1750 sqft",
    sale: "Home For Sale",
  ),
  PropertiesNearYou(
    imageUrl: "assets/h.png",
    amount: "\$224,900",
    subtopic: "4625 Careyback Ave, Elk...",
    area: "3bds | 5baths | 1750 sqft",
    sale: "Home For Sale",
  ),
  PropertiesNearYou(
    imageUrl: "assets/l.png",
    amount: "\$435,900",
    subtopic: "4592 EldyWood Ln Batavia....",
    area: "3bds | 5baths | 1750 sqft",
    
    sale: "Home For Sale",
  ),
  PropertiesNearYou(
    imageUrl: "assets/i.png",
    amount: "\$265,790",
    subtopic: "4028 Timber Creek....",
    area: "3bds | 5baths | 1750 sqft",
    sale: "House for Sale",
  ),
];
