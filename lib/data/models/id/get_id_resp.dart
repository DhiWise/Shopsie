class GetIdResp {
  Product? product;

  GetIdResp({this.product});

  GetIdResp.fromJson(Map<String, dynamic> json) {
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.product != null) {
      data['product'] = this.product?.toJson();
    }
    return data;
  }
}

class Product {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? title;
  dynamic subtitle;
  String? description;
  String? handle;
  bool? isGiftcard;
  String? status;
  String? thumbnail;
  String? profileId;
  int? weight;
  dynamic length;
  dynamic height;
  dynamic width;
  dynamic hsCode;
  dynamic originCountry;
  dynamic midCode;
  dynamic material;
  dynamic collectionId;
  dynamic typeId;
  bool? discountable;
  dynamic externalId;
  dynamic metadata;
  List<Variants>? variants;
  List<Options>? options;
  List<Images>? images;
  List? tags;
  dynamic collection;
  dynamic type;

  Product(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.title,
      this.subtitle,
      this.description,
      this.handle,
      this.isGiftcard,
      this.status,
      this.thumbnail,
      this.profileId,
      this.weight,
      this.length,
      this.height,
      this.width,
      this.hsCode,
      this.originCountry,
      this.midCode,
      this.material,
      this.collectionId,
      this.typeId,
      this.discountable,
      this.externalId,
      this.metadata,
      this.variants,
      this.options,
      this.images,
      this.tags,
      this.collection,
      this.type});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    handle = json['handle'];
    isGiftcard = json['is_giftcard'];
    status = json['status'];
    thumbnail = json['thumbnail'];
    profileId = json['profile_id'];
    weight = json['weight'];
    length = json['length'];
    height = json['height'];
    width = json['width'];
    hsCode = json['hs_code'];
    originCountry = json['origin_country'];
    midCode = json['mid_code'];
    material = json['material'];
    collectionId = json['collection_id'];
    typeId = json['type_id'];
    discountable = json['discountable'];
    externalId = json['external_id'];
    metadata = json['metadata'];
    if (json['variants'] != null) {
      variants = <Variants>[];
      json['variants'].forEach((v) {
        variants?.add(Variants.fromJson(v));
      });
    }
    if (json['options'] != null) {
      options = <Options>[];
      json['options'].forEach((v) {
        options?.add(Options.fromJson(v));
      });
    }
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(v);
      });
    }
    collection = json['collection'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.deletedAt != null) {
      data['deleted_at'] = this.deletedAt;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.subtitle != null) {
      data['subtitle'] = this.subtitle;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.handle != null) {
      data['handle'] = this.handle;
    }
    if (this.isGiftcard != null) {
      data['is_giftcard'] = this.isGiftcard;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail;
    }
    if (this.profileId != null) {
      data['profile_id'] = this.profileId;
    }
    if (this.weight != null) {
      data['weight'] = this.weight;
    }
    if (this.length != null) {
      data['length'] = this.length;
    }
    if (this.height != null) {
      data['height'] = this.height;
    }
    if (this.width != null) {
      data['width'] = this.width;
    }
    if (this.hsCode != null) {
      data['hs_code'] = this.hsCode;
    }
    if (this.originCountry != null) {
      data['origin_country'] = this.originCountry;
    }
    if (this.midCode != null) {
      data['mid_code'] = this.midCode;
    }
    if (this.material != null) {
      data['material'] = this.material;
    }
    if (this.collectionId != null) {
      data['collection_id'] = this.collectionId;
    }
    if (this.typeId != null) {
      data['type_id'] = this.typeId;
    }
    if (this.discountable != null) {
      data['discountable'] = this.discountable;
    }
    if (this.externalId != null) {
      data['external_id'] = this.externalId;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    if (this.variants != null) {
      data['variants'] = this.variants?.map((v) => v.toJson()).toList();
    }
    if (this.options != null) {
      data['options'] = this.options?.map((v) => v.toJson()).toList();
    }
    if (this.images != null) {
      data['images'] = this.images?.map((v) => v.toJson()).toList();
    }
    if (this.tags != null) {
      data['tags'] = this.tags?.map((v) => v).toList();
    }
    if (this.collection != null) {
      data['collection'] = this.collection;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    return data;
  }
}

class Variants {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? title;
  String? productId;
  dynamic sku;
  dynamic barcode;
  dynamic ean;
  dynamic upc;
  int? inventoryQuantity;
  bool? allowBackorder;
  bool? manageInventory;
  dynamic hsCode;
  dynamic originCountry;
  dynamic midCode;
  dynamic material;
  dynamic weight;
  dynamic length;
  dynamic height;
  dynamic width;
  dynamic metadata;
  List<Options>? options;
  List<Prices>? prices;
  dynamic originalPrice;
  dynamic calculatedPrice;

  Variants(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.title,
      this.productId,
      this.sku,
      this.barcode,
      this.ean,
      this.upc,
      this.inventoryQuantity,
      this.allowBackorder,
      this.manageInventory,
      this.hsCode,
      this.originCountry,
      this.midCode,
      this.material,
      this.weight,
      this.length,
      this.height,
      this.width,
      this.metadata,
      this.options,
      this.prices,
      this.originalPrice,
      this.calculatedPrice});

  Variants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    title = json['title'];
    productId = json['product_id'];
    sku = json['sku'];
    barcode = json['barcode'];
    ean = json['ean'];
    upc = json['upc'];
    inventoryQuantity = json['inventory_quantity'];
    allowBackorder = json['allow_backorder'];
    manageInventory = json['manage_inventory'];
    hsCode = json['hs_code'];
    originCountry = json['origin_country'];
    midCode = json['mid_code'];
    material = json['material'];
    weight = json['weight'];
    length = json['length'];
    height = json['height'];
    width = json['width'];
    metadata = json['metadata'];
    if (json['options'] != null) {
      options = <Options>[];
      json['options'].forEach((v) {
        options?.add(Options.fromJson(v));
      });
    }
    if (json['prices'] != null) {
      prices = <Prices>[];
      json['prices'].forEach((v) {
        prices?.add(Prices.fromJson(v));
      });
    }
    originalPrice = json['original_price'];
    calculatedPrice = json['calculated_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.deletedAt != null) {
      data['deleted_at'] = this.deletedAt;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.productId != null) {
      data['product_id'] = this.productId;
    }
    if (this.sku != null) {
      data['sku'] = this.sku;
    }
    if (this.barcode != null) {
      data['barcode'] = this.barcode;
    }
    if (this.ean != null) {
      data['ean'] = this.ean;
    }
    if (this.upc != null) {
      data['upc'] = this.upc;
    }
    if (this.inventoryQuantity != null) {
      data['inventory_quantity'] = this.inventoryQuantity;
    }
    if (this.allowBackorder != null) {
      data['allow_backorder'] = this.allowBackorder;
    }
    if (this.manageInventory != null) {
      data['manage_inventory'] = this.manageInventory;
    }
    if (this.hsCode != null) {
      data['hs_code'] = this.hsCode;
    }
    if (this.originCountry != null) {
      data['origin_country'] = this.originCountry;
    }
    if (this.midCode != null) {
      data['mid_code'] = this.midCode;
    }
    if (this.material != null) {
      data['material'] = this.material;
    }
    if (this.weight != null) {
      data['weight'] = this.weight;
    }
    if (this.length != null) {
      data['length'] = this.length;
    }
    if (this.height != null) {
      data['height'] = this.height;
    }
    if (this.width != null) {
      data['width'] = this.width;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    if (this.options != null) {
      data['options'] = this.options?.map((v) => v.toJson()).toList();
    }
    if (this.prices != null) {
      data['prices'] = this.prices?.map((v) => v.toJson()).toList();
    }
    if (this.originalPrice != null) {
      data['original_price'] = this.originalPrice;
    }
    if (this.calculatedPrice != null) {
      data['calculated_price'] = this.calculatedPrice;
    }
    return data;
  }
}

class Options {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? value;
  String? optionId;
  String? variantId;
  dynamic metadata;
  String? title;
  String? productId;
  List<Values>? values;

  Options(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.value,
      this.optionId,
      this.variantId,
      this.metadata,
      this.title,
      this.productId,
      this.values});

  Options.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    value = json['value'];
    optionId = json['option_id'];
    variantId = json['variant_id'];
    metadata = json['metadata'];
    title = json['title'];
    productId = json['product_id'];
    if (json['values'] != null) {
      values = <Values>[];
      json['values'].forEach((v) {
        values?.add(Values.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.deletedAt != null) {
      data['deleted_at'] = this.deletedAt;
    }
    if (this.value != null) {
      data['value'] = this.value;
    }
    if (this.optionId != null) {
      data['option_id'] = this.optionId;
    }
    if (this.variantId != null) {
      data['variant_id'] = this.variantId;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.productId != null) {
      data['product_id'] = this.productId;
    }
    if (this.values != null) {
      data['values'] = this.values?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Prices {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? currencyCode;
  int? amount;
  dynamic minQuantity;
  dynamic maxQuantity;
  dynamic priceListId;
  String? variantId;
  dynamic regionId;
  dynamic priceList;

  Prices(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.currencyCode,
      this.amount,
      this.minQuantity,
      this.maxQuantity,
      this.priceListId,
      this.variantId,
      this.regionId,
      this.priceList});

  Prices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    currencyCode = json['currency_code'];
    amount = json['amount'];
    minQuantity = json['min_quantity'];
    maxQuantity = json['max_quantity'];
    priceListId = json['price_list_id'];
    variantId = json['variant_id'];
    regionId = json['region_id'];
    priceList = json['price_list'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.deletedAt != null) {
      data['deleted_at'] = this.deletedAt;
    }
    if (this.currencyCode != null) {
      data['currency_code'] = this.currencyCode;
    }
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.minQuantity != null) {
      data['min_quantity'] = this.minQuantity;
    }
    if (this.maxQuantity != null) {
      data['max_quantity'] = this.maxQuantity;
    }
    if (this.priceListId != null) {
      data['price_list_id'] = this.priceListId;
    }
    if (this.variantId != null) {
      data['variant_id'] = this.variantId;
    }
    if (this.regionId != null) {
      data['region_id'] = this.regionId;
    }
    if (this.priceList != null) {
      data['price_list'] = this.priceList;
    }
    return data;
  }
}

class Values {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? value;
  String? optionId;
  String? variantId;
  dynamic metadata;

  Values(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.value,
      this.optionId,
      this.variantId,
      this.metadata});

  Values.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    value = json['value'];
    optionId = json['option_id'];
    variantId = json['variant_id'];
    metadata = json['metadata'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.deletedAt != null) {
      data['deleted_at'] = this.deletedAt;
    }
    if (this.value != null) {
      data['value'] = this.value;
    }
    if (this.optionId != null) {
      data['option_id'] = this.optionId;
    }
    if (this.variantId != null) {
      data['variant_id'] = this.variantId;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    return data;
  }
}

class Images {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? url;
  dynamic metadata;

  Images(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.url,
      this.metadata});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    url = json['url'];
    metadata = json['metadata'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.deletedAt != null) {
      data['deleted_at'] = this.deletedAt;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    return data;
  }
}
