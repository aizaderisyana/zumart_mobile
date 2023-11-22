// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Product> welcomeFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String welcomeToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    int pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String name;
    String description;
    String color;
    int amount;
    int price;
    int size;
    int user;

    Fields({
        required this.name,
        required this.description,
        required this.color,
        required this.amount,
        required this.price,
        required this.size,
        required this.user,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        description: json["description"],
        color: json["color"],
        amount: json["amount"],
        price: json["price"],
        size: json["size"],
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "color": color,
        "amount": amount,
        "price": price,
        "size": size,
        "user": user,
    };
}
