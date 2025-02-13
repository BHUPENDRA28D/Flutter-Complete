class CollegeModel {
  String? university;
  String? college;
  String? collegeType;
  String? state;
  String? district;

  CollegeModel(
      {this.university,
      this.college,
      this.collegeType,
      this.state,
      this.district});

  CollegeModel.fromJson(Map<String, String> json) {
    university = json['university'];
    college = json['college'];
    collegeType = json['college_type'];
    state = json['state'];
    district = json['district'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['university'] = this.university;
    data['college'] = this.college;
    data['college_type'] = this.collegeType;
    data['state'] = this.state;
    data['district'] = this.district;
    return data;
  }
}
