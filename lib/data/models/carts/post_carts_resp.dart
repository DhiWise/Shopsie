class PostCartsResp {
  Cart? cart;

  PostCartsResp({this.cart});

  PostCartsResp.fromJson(Map<String, dynamic> json) {
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
  List? items;
  dynamic payment;
  dynamic shippingAddress;
  dynamic billingAddress;
  List? shippingMethods;
  List? paymentSessions;
  List? discounts;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  dynamic email;
  dynamic billingAddressId;
  dynamic shippingAddressId;
  String? regionId;
  dynamic customerId;
  dynamic paymentId;
  String? type;
  dynamic completedAt;
  dynamic paymentAuthorizedAt;
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
      items = [];
      json['items'].forEach((v) {
        items?.add(v);
      });
    }
    payment = json['payment'];
    shippingAddress = json['shipping_address'];
    billingAddress = json['billing_address'];
    if (json['shipping_methods'] != null) {
      shippingMethods = [];
      json['shipping_methods'].forEach((v) {
        shippingMethods?.add(v);
      });
    }
    if (json['payment_sessions'] != null) {
      paymentSessions = [];
      json['payment_sessions'].forEach((v) {
        paymentSessions?.add(v);
      });
    }
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
      data['items'] = this.items?.map((v) => v).toList();
    }
    if (this.payment != null) {
      data['payment'] = this.payment;
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
      data['payment_sessions'] = this.paymentSessions?.map((v) => v).toList();
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
