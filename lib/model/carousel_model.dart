import 'image_model.dart';

class CarouselModel {
  final int? id;
  final String? name;
  final List<ImageModel>? image;
  final String? about;
  final String? url;

  const CarouselModel({this.id, this.name, this.image, this.about, this.url});

  factory CarouselModel.fromJson(Map<String, dynamic> json) => CarouselModel(
      id: json['id'],
      name: json['name'],
      image: List<ImageModel>.from(
          json['image'].map((x) => ImageModel.fromJson(x))),
      about: json['about'],
      url: json['url'] ?? "null");

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'about': about,
        'url': url,
      };
}
