class CarSaleModel {
    List<SaleCar> sale_cars;
    CarSaleModel({this.sale_cars});

    factory CarSaleModel.fromJson(Map<String, dynamic> json) {
        return CarSaleModel(
            sale_cars: json['sale_cars'] != null ? (json['sale_cars'] as List).map((i) => SaleCar.fromJson(i)).toList() : null, 
        );
    }
}

class SaleCar {
    String address;
    Cat cat;
    String category;
    CategoryObj categoryObj;
    String colour;
    String condition;
    String contact_number;
    String created_at;
    Customer customer;
    String department;
    String description;
    String distance;
    String engine_capacity;
    String fuel_type;
    int id;
    Location location;
    String location_id;
    String more_details;
    List<dynamic> pics;
    String price;
    Shop shop;
    String shop_id;
    String status;
    SubCategoryObj subCategoryObj;
    SubCat sub_cat;
    String sub_category;
    String title;
    String transmission_type;
    String type;
    String updated_at;
    String user_id;
    String year;

    SaleCar({this.address, this.cat, this.category, this.categoryObj, this.colour, this.condition, this.contact_number, this.created_at, this.customer, this.department, this.description, this.distance, this.engine_capacity, this.fuel_type, this.id, this.location, this.location_id, this.more_details, this.pics, this.price, this.shop, this.shop_id, this.status, this.subCategoryObj, this.sub_cat, this.sub_category, this.title, this.transmission_type, this.type, this.updated_at, this.user_id, this.year});

    factory SaleCar.fromJson(Map<String, dynamic> json) {
        return SaleCar(
            address: json['address'],
            cat: json['cat'] != null ? Cat.fromJson(json['cat']) : null,
            category: json['category'],
            categoryObj: json['categoryObj'] != null ? CategoryObj.fromJson(json['categoryObj']) : null,
            colour: json['colour'],
            condition: json['condition'],
            contact_number: json['contact_number'] ,
            created_at: json['created_at'],
            customer: json['customer'] != null ? Customer.fromJson(json['customer']) : null,
            department: json['department'],
            description: json['description'],
            distance: json['distance'],
            engine_capacity: json['engine_capacity'],
            fuel_type: json['fuel_type'],
            id: json['id'],
            location: json['location'] != null ? Location.fromJson(json['location']) : null,
            location_id: json['location_id'],
            more_details: json['more_details'],
            pics: json['pics'],
            price: json['price'],
            shop: json['shop'] != null ? Shop?.fromJson(json['shop']) : null,
            shop_id: json['shop_id'] =json['shop_id'],
            status: json['status'],
            subCategoryObj: json['subCategoryObj'] != null ? SubCategoryObj.fromJson(json['subCategoryObj']) : null,
            sub_cat: json['sub_cat'] != null ? SubCat.fromJson(json['sub_cat']) : null,
            sub_category: json['sub_category'],
            title: json['title'],
            transmission_type: json['transmission_type'],
            type: json['type'],
            updated_at: json['updated_at'],
            user_id: json['user_id'],
            year: json['year'],
        );
    }
}

class Cat {
    String created_at;
    int id;
    String is_main;
    String main_category_id;
    String name;
    String pic;
    String status;
    String updated_at;

    Cat({this.created_at, this.id, this.is_main, this.main_category_id, this.name, this.pic, this.status, this.updated_at});

    factory Cat.fromJson(Map<String, dynamic> json) {
        return Cat(
            created_at: json['created_at'] =json['created_at'],
            id: json['id'],
            is_main: json['is_main'],
            main_category_id: json['main_category_id'],
            name: json['name'],
            pic: json['pic'],
            status: json['status'],
            updated_at: json['updated_at']=json['updated_at'],
        );
    }

   }

class CategoryObj {
    String created_at;
    int id;
    String is_main;
    String main_category_id;
    String name;
    String pic;
    String status;
    String updated_at;

    CategoryObj({this.created_at, this.id, this.is_main, this.main_category_id, this.name, this.pic, this.status, this.updated_at});

    factory CategoryObj.fromJson(Map<String, dynamic> json) {
        return CategoryObj(
            created_at: json['created_at'] =json['created_at'],
            id: json['id'],
            is_main: json['is_main'],
            main_category_id: json['main_category_id'],
            name: json['name'],
            pic: json['pic'],
            status: json['status'],
            updated_at: json['updated_at'] =json['updated_at'],
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

class Location {
    int id;
    String name;

    Location({this.id, this.name});

    factory Location.fromJson(Map<String, dynamic> json) {
        return Location(
            id: json['id'],
            name: json['name'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        return data;
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

class SubCat {
    String created_at;
    int id;
    String is_main;
    String main_category_id;
    String name;
    String pic;
    String status;
    String updated_at;

    SubCat({this.created_at, this.id, this.is_main, this.main_category_id, this.name, this.pic, this.status, this.updated_at});

    factory SubCat.fromJson(Map<String, dynamic> json) {
        return SubCat(
            created_at: json['created_at'],
            id: json['id'],
            is_main: json['is_main'],
            main_category_id: json['main_category_id'],
            name: json['name'],
            pic: json['pic'] =json['pic'],
            status: json['status'],
            updated_at: json['updated_at'],
        );
    }

}

class SubCategoryObj {
    String created_at;
    int id;
    String is_main;
    String main_category_id;
    String name;
    String pic;
    String status;
    String updated_at;

    SubCategoryObj({this.created_at, this.id, this.is_main, this.main_category_id, this.name, this.pic, this.status, this.updated_at});

    factory SubCategoryObj.fromJson(Map<String, dynamic> json) {
        return SubCategoryObj(
            created_at: json['created_at'],
            id: json['id'],
            is_main: json['is_main'],
            main_category_id: json['main_category_id'],
            name: json['name'],
            pic: json['pic'] =json['pic'],
            status: json['status'],
            updated_at: json['updated_at'],
        );
    }

}