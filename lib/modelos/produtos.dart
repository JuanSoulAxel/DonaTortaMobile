import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> salgadosFritos = [
  Product(
      id: 1,
      title: "Coxinhas",
      price: 30,
      size: 10,
      image: "assets/img/coxinhas.png",
      description: descricao,
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Bola de Queijo",
      price: 30,
      size: 10,
      image: "assets/img/bola-de-queijo.png",
      description: descricao,
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Enroladinho",
      price: 35,
      size: 10,
      image: "assets/img/enroladinho.png",
      description: descricao,
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Pastel",
      price: 6,
      size: 10,
      image: "assets/img/pastel.png",
      description: descricao,
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Batata Frita",
      price: 5,
      size: 10,
      image: "assets/img/batata-frita.png",
      description: descricao,
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Kibi",
    price: 30,
    size: 10,
    image: "assets/img/kibi.png",
    description: descricao,
    color: Color(0xFFAEAEAE),
  ),
];

List<Product> tortasDoces = [
  Product(
      id: 1,
      title: "Torta de Chocolate",
      price: 234,
      size: 12,
      image: "assets/img/torta-de-chocolate.png",
      description: descricao,
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Brigadeiro",
      price: 234,
      size: 12,
      image: "assets/img/brigadeiro.png",
      description: descricao,
      color: Color(0xFF3D82AE)),
];

String descricao =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s Lorem Ipsum.";
