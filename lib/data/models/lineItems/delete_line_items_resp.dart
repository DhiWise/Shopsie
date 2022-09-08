class DeleteLineItemsResp {
  Cart? cart;

  DeleteLineItemsResp({this.cart});

  DeleteLineItemsResp.fromJson(Map<String, dynamic> json) {
    cart = json['cart'] != null ? Cart.fromJson(json['cart']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.cart != null) {
      data['cart'] = this.cart?.toJson();
    }
    return data;
  }
}

class Cart {
  String? object;
  String? id;
  List? giftCards;
  Region? region;
  List<Items>? items;
  Payment? payment;
  dynamic shippingAddress;
  dynamic billingAddress;
  List? shippingMethods;
  List<PaymentSessions>? paymentSessions;
  PaymentSession? paymentSession;
  List? discounts;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? email;
  dynamic billingAddressId;
  dynamic shippingAddressId;
  String? regionId;
  String? customerId;
  String? paymentId;
  String? type;
  String? completedAt;
  String? paymentAuthorizedAt;
  dynamic idempotencyKey;
  Context? context;
  dynamic metadata;
  int? subtotal;
  int? taxTotal;
  int? shippingTotal;
  int? discountTotal;
  int? giftCardTotal;
  int? total;

  Cart(
      {this.object,
      this.id,
      this.giftCards,
      this.region,
      this.items,
      this.payment,
      this.shippingAddress,
      this.billingAddress,
      this.shippingMethods,
      this.paymentSessions,
      this.paymentSession,
      this.discounts,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.email,
      this.billingAddressId,
      this.shippingAddressId,
      this.regionId,
      this.customerId,
      this.paymentId,
      this.type,
      this.completedAt,
      this.paymentAuthorizedAt,
      this.idempotencyKey,
      this.context,
      this.metadata,
      this.subtotal,
      this.taxTotal,
      this.shippingTotal,
      this.discountTotal,
      this.giftCardTotal,
      this.total});

  Cart.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    if (json['gift_cards'] != null) {
      giftCards = [];
      json['gift_cards'].forEach((v) {
        giftCards?.add(v);
      });
    }
    region = json['region'] != null ? Region.fromJson(json['region']) : null;
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    payment =
        json['payment'] != null ? Payment.fromJson(json['payment']) : null;
    shippingAddress = json['shipping_address'];
    billingAddress = json['billing_address'];
    if (json['shipping_methods'] != null) {
      shippingMethods = [];
      json['shipping_methods'].forEach((v) {
        shippingMethods?.add(v);
      });
    }
    if (json['payment_sessions'] != null) {
      paymentSessions = <PaymentSessions>[];
      json['payment_sessions'].forEach((v) {
        paymentSessions?.add(PaymentSessions.fromJson(v));
      });
    }
    paymentSession = json['payment_session'] != null
        ? PaymentSession.fromJson(json['payment_session'])
        : null;
    if (json['discounts'] != null) {
      discounts = [];
      json['discounts'].forEach((v) {
        discounts?.add(v);
      });
    }
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    email = json['email'];
    billingAddressId = json['billing_address_id'];
    shippingAddressId = json['shipping_address_id'];
    regionId = json['region_id'];
    customerId = json['customer_id'];
    paymentId = json['payment_id'];
    type = json['type'];
    completedAt = json['completed_at'];
    paymentAuthorizedAt = json['payment_authorized_at'];
    idempotencyKey = json['idempotency_key'];
    context =
        json['context'] != null ? Context.fromJson(json['context']) : null;
    metadata = json['metadata'];
    subtotal = json['subtotal'];
    taxTotal = json['tax_total'];
    shippingTotal = json['shipping_total'];
    discountTotal = json['discount_total'];
    giftCardTotal = json['gift_card_total'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.object != null) {
      data['object'] = this.object;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.giftCards != null) {
      data['gift_cards'] = this.giftCards?.map((v) => v).toList();
    }
    if (this.region != null) {
      data['region'] = this.region?.toJson();
    }
    if (this.items != null) {
      data['items'] = this.items?.map((v) => v.toJson()).toList();
    }
    if (this.payment != null) {
      data['payment'] = this.payment?.toJson();
    }
    if (this.shippingAddress != null) {
      data['shipping_address'] = this.shippingAddress;
    }
    if (this.billingAddress != null) {
      data['billing_address'] = this.billingAddress;
    }
    if (this.shippingMethods != null) {
      data['shipping_methods'] = this.shippingMethods?.map((v) => v).toList();
    }
    if (this.paymentSessions != null) {
      data['payment_sessions'] =
          this.paymentSessions?.map((v) => v.toJson()).toList();
    }
    if (this.paymentSession != null) {
      data['payment_session'] = this.paymentSession?.toJson();
    }
    if (this.discounts != null) {
      data['discounts'] = this.discounts?.map((v) => v).toList();
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
    if (this.billingAddressId != null) {
      data['billing_address_id'] = this.billingAddressId;
    }
    if (this.shippingAddressId != null) {
      data['shipping_address_id'] = this.shippingAddressId;
    }
    if (this.regionId != null) {
      data['region_id'] = this.regionId;
    }
    if (this.customerId != null) {
      data['customer_id'] = this.customerId;
    }
    if (this.paymentId != null) {
      data['payment_id'] = this.paymentId;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.completedAt != null) {
      data['completed_at'] = this.completedAt;
    }
    if (this.paymentAuthorizedAt != null) {
      data['payment_authorized_at'] = this.paymentAuthorizedAt;
    }
    if (this.idempotencyKey != null) {
      data['idempotency_key'] = this.idempotencyKey;
    }
    if (this.context != null) {
      data['context'] = this.context?.toJson();
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    if (this.subtotal != null) {
      data['subtotal'] = this.subtotal;
    }
    if (this.taxTotal != null) {
      data['tax_total'] = this.taxTotal;
    }
    if (this.shippingTotal != null) {
      data['shipping_total'] = this.shippingTotal;
    }
    if (this.discountTotal != null) {
      data['discount_total'] = this.discountTotal;
    }
    if (this.giftCardTotal != null) {
      data['gift_card_total'] = this.giftCardTotal;
    }
    if (this.total != null) {
      data['total'] = this.total;
    }
    return data;
  }
}

class Region {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? name;
  String? currencyCode;
  int? taxRate;
  dynamic taxCode;
  bool? giftCardsTaxable;
  bool? automaticTaxes;
  dynamic taxProviderId;
  dynamic metadata;
  List<Countries>? countries;
  List<PaymentProviders>? paymentProviders;
  List? taxRates;
  List<FulfillmentProviders>? fulfillmentProviders;

  Region(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.name,
      this.currencyCode,
      this.taxRate,
      this.taxCode,
      this.giftCardsTaxable,
      this.automaticTaxes,
      this.taxProviderId,
      this.metadata,
      this.countries,
      this.paymentProviders,
      this.taxRates,
      this.fulfillmentProviders});

  Region.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    name = json['name'];
    currencyCode = json['currency_code'];
    taxRate = json['tax_rate'];
    taxCode = json['tax_code'];
    giftCardsTaxable = json['gift_cards_taxable'];
    automaticTaxes = json['automatic_taxes'];
    taxProviderId = json['tax_provider_id'];
    metadata = json['metadata'];
    if (json['countries'] != null) {
      countries = <Countries>[];
      json['countries'].forEach((v) {
        countries?.add(Countries.fromJson(v));
      });
    }
    if (json['payment_providers'] != null) {
      paymentProviders = <PaymentProviders>[];
      json['payment_providers'].forEach((v) {
        paymentProviders?.add(PaymentProviders.fromJson(v));
      });
    }
    if (json['tax_rates'] != null) {
      taxRates = [];
      json['tax_rates'].forEach((v) {
        taxRates?.add(v);
      });
    }
    if (json['fulfillment_providers'] != null) {
      fulfillmentProviders = <FulfillmentProviders>[];
      json['fulfillment_providers'].forEach((v) {
        fulfillmentProviders?.add(FulfillmentProviders.fromJson(v));
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
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.currencyCode != null) {
      data['currency_code'] = this.currencyCode;
    }
    if (this.taxRate != null) {
      data['tax_rate'] = this.taxRate;
    }
    if (this.taxCode != null) {
      data['tax_code'] = this.taxCode;
    }
    if (this.giftCardsTaxable != null) {
      data['gift_cards_taxable'] = this.giftCardsTaxable;
    }
    if (this.automaticTaxes != null) {
      data['automatic_taxes'] = this.automaticTaxes;
    }
    if (this.taxProviderId != null) {
      data['tax_provider_id'] = this.taxProviderId;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    if (this.countries != null) {
      data['countries'] = this.countries?.map((v) => v.toJson()).toList();
    }
    if (this.paymentProviders != null) {
      data['payment_providers'] =
          this.paymentProviders?.map((v) => v.toJson()).toList();
    }
    if (this.taxRates != null) {
      data['tax_rates'] = this.taxRates?.map((v) => v).toList();
    }
    if (this.fulfillmentProviders != null) {
      data['fulfillment_providers'] =
          this.fulfillmentProviders?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Countries {
  int? id;
  String? iso2;
  String? iso3;
  int? numCode;
  String? name;
  String? displayName;
  String? regionId;

  Countries(
      {this.id,
      this.iso2,
      this.iso3,
      this.numCode,
      this.name,
      this.displayName,
      this.regionId});

  Countries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iso2 = json['iso_2'];
    iso3 = json['iso_3'];
    numCode = json['num_code'];
    name = json['name'];
    displayName = json['display_name'];
    regionId = json['region_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.iso2 != null) {
      data['iso_2'] = this.iso2;
    }
    if (this.iso3 != null) {
      data['iso_3'] = this.iso3;
    }
    if (this.numCode != null) {
      data['num_code'] = this.numCode;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.displayName != null) {
      data['display_name'] = this.displayName;
    }
    if (this.regionId != null) {
      data['region_id'] = this.regionId;
    }
    return data;
  }
}

class PaymentProviders {
  String? id;
  bool? isInstalled;

  PaymentProviders({this.id, this.isInstalled});

  PaymentProviders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isInstalled = json['is_installed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.isInstalled != null) {
      data['is_installed'] = this.isInstalled;
    }
    return data;
  }
}

class FulfillmentProviders {
  String? id;
  bool? isInstalled;

  FulfillmentProviders({this.id, this.isInstalled});

  FulfillmentProviders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isInstalled = json['is_installed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.isInstalled != null) {
      data['is_installed'] = this.isInstalled;
    }
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
  List? adjustments;
  List<TaxLines>? taxLines;
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
      this.adjustments,
      this.taxLines,
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
    if (json['adjustments'] != null) {
      adjustments = [];
      json['adjustments'].forEach((v) {
        adjustments?.add(v);
      });
    }
    if (json['tax_lines'] != null) {
      taxLines = <TaxLines>[];
      json['tax_lines'].forEach((v) {
        taxLines?.add(TaxLines.fromJson(v));
      });
    }
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
    if (this.adjustments != null) {
      data['adjustments'] = this.adjustments?.map((v) => v).toList();
    }
    if (this.taxLines != null) {
      data['tax_lines'] = this.taxLines?.map((v) => v.toJson()).toList();
    }
    if (this.variant != null) {
      data['variant'] = this.variant?.toJson();
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

class TaxLines {
  String? id;
  String? createdAt;
  String? updatedAt;
  int? rate;
  String? name;
  String? code;
  dynamic metadata;
  String? itemId;

  TaxLines(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.rate,
      this.name,
      this.code,
      this.metadata,
      this.itemId});

  TaxLines.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    rate = json['rate'];
    name = json['name'];
    code = json['code'];
    metadata = json['metadata'];
    itemId = json['item_id'];
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
    if (this.rate != null) {
      data['rate'] = this.rate;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.code != null) {
      data['code'] = this.code;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    if (this.itemId != null) {
      data['item_id'] = this.itemId;
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

class Payment {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic swapId;
  String? cartId;
  String? orderId;
  int? amount;
  String? currencyCode;
  int? amountRefunded;
  String? providerId;
  Data? data;
  dynamic capturedAt;
  dynamic canceledAt;
  dynamic metadata;
  dynamic idempotencyKey;

  Payment(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.swapId,
      this.cartId,
      this.orderId,
      this.amount,
      this.currencyCode,
      this.amountRefunded,
      this.providerId,
      this.data,
      this.capturedAt,
      this.canceledAt,
      this.metadata,
      this.idempotencyKey});

  Payment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    swapId = json['swap_id'];
    cartId = json['cart_id'];
    orderId = json['order_id'];
    amount = json['amount'];
    currencyCode = json['currency_code'];
    amountRefunded = json['amount_refunded'];
    providerId = json['provider_id'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    capturedAt = json['captured_at'];
    canceledAt = json['canceled_at'];
    metadata = json['metadata'];
    idempotencyKey = json['idempotency_key'];
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
    if (this.swapId != null) {
      data['swap_id'] = this.swapId;
    }
    if (this.cartId != null) {
      data['cart_id'] = this.cartId;
    }
    if (this.orderId != null) {
      data['order_id'] = this.orderId;
    }
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.currencyCode != null) {
      data['currency_code'] = this.currencyCode;
    }
    if (this.amountRefunded != null) {
      data['amount_refunded'] = this.amountRefunded;
    }
    if (this.providerId != null) {
      data['provider_id'] = this.providerId;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    if (this.capturedAt != null) {
      data['captured_at'] = this.capturedAt;
    }
    if (this.canceledAt != null) {
      data['canceled_at'] = this.canceledAt;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata;
    }
    if (this.idempotencyKey != null) {
      data['idempotency_key'] = this.idempotencyKey;
    }
    return data;
  }
}

class Data {
  String? status;

  Data({this.status});

  Data.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.status != null) {
      data['status'] = this.status;
    }
    return data;
  }
}

class PaymentSessions {
  String? id;
  String? createdAt;
  String? updatedAt;
  String? cartId;
  String? providerId;
  bool? isSelected;
  String? status;
  Data? data;
  dynamic idempotencyKey;

  PaymentSessions(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.cartId,
      this.providerId,
      this.isSelected,
      this.status,
      this.data,
      this.idempotencyKey});

  PaymentSessions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    cartId = json['cart_id'];
    providerId = json['provider_id'];
    isSelected = json['is_selected'];
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    idempotencyKey = json['idempotency_key'];
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
    if (this.providerId != null) {
      data['provider_id'] = this.providerId;
    }
    if (this.isSelected != null) {
      data['is_selected'] = this.isSelected;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    if (this.idempotencyKey != null) {
      data['idempotency_key'] = this.idempotencyKey;
    }
    return data;
  }
}

class PaymentSession {
  String? id;
  String? createdAt;
  String? updatedAt;
  String? cartId;
  String? providerId;
  bool? isSelected;
  String? status;
  Data? data;
  dynamic idempotencyKey;

  PaymentSession(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.cartId,
      this.providerId,
      this.isSelected,
      this.status,
      this.data,
      this.idempotencyKey});

  PaymentSession.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    cartId = json['cart_id'];
    providerId = json['provider_id'];
    isSelected = json['is_selected'];
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    idempotencyKey = json['idempotency_key'];
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
    if (this.providerId != null) {
      data['provider_id'] = this.providerId;
    }
    if (this.isSelected != null) {
      data['is_selected'] = this.isSelected;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    if (this.idempotencyKey != null) {
      data['idempotency_key'] = this.idempotencyKey;
    }
    return data;
  }
}

class Context {
  String? ip;
  String? userAgent;

  Context({this.ip, this.userAgent});

  Context.fromJson(Map<String, dynamic> json) {
    ip = json['ip'];
    userAgent = json['user_agent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.ip != null) {
      data['ip'] = this.ip;
    }
    if (this.userAgent != null) {
      data['user_agent'] = this.userAgent;
    }
    return data;
  }
}
