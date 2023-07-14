class ImageModel {
  final int? id;
  final String? image;

  const ImageModel({this.id, this.image});

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json['id'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
      };
}
