import 'package:flutter/material.dart';

class BrandIconModel {
  final int? id;
  final IconData? icon;
  final String? url;

  const BrandIconModel({this.id, this.icon, this.url});

  factory BrandIconModel.fromJson(Map<String, dynamic> json) => BrandIconModel(
        id: json['id'],
        icon: json['icon'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {'id': id, 'icon': icon, 'url': url};
}
