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

import 'package:flutter/foundation.dart' as foundation;

import 'product.dart';

const double _salesTaxRate = 0.06;
const double _shippingCostPerItem = 7;

class Cart extends foundation.ChangeNotifier {
  // The products and quantities of products currently in the cart.
  final _productCounts = <Product, int>{};

  List<Product> get products {
    return _productCounts.keys.toList(growable: false);
  }

  // Total number of items in the cart.
  int get totalCartQuantity {
    return _productCounts.values.fold(0, (accumulator, value) {
      return accumulator + value;
    });
  }

  // Totaled prices of the items in the cart.
  double get subtotalCost {
    return _productCounts.keys.map((product) {
      // Extended price for product line
      return product.price * _productCounts[product];
    }).fold(0, (accumulator, extendedPrice) {
      return accumulator + extendedPrice;
    });
  }

  // Total shipping cost for the items in the cart.
  double get shippingCost {
    return _shippingCostPerItem *
        _productCounts.values.fold(0.0, (accumulator, itemCount) {
          return accumulator + itemCount;
        });
  }

  // Sales tax for the items in the cart
  double get tax {
    return subtotalCost * _salesTaxRate;
  }

  // Total cost to order everything in the cart.
  double get totalCost {
    return subtotalCost + shippingCost + tax;
  }

  int getCount(Product product) {
    return _productCounts[product];
  }

  // Adds a product to the cart.
  void addProduct(Product product) {
    if (!_productCounts.containsKey(product)) {
      _productCounts[product] = 1;
    } else {
      _productCounts[product]++;
    }

    notifyListeners();
  }

  // Removes an item from the cart.
  void removeItem(Product product) {
    if (_productCounts.containsKey(product)) {
      if (_productCounts[product] == 1) {
        _productCounts.remove(product);
      } else {
        _productCounts[product]--;
      }

      notifyListeners();
    }
  }

  // Removes everything from the cart.
  void clear() {
    _productCounts.clear();
    notifyListeners();
  }
}
