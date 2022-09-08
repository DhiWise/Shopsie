class GetCustomerIdResp {
  Cart? cart;

  GetCustomerIdResp({this.cart});

  GetCustomerIdResp.fromJson(Map<String, dynamic> json) {
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
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? email;
  dynamic billingAddressId;
  dynamic shippingAddressId;
  String? regionId;
  String? customerId;
  dynamic paymentId;
  String? type;
  dynamic completedAt;
  dynamic paymentAuthorizedAt;
  dynamic idempotencyKey;
  Context? context;
  dynamic metadata;

  Cart(
      {this.object,
      this.id,
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
      this.metadata});

  Cart.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
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
