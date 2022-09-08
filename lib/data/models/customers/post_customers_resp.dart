class PostCustomersResp {
  Customer? customer;

  PostCustomersResp({this.customer});

  PostCustomersResp.fromJson(Map<String, dynamic> json) {
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
  dynamic billingAddressId;
  dynamic phone;
  bool? hasAccount;
  dynamic metadata;
  List? shippingAddresses;
  dynamic billingAddress;

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
      shippingAddresses = [];
      json['shipping_addresses'].forEach((v) {
        shippingAddresses?.add(v);
      });
    }
    billingAddress = json['billing_address'];
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
          this.shippingAddresses?.map((v) => v).toList();
    }
    if (this.billingAddress != null) {
      data['billing_address'] = this.billingAddress;
    }
    return data;
  }
}
