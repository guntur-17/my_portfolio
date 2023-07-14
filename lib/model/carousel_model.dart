class CarouselModel {
  final int? id;
  final String? name;
  final String? image;
  final String? about;

  const CarouselModel({this.id, this.name, this.image, this.about});

  factory CarouselModel.fromJson(Map<String, dynamic> json) => CarouselModel(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        about: json['about'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'about': about,
      };
}
