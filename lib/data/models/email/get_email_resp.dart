class GetEmailResp {
  bool exists=true;

  GetEmailResp({required this.exists});

  GetEmailResp.fromJson(Map<String, dynamic> json) {
    exists = json['exists'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.exists != null) {
      data['exists'] = this.exists;
    }
    return data;
  }
}
