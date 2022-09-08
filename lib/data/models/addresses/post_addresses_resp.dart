class PostAddressesResp {
  Customer? customer;

  PostAddressesResp({this.customer});

  PostAddressesResp.fromJson(Map<String, dynamic> json) {
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
  BillingAddress? billingAddress;

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
      this.billingAddress});

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
    billingAddress = json['billing_address'] != null
        ? BillingAddress.fromJson(json['billing_address'])
        : null;
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
    if (this.billingAddress != null) {
      data['billing_address'] = this.billingAddress?.toJson();
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
  dynamic compdynamic;
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
      this.compdynamic,
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
    compdynamic = json['compdynamic'];
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
    if (this.compdynamic != null) {
      data['compdynamic'] = this.compdynamic;
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

class BillingAddress {
  String? id;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  dynamic customerId;
  dynamic compdynamic;
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

  BillingAddress(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.customerId,
      this.compdynamic,
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

  BillingAddress.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    customerId = json['customer_id'];
    compdynamic = json['compdynamic'];
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
    if (this.compdynamic != null) {
      data['compdynamic'] = this.compdynamic;
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
