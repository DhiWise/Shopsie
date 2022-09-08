class PostCartIdLineItemsReq {
  String? variantId;
  int? quantity;

  PostCartIdLineItemsReq({this.variantId, this.quantity});

  PostCartIdLineItemsReq.fromJson(Map<String, dynamic> json) {
    variantId = json['variant_id'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.variantId != null) {
      data['variant_id'] = this.variantId;
    }
    if (this.quantity != null) {
      data['quantity'] = this.quantity;
    }
    return data;
  }
}
