class PostAddressesReq {
  Address? address;

  PostAddressesReq({this.address});

  PostAddressesReq.fromJson(Map<String, dynamic> json) {
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.address != null) {
      data['address'] = this.address?.toJson();
    }
    return data;
  }
}

class Address {
  String? address1;
  String? address2;
  String? city;
  String? countryCode;
  String? firstName;
  String? lastName;
  String? postalCode;

  Address(
      {this.address1,
      this.address2,
      this.city,
      this.countryCode,
      this.firstName,
      this.lastName,
      this.postalCode});

  Address.fromJson(Map<String, dynamic> json) {
    address1 = json['address_1'];
    address2 = json['address_2'];
    city = json['city'];
    countryCode = json['country_code'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    postalCode = json['postal_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
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
    if (this.firstName != null) {
      data['first_name'] = this.firstName;
    }
    if (this.lastName != null) {
      data['last_name'] = this.lastName;
    }
    if (this.postalCode != null) {
      data['postal_code'] = this.postalCode;
    }
    return data;
  }
}
