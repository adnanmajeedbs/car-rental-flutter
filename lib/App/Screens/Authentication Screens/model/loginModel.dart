// To parse this JSON data, do
//
//     final loginInfo = loginInfoFromJson(jsonString);

import 'dart:convert';

LoginInfo loginInfoFromJson(String str) => LoginInfo.fromJson(json.decode(str));

String loginInfoToJson(LoginInfo data) => json.encode(data.toJson());

class LoginInfo {
    int? statusCode;
    bool? success;
    String? message;
    Data? data;

    LoginInfo({
        this.statusCode,
        this.success,
        this.message,
        this.data,
    });

    factory LoginInfo.fromJson(Map<String, dynamic> json) => LoginInfo(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "success": success,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    User? user;
    String? token;

    Data({
        this.user,
        this.token,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
        "token": token,
    };
}

class User {
    Otp? otp;
    String? id;
    String? username;
    String? mobile;
    String? email;
    String? password;
    String? role;
    bool? emailVerified;
    List<dynamic>? favouriteCar;
    DateTime? date;
    int? v;

    User({
        this.otp,
        this.id,
        this.username,
        this.mobile,
        this.email,
        this.password,
        this.role,
        this.emailVerified,
        this.favouriteCar,
        this.date,
        this.v,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        otp: json["otp"] == null ? null : Otp.fromJson(json["otp"]),
        id: json["_id"],
        username: json["username"],
        mobile: json["mobile"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
        emailVerified: json["emailVerified"],
        favouriteCar: json["favouriteCar"] == null ? [] : List<dynamic>.from(json["favouriteCar"]!.map((x) => x)),
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "otp": otp?.toJson(),
        "_id": id,
        "username": username,
        "mobile": mobile,
        "email": email,
        "password": password,
        "role": role,
        "emailVerified": emailVerified,
        "favouriteCar": favouriteCar == null ? [] : List<dynamic>.from(favouriteCar!.map((x) => x)),
        "date": date?.toIso8601String(),
        "__v": v,
    };
}

class Otp {
    int? value;
    DateTime? createdAt;
    DateTime? expiresAt;

    Otp({
        this.value,
        this.createdAt,
        this.expiresAt,
    });

    factory Otp.fromJson(Map<String, dynamic> json) => Otp(
        value: json["value"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        expiresAt: json["expiresAt"] == null ? null : DateTime.parse(json["expiresAt"]),
    );

    Map<String, dynamic> toJson() => {
        "value": value,
        "createdAt": createdAt?.toIso8601String(),
        "expiresAt": expiresAt?.toIso8601String(),
    };
}
