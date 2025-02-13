class HotelModel {
  List<Partnerships>? partnerships;
  List<Trip>? trip;
  // List<India>? india;
  List<Hotels>? hotels;
  List<Bookhotels>? bookhotels;
  List<Package>? package;
  List<Comprehensive>? comprehensive;

  HotelModel(
      {this.partnerships,
      this.trip,
      // this.india,
      this.hotels,
      this.bookhotels,
      this.package,
      this.comprehensive});

  HotelModel.fromJson(Map<String, dynamic> json) {
    if (json['partnerships'] != null) {
      partnerships = <Partnerships>[];
      json['partnerships'].forEach((v) {
        partnerships!.add(new Partnerships.fromJson(v));
      });
    }
    if (json['trip'] != null) {
      trip = <Trip>[];
      json['trip'].forEach((v) {
        trip!.add(new Trip.fromJson(v));
      });
    }
    // if (json['india'] != null) {
    //   india = <India>[];
    //   json['india'].forEach((v) {
    //     india!.add(new India.fromJson(v));
    //   });
    // }
    if (json['hotels'] != null) {
      hotels = <Hotels>[];
      json['hotels'].forEach((v) {
        hotels!.add(new Hotels.fromJson(v));
      });
    }
    if (json['bookhotels'] != null) {
      bookhotels = <Bookhotels>[];
      json['bookhotels'].forEach((v) {
        bookhotels!.add(new Bookhotels.fromJson(v));
      });
    }
    if (json['Package'] != null) {
      package = <Package>[];
      json['Package'].forEach((v) {
        package!.add(new Package.fromJson(v));
      });
    }
    if (json['Comprehensive'] != null) {
      comprehensive = <Comprehensive>[];
      json['Comprehensive'].forEach((v) {
        comprehensive!.add(new Comprehensive.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.partnerships != null) {
      data['partnerships'] = this.partnerships!.map((v) => v.toJson()).toList();
    }
    if (this.trip != null) {
      data['trip'] = this.trip!.map((v) => v.toJson()).toList();
    }
    // if (this.india != null) {
    //   data['india'] = this.india!.map((v) => v.toJson()).toList();
    // }
    if (this.hotels != null) {
      data['hotels'] = this.hotels!.map((v) => v.toJson()).toList();
    }
    if (this.bookhotels != null) {
      data['bookhotels'] = this.bookhotels!.map((v) => v.toJson()).toList();
    }
    if (this.package != null) {
      data['Package'] = this.package!.map((v) => v.toJson()).toList();
    }
    if (this.comprehensive != null) {
      data['Comprehensive'] =
          this.comprehensive!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Partnerships {
  int? id;
  String? title;
  String? imageTop;
  String? imageMid;
  String? imageBottom;
  String? discreption;
  String? aboutP1;
  String? aboutP2;
  String? aboutP3;
  String? aboutP4;
  String? activityP1;
  String? activityP2;
  String? activityP3;
  String? author;

  Partnerships(
      {this.id,
      this.title,
      this.imageTop,
      this.imageMid,
      this.imageBottom,
      this.discreption,
      this.aboutP1,
      this.aboutP2,
      this.aboutP3,
      this.aboutP4,
      this.activityP1,
      this.activityP2,
      this.activityP3,
      this.author});

  Partnerships.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    imageTop = json['image_top'];
    imageMid = json['image_mid'];
    imageBottom = json['image_bottom'];
    discreption = json['discreption'];
    aboutP1 = json['about-p1'];
    aboutP2 = json['about-p2'];
    aboutP3 = json['about-p3'];
    aboutP4 = json['about-p4'];
    activityP1 = json['activity-p1'];
    activityP2 = json['activity-p2'];
    activityP3 = json['activity-p3'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image_top'] = this.imageTop;
    data['image_mid'] = this.imageMid;
    data['image_bottom'] = this.imageBottom;
    data['discreption'] = this.discreption;
    data['about-p1'] = this.aboutP1;
    data['about-p2'] = this.aboutP2;
    data['about-p3'] = this.aboutP3;
    data['about-p4'] = this.aboutP4;
    data['activity-p1'] = this.activityP1;
    data['activity-p2'] = this.activityP2;
    data['activity-p3'] = this.activityP3;
    data['author'] = this.author;
    return data;
  }
}

class Trip {
  int? id;
  String? title;
  String? image;
  String? by;

  Trip({this.id, this.title, this.image, this.by});

  Trip.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    by = json['by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['by'] = this.by;
    return data;
  }
}

class Hotels {
  int? id;
  String? title;
  String? image;
  String? by;
  String? stays;

  Hotels({this.id, this.title, this.image, this.by, this.stays});

  Hotels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    by = json['by'];
    stays = json['stays'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['by'] = this.by;
    data['stays'] = this.stays;
    return data;
  }
}

class Bookhotels {
  int? id;
  String? img;
  String? title;
  String? place;
  String? cost;
  String? days;

  Bookhotels({this.id, this.img, this.title, this.place, this.cost, this.days});

  Bookhotels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img = json['img'];
    title = json['title'];
    place = json['place'];
    cost = json['cost'];
    days = json['days'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['img'] = this.img;
    data['title'] = this.title;
    data['place'] = this.place;
    data['cost'] = this.cost;
    data['days'] = this.days;
    return data;
  }
}

class Package {
  int? id;
  String? image;
  String? type;
  String? title;
  String? location;
  String? button;
  String? price;
  String? person;
  String? quotes;
  String? brandLogo;
  String? brandName;

  Package(
      {this.id,
      this.image,
      this.type,
      this.title,
      this.location,
      this.button,
      this.price,
      this.person,
      this.quotes,
      this.brandLogo,
      this.brandName});

  Package.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    type = json['type'];
    title = json['title'];
    location = json['location'];
    button = json['button'];
    price = json['price'];
    person = json['person'];
    quotes = json['quotes'];
    brandLogo = json['brand_logo'];
    brandName = json['brand_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['type'] = this.type;
    data['title'] = this.title;
    data['location'] = this.location;
    data['button'] = this.button;
    data['price'] = this.price;
    data['person'] = this.person;
    data['quotes'] = this.quotes;
    data['brand_logo'] = this.brandLogo;
    data['brand_name'] = this.brandName;
    return data;
  }
}

class Comprehensive {
  int? id;
  String? image;
  String? title;

  Comprehensive({this.id, this.image, this.title});

  Comprehensive.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['title'] = this.title;
    return data;
  }
}
