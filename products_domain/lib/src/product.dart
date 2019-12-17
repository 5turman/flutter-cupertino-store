// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';

part 'product.g.dart';

enum Category {
  all,
  accessories,
  clothing,
  home,
}

abstract class Product implements Built<Product, ProductBuilder> {
  factory Product([void Function(ProductBuilder) updates]) = _$Product;

  Product._();

  Category get category;

  int get id;

  bool get isFeatured;

  String get name;

  int get price;

  String get assetName => '$id-0.jpg';

  String get assetPackage => 'shrine_images';
}

Product newProduct({
  @required Category category,
  @required int id,
  @required bool isFeatured,
  @required String name,
  @required int price,
}) {
  return Product(
    (b) => b
      ..category = category
      ..id = id
      ..isFeatured = isFeatured
      ..name = name
      ..price = price,
  );
}
