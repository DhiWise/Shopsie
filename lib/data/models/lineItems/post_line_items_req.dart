class PostLineItemsReq {
  int? quantity;

  PostLineItemsReq({this.quantity});

  PostLineItemsReq.fromJson(Map<String, dynamic> json) {
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.quantity != null) {
      data['quantity'] = this.quantity;
    }
    return data;
  }
}
