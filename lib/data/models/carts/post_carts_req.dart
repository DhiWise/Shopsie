class PostCartsReq {
  String? regionId;

  PostCartsReq({this.regionId});

  PostCartsReq.fromJson(Map<String, dynamic> json) {
    regionId = json['region_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.regionId != null) {
      data['region_id'] = this.regionId;
    }
    return data;
  }
}
