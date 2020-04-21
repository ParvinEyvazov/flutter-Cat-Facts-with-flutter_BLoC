// To parse this JSON data, do
//
//     final cat = catFromJson(jsonString);

import 'dart:convert';

Cat catFromJson(String str) => Cat.fromJson(json.decode(str));

String catToJson(Cat data) => json.encode(data.toJson());

class Cat {
    List<All> all;
    List<dynamic> me;

    Cat({
        this.all,
        this.me,
    });

    factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        all: json["all"] == null ? null : List<All>.from(json["all"].map((x) => All.fromJson(x))),
        me: json["me"] == null ? null : List<dynamic>.from(json["me"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "all": all == null ? null : List<dynamic>.from(all.map((x) => x.toJson())),
        "me": me == null ? null : List<dynamic>.from(me.map((x) => x)),
    };
}

class All {
    String id;
    String text;
    String type;
    User user;
    int upvotes;
    bool userUpvoted;

    All({
        this.id,
        this.text,
        this.type,
        this.user,
        this.upvotes,
        this.userUpvoted,
    });

    factory All.fromJson(Map<String, dynamic> json) => All(
        id: json["_id"] == null ? null : json["_id"],
        text: json["text"] == null ? "null" : json["text"],
        type: json["type"] == null ? "null" : json["type"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        upvotes: json["upvotes"] == null ? null : json["upvotes"],
        userUpvoted: json["userUpvoted"] == null ? null : json["userUpvoted"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "text": text == null ? null : text,
        "type": type == null ? null : type,
        "user": user == null ? null : user.toJson(),
        "upvotes": upvotes == null ? null : upvotes,
        "userUpvoted": userUpvoted == null ? null : userUpvoted,
    };
}

class User {
    String id;
    Name name;

    User({
        this.id,
        this.name,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"] == null ? null : json["_id"],
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "name": name == null ? null : name.toJson(),
    };
}

class Name {
    String first;
    String last;

    Name({
        this.first,
        this.last,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        first: json["first"] == null ? "null" : json["first"],
        last: json["last"] == null ? "null" : json["last"],
    );

    Map<String, dynamic> toJson() => {
        "first": first == null ? null : first,
        "last": last == null ? null : last,
    };
}
