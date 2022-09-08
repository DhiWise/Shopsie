class GetAuthResp {
  Customer? customer;

  GetAuthResp({this.customer});

  GetAuthResp.fromJson(Map<String, dynamic> json) {
    customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.customer != null) {
      data['customer'] = this.customer?.toJson();
    }
    return data;
  }
}

class Customer {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? email;
  String? firstName;
  String? lastName;
  String? billingAddressId;
  String? phone;
  bool? hasAccount;
  dynamic metadata;
  List<ShippingAddresses>? shippingAddresses;
  List<Orders>? orders;

  Customer(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.email,
      this.firstName,
      this.lastName,
      this.billingAddressId,
      this.phone,
      this.hasAccount,
      this.metadata,
      this.shippingAddresses,
      this.orders});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    billingAddressId = json['billing_address_id'];
    phone = json['phone'];
    hasAccount = json['has_account'];
    metadata = json['metadata'];
    if (json['shipping_addresses'] != null) {
      shippingAddresses = <ShippingAddresses>[];
      json['shipping_addresses'].forEach((v) {
        shippingAddresses?.add(ShippingAddresses.fromJson(v));
      });
    }
    if (json['orders'] != null) {
      orders = <Orders>[];
      json['orders'].forEach((v) {
        orders?.add(Orders.fromJson(v));
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
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.firstName != null) {
      data['first_name'] = this.firstName;
    }
    if (this.lastName != null) {
      data['last_name'] = this.lastName;
    }
    if (this.billingAddressId != null) {
      data['billing_address_id'] = this.billingAddressId;
    }
    if (this.phone != null) {
      data['phone'] = this.phone;
    }
    if (this.hasAccount != null) {
      data['has_account'] = this.hasAccount;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    if (this.shippingAddresses != null) {
      data['shipping_addresses'] =
          this.shippingAddresses?.map((v) => v.toJson()).toList();
    }
    if (this.orders != null) {
      data['orders'] = this.orders?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ShippingAddresses {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? customerId;
  dynamic company;
  String? firstName;
  String? lastName;
  String? address1;
  String? address2;
  String? city;
  String? countryCode;
  dynamic province;
  String? postalCode;
  dynamic phone;
  dynamic metadata;

  ShippingAddresses(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.customerId,
      this.company,
      this.firstName,
      this.lastName,
      this.address1,
      this.address2,
      this.city,
      this.countryCode,
      this.province,
      this.postalCode,
      this.phone,
      this.metadata});

  ShippingAddresses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    customerId = json['customer_id'];
    company = json['company'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    countryCode = json['country_code'];
    province = json['province'];
    postalCode = json['postal_code'];
    phone = json['phone'];
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
    if (this.customerId != null) {
      data['customer_id'] = this.customerId;
    }
    if (this.company != null) {
      data['company'] = this.company;
    }
    if (this.firstName != null) {
      data['first_name'] = this.firstName;
    }
    if (this.lastName != null) {
      data['last_name'] = this.lastName;
    }
    if (this.address1 != null) {
      data['address_1'] = this.address1;
    }
    if (this.address2 != null) {
      data['address_2'] = this.address2;
    }
    if (this.city != null) {
      data['city'] = this.city;
    }
    if (this.countryCode != null) {
      data['country_code'] = this.countryCode;
    }
    if (this.province != null) {
      data['province'] = this.province;
    }
    if (this.postalCode != null) {
      data['postal_code'] = this.postalCode;
    }
    if (this.phone != null) {
      data['phone'] = this.phone;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    return data;
  }
}

class Orders {
  String? object;
  String? id;
  String? createdAt;
  String? updatedAt;
  String? status;
  String? fulfillmentStatus;
  String? paymentStatus;
  int? displayId;
  String? cartId;
  String? customerId;
  String? email;
  dynamic billingAddressId;
  dynamic shippingAddressId;
  String? regionId;
  String? currencyCode;
  dynamic taxRate;
  dynamic draftOrderId;
  dynamic canceledAt;
  Metadata? metadata;
  dynamic noNotification;
  dynamic idempotencyKey;
  dynamic externalId;
  List<Items>? items;

  Orders(
      {this.object,
      this.id,
      this.createdAt,
      this.updatedAt,
      this.status,
      this.fulfillmentStatus,
      this.paymentStatus,
      this.displayId,
      this.cartId,
      this.customerId,
      this.email,
      this.billingAddressId,
      this.shippingAddressId,
      this.regionId,
      this.currencyCode,
      this.taxRate,
      this.draftOrderId,
      this.canceledAt,
      this.metadata,
      this.noNotification,
      this.idempotencyKey,
      this.externalId,
      this.items});

  Orders.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
    fulfillmentStatus = json['fulfillment_status'];
    paymentStatus = json['payment_status'];
    displayId = json['display_id'];
    cartId = json['cart_id'];
    customerId = json['customer_id'];
    email = json['email'];
    billingAddressId = json['billing_address_id'];
    shippingAddressId = json['shipping_address_id'];
    regionId = json['region_id'];
    currencyCode = json['currency_code'];
    taxRate = json['tax_rate'];
    draftOrderId = json['draft_order_id'];
    canceledAt = json['canceled_at'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    noNotification = json['no_notification'];
    idempotencyKey = json['idempotency_key'];
    externalId = json['external_id'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.fulfillmentStatus != null) {
      data['fulfillment_status'] = this.fulfillmentStatus;
    }
    if (this.paymentStatus != null) {
      data['payment_status'] = this.paymentStatus;
    }
    if (this.displayId != null) {
      data['display_id'] = this.displayId;
    }
    if (this.cartId != null) {
      data['cart_id'] = this.cartId;
    }
    if (this.customerId != null) {
      data['customer_id'] = this.customerId;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.billingAddressId != null) {
      data['billing_address_id'] = this.billingAddressId;
    }
    if (this.shippingAddressId != null) {
      data['shipping_address_id'] = this.shippingAddressId;
    }
    if (this.regionId != null) {
      data['region_id'] = this.regionId;
    }
    if (this.currencyCode != null) {
      data['currency_code'] = this.currencyCode;
    }
    if (this.taxRate != null) {
      data['tax_rate'] = this.taxRate;
    }
    if (this.draftOrderId != null) {
      data['draft_order_id'] = this.draftOrderId;
    }
    if (this.canceledAt != null) {
      data['canceled_at'] = this.canceledAt;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata?.toJson();
    }
    if (this.noNotification != null) {
      data['no_notification'] = this.noNotification;
    }
    if (this.idempotencyKey != null) {
      data['idempotency_key'] = this.idempotencyKey;
    }
    if (this.externalId != null) {
      data['external_id'] = this.externalId;
    }
    if (this.items != null) {
      data['items'] = this.items?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Metadata {
  Metadata();

  Metadata.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    return data;
  }
}

class Items {
  String? id;
  String? createdAt;
  String? updatedAt;
  String? cartId;
  String? orderId;
  dynamic swapId;
  dynamic claimOrderId;
  String? title;
  String? description;
  String? thumbnail;
  bool? isReturn;
  bool? isGiftcard;
  bool? shouldMerge;
  bool? allowDiscounts;
  bool? hasShipping;
  int? unitPrice;
  String? variantId;
  int? quantity;
  dynamic fulfilledQuantity;
  dynamic returnedQuantity;
  dynamic shippedQuantity;
  Metadata? metadata;
  Variant? variant;

  Items(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.cartId,
      this.orderId,
      this.swapId,
      this.claimOrderId,
      this.title,
      this.description,
      this.thumbnail,
      this.isReturn,
      this.isGiftcard,
      this.shouldMerge,
      this.allowDiscounts,
      this.hasShipping,
      this.unitPrice,
      this.variantId,
      this.quantity,
      this.fulfilledQuantity,
      this.returnedQuantity,
      this.shippedQuantity,
      this.metadata,
      this.variant});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    cartId = json['cart_id'];
    orderId = json['order_id'];
    swapId = json['swap_id'];
    claimOrderId = json['claim_order_id'];
    title = json['title'];
    description = json['description'];
    thumbnail = json['thumbnail'];
    isReturn = json['is_return'];
    isGiftcard = json['is_giftcard'];
    shouldMerge = json['should_merge'];
    allowDiscounts = json['allow_discounts'];
    hasShipping = json['has_shipping'];
    unitPrice = json['unit_price'];
    variantId = json['variant_id'];
    quantity = json['quantity'];
    fulfilledQuantity = json['fulfilled_quantity'];
    returnedQuantity = json['returned_quantity'];
    shippedQuantity = json['shipped_quantity'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    variant =
        json['variant'] != null ? Variant.fromJson(json['variant']) : null;
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
    if (this.cartId != null) {
      data['cart_id'] = this.cartId;
    }
    if (this.orderId != null) {
      data['order_id'] = this.orderId;
    }
    if (this.swapId != null) {
      data['swap_id'] = this.swapId;
    }
    if (this.claimOrderId != null) {
      data['claim_order_id'] = this.claimOrderId;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail;
    }
    if (this.isReturn != null) {
      data['is_return'] = this.isReturn;
    }
    if (this.isGiftcard != null) {
      data['is_giftcard'] = this.isGiftcard;
    }
    if (this.shouldMerge != null) {
      data['should_merge'] = this.shouldMerge;
    }
    if (this.allowDiscounts != null) {
      data['allow_discounts'] = this.allowDiscounts;
    }
    if (this.hasShipping != null) {
      data['has_shipping'] = this.hasShipping;
    }
    if (this.unitPrice != null) {
      data['unit_price'] = this.unitPrice;
    }
    if (this.variantId != null) {
      data['variant_id'] = this.variantId;
    }
    if (this.quantity != null) {
      data['quantity'] = this.quantity;
    }
    if (this.fulfilledQuantity != null) {
      data['fulfilled_quantity'] = this.fulfilledQuantity;
    }
    if (this.returnedQuantity != null) {
      data['returned_quantity'] = this.returnedQuantity;
    }
    if (this.shippedQuantity != null) {
      data['shipped_quantity'] = this.shippedQuantity;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata?.toJson();
    }
    if (this.variant != null) {
      data['variant'] = this.variant?.toJson();
    }
    return data;
  }
}

class Variant {
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
  Product? product;

  Variant(
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
      this.product});

  Variant.fromJson(Map<String, dynamic> json) {
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
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
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
      this.metadata});

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
    return data;
  }
}
