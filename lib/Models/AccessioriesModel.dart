
class AccessioriesModel {
    List<Accessory> accessories;

    AccessioriesModel({this.accessories});

    factory AccessioriesModel.fromJson(Map<String, dynamic> json) {
        return AccessioriesModel(
            accessories: json['accessories'] != null ? (json['accessories'] as List).map((i) => Accessory.fromJson(i)).toList() : null, 
        );
    }

}
class Accessory {
    String created_at;
    Customer customer;
    String description;
    int id;
    List<dynamic> pics;
    String price;
    Shop shop;
    String shop_id;
    String status;
    String title;
    String updated_at;
    String user_id;

    Accessory({this.created_at, this.customer, this.description, this.id, this.pics, this.price, this.shop, this.shop_id, this.status, this.title, this.updated_at, this.user_id});

    factory Accessory.fromJson(Map<String, dynamic> json) {
        return Accessory(
            created_at: json['created_at'],
            customer: json['customer'] != null ? Customer.fromJson(json['customer']) : null,
            description: json['description'],
            id: json['id'],
            pics: json['pics'],
            price: json['price'],
            shop: json['shop'] != null ? Shop?.fromJson(json['shop']) : null,
            shop_id: json['shop_id'] =json['shop_id'],
            status: json['status'],
            title: json['title'],
            updated_at: json['updated_at'],
            user_id: json['user_id'],
        );
    }

}
class Customer {
    String created_at;
    String email;
    int id;
    String name;
    String name1;
    String name2;
    String phone;
    String status;
    String type;
    String updated_at;

    Customer({this.created_at, this.email, this.id, this.name, this.name1, this.name2, this.phone, this.status, this.type, this.updated_at});

    factory Customer.fromJson(Map<String, dynamic> json) {
        return Customer(
            created_at: json['created_at'] =json['created_at'],
            email: json['email'],
            id: json['id'],
            name: json['name'] =json['name'],
            name1: json['name1'],
            name2: json['name2'],
            phone: json['phone'],
            status: json['status'],
            type: json['type'],
            updated_at: json['updated_at'] =json['updated_at'],
        );
    }

}
class Shop {
    String address;
    String contact_number;
    String created_at;
    String description;
    int id;
    String location_id;
    String map;
    String name;
    String pic;
    String special;
    String status;
    String type;
    String updated_at;
    String user_id;
    String working_hours;

    Shop({this.address, this.contact_number, this.created_at, this.description, this.id, this.location_id, this.map, this.name, this.pic, this.special, this.status, this.type, this.updated_at, this.user_id, this.working_hours});

    factory Shop.fromJson(Map<String, dynamic> json) {
        return Shop(
            address: json['address'],
            contact_number: json['contact_number'],
            created_at: json['created_at'],
            description: json['description'],
            id: json['id'],
            location_id: json['location_id'],
            map: json['map'],
            name: json['name'],
            pic: json['pic'],
            special: json['special'],
            status: json['status'],
            type: json['type'],
            updated_at: json['updated_at'],
            user_id: json['user_id'],
            working_hours: json['working_hours'],
        );
    }
}