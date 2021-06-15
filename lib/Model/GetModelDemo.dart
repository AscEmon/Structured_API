// // To parse this JSON data, do
// //
// //     final getModelDemo = getModelDemoFromJson(jsonString);

// import 'dart:convert';

// List<GetModelDemo> getModelDemoFromJson(String str) => List<GetModelDemo>.from(
//     json.decode(str).map((x) => GetModelDemo.fromJson(x)));

// String getModelDemoToJson(List<GetModelDemo> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class GetModelDemo {
//   GetModelDemo({
//     this.id,
//     this.name,
//     this.username,
//     this.email,
//     this.address,
//     this.phone,
//     this.website,
//     this.company,
//   });

//   int? id;
//   String? name;
//   String? username;
//   String? email;
//   Address? address;
//   String? phone;
//   String? website;
//   Company? company;

//   factory GetModelDemo.fromJson(Map<String, dynamic> json) => GetModelDemo(
//         id: json["id"] == null ? null : json["id"],
//         name: json["name"] == null ? null : json["name"],
//         username: json["username"] == null ? null : json["username"],
//         email: json["email"] == null ? null : json["email"],
//         address:
//             json["address"] == null ? null : Address.fromJson(json["address"]),
//         phone: json["phone"] == null ? null : json["phone"],
//         website: json["website"] == null ? null : json["website"],
//         company:
//             json["company"] == null ? null : Company.fromJson(json["company"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id == null ? null : id,
//         "name": name == null ? null : name,
//         "username": username == null ? null : username,
//         "email": email == null ? null : email,
//         "address": address == null ? null : address?.toJson(),
//         "phone": phone == null ? null : phone,
//         "website": website == null ? null : website,
//         "company": company == null ? null : company?.toJson(),
//       };
// }

// class Address {
//   Address({
//     this.street,
//     this.suite,
//     this.city,
//     this.zipcode,
//     this.geo,
//   });

//   String? street;
//   String? suite;
//   String? city;
//   String? zipcode;
//   Geo? geo;

//   factory Address.fromJson(Map<String, dynamic> json) => Address(
//         street: json["street"] == null ? null : json["street"],
//         suite: json["suite"] == null ? null : json["suite"],
//         city: json["city"] == null ? null : json["city"],
//         zipcode: json["zipcode"] == null ? null : json["zipcode"],
//         geo: json["geo"] == null ? null : Geo.fromJson(json["geo"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "street": street == null ? null : street,
//         "suite": suite == null ? null : suite,
//         "city": city == null ? null : city,
//         "zipcode": zipcode == null ? null : zipcode,
//         "geo": geo == null ? null : geo?.toJson(),
//       };
// }

// class Geo {
//   Geo({
//     this.lat,
//     this.lng,
//   });

//   String? lat;
//   String? lng;

//   factory Geo.fromJson(Map<String, dynamic> json) => Geo(
//         lat: json["lat"] == null ? null : json["lat"],
//         lng: json["lng"] == null ? null : json["lng"],
//       );

//   Map<String, dynamic> toJson() => {
//         "lat": lat == null ? null : lat,
//         "lng": lng == null ? null : lng,
//       };
// }

// class Company {
//   Company({
//     this.name,
//     this.catchPhrase,
//     this.bs,
//   });

//   String? name;
//   String? catchPhrase;
//   String? bs;

//   factory Company.fromJson(Map<String, dynamic> json) => Company(
//         name: json["name"] == null ? null : json["name"],
//         catchPhrase: json["catchPhrase"] == null ? null : json["catchPhrase"],
//         bs: json["bs"] == null ? null : json["bs"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name == null ? null : name,
//         "catchPhrase": catchPhrase == null ? null : catchPhrase,
//         "bs": bs == null ? null : bs,
//       };
// }
// To parse this JSON data, do
//
//     final getModelDemo = getModelDemoFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';

GetModelDemo getModelDemoFromJson(String str) =>
    GetModelDemo.fromJson(json.decode(str));

String getModelDemoToJson(GetModelDemo data) => json.encode(data.toJson());

class GetModelDemo {
  GetModelDemo({
    this.category,
    this.data,
  });

  String? category;
  List<Datum>? data;

  factory GetModelDemo.fromJson(Map<String, dynamic> json) => GetModelDemo(
        category: json["category"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.categoryName,
    this.name,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  String? id;
  String? categoryName;
  String? name;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        categoryName: json["category_name"],
        name: json["name"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
        "name": name,
        "image": image,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
