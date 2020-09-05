class UserModel {
    Details details;
    String message;
    String status;

    UserModel({this.details, this.message, this.status});

    factory UserModel.fromJson(Map<String, dynamic> json) {
        return UserModel(
            details: json['details'] != null ? Details.fromJson(json['details']) : null, 
            message: json['message'], 
            status: json['status'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['message'] = this.message;
        data['status'] = this.status;
        if (this.details != null) {
            data['details'] = this.details.toJson();
        }
        return data;
    }
}

class User {
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

    User({this.created_at, this.email, this.id, this.name, this.name1, this.name2, this.phone, this.status, this.type, this.updated_at});

    factory User.fromJson(Map<String, dynamic> json) {
        return User(
            created_at: json['created_at'],
            email: json['email'],
            id: json['id'],
            name: json['name'],
            name1: json['name1'],
            name2: json['name2'],
            phone: json['phone'],
            status: json['status'],
            type: json['type'],
            updated_at: json['updated_at'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['created_at'] = this.created_at;
        data['email'] = this.email;
        data['id'] = this.id;
        data['name'] = this.name;
        data['name1'] = this.name1;
        data['name2'] = this.name2;
        data['phone'] = this.phone;
        data['status'] = this.status;
        data['type'] = this.type;
        data['updated_at'] = this.updated_at;
        return data;
    }
}

class Details {
    String access_token;
    int expires_in;
    String token_type;
    User user;

    Details({this.access_token, this.expires_in, this.token_type, this.user});

    factory Details.fromJson(Map<String, dynamic> json) {
        return Details(
            access_token: json['access_token'],
            expires_in: json['expires_in'],
            token_type: json['token_type'],
            user: json['user'] != null ? User.fromJson(json['user']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['access_token'] = this.access_token;
        data['expires_in'] = this.expires_in;
        data['token_type'] = this.token_type;
        if (this.user != null) {
            data['user'] = this.user.toJson();
        }
        return data;
    }
}