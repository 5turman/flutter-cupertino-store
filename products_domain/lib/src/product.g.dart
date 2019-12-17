// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Product extends Product {
  @override
  final Category category;
  @override
  final int id;
  @override
  final bool isFeatured;
  @override
  final String name;
  @override
  final int price;

  factory _$Product([void Function(ProductBuilder) updates]) =>
      (new ProductBuilder()..update(updates)).build();

  _$Product._({this.category, this.id, this.isFeatured, this.name, this.price})
      : super._() {
    if (category == null) {
      throw new BuiltValueNullFieldError('Product', 'category');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('Product', 'id');
    }
    if (isFeatured == null) {
      throw new BuiltValueNullFieldError('Product', 'isFeatured');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Product', 'name');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('Product', 'price');
    }
  }

  @override
  Product rebuild(void Function(ProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => new ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        category == other.category &&
        id == other.id &&
        isFeatured == other.isFeatured &&
        name == other.name &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, category.hashCode), id.hashCode),
                isFeatured.hashCode),
            name.hashCode),
        price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Product')
          ..add('category', category)
          ..add('id', id)
          ..add('isFeatured', isFeatured)
          ..add('name', name)
          ..add('price', price))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product _$v;

  Category _category;
  Category get category => _$this._category;
  set category(Category category) => _$this._category = category;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _isFeatured;
  bool get isFeatured => _$this._isFeatured;
  set isFeatured(bool isFeatured) => _$this._isFeatured = isFeatured;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  ProductBuilder();

  ProductBuilder get _$this {
    if (_$v != null) {
      _category = _$v.category;
      _id = _$v.id;
      _isFeatured = _$v.isFeatured;
      _name = _$v.name;
      _price = _$v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Product build() {
    final _$result = _$v ??
        new _$Product._(
            category: category,
            id: id,
            isFeatured: isFeatured,
            name: name,
            price: price);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
