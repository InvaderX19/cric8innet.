class Venues {
  String? venueId;
  String? venueName;
  String? venueDes;
  String? venueState;
  String? venueCity;
  String? pincode;
  String? venueImg;
  String? venueMapLink;
  List<VenueHighlights>? venueHighlights;
  String? closestMetroStn;
  String? paymentOptions;
  String? createdDate;
  String? createdTime;
  String? status;

  Venues(
      {this.venueId,
      this.venueName,
      this.venueDes,
      this.venueState,
      this.venueCity,
      this.pincode,
      this.venueImg,
      this.venueMapLink,
      this.venueHighlights,
      this.closestMetroStn,
      this.paymentOptions,
      this.createdDate,
      this.createdTime,
      this.status});

  Venues.fromJson(Map<String, dynamic> json) {
    venueId = json['venue_id'];
    venueName = json['venue_name'];
    venueDes = json['venue_des'];
    venueState = json['venue_state'];
    venueCity = json['venue_city'];
    pincode = json['pincode'];
    venueImg = json['venue_img'];
    venueMapLink = json['venue_map_link'];
    if (json['venue_highlights'] != null) {
      venueHighlights = <VenueHighlights>[];
      json['venue_highlights'].forEach((v) {
        venueHighlights!.add(VenueHighlights.fromJson(v));
      });
    }
    closestMetroStn = json['closest_metro_stn'];
    paymentOptions = json['payment_options'];
    createdDate = json['created_date'];
    createdTime = json['created_time'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['venue_id'] = venueId;
    data['venue_name'] = venueName;
    data['venue_des'] = venueDes;
    data['venue_state'] = venueState;
    data['venue_city'] = venueCity;
    data['pincode'] = pincode;
    data['venue_img'] = venueImg;
    data['venue_map_link'] = venueMapLink;
    if (venueHighlights != null) {
      data['venue_highlights'] =
          venueHighlights!.map((v) => v.toJson()).toList();
    }
    data['closest_metro_stn'] = closestMetroStn;
    data['payment_options'] = paymentOptions;
    data['created_date'] = createdDate;
    data['created_time'] = createdTime;
    data['status'] = status;
    return data;
  }
}

class VenueHighlights {
  String? id;
  String? name;
  String? img;

  VenueHighlights({this.id, this.name, this.img});

  VenueHighlights.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['img'] = img;
    return data;
  }
}
