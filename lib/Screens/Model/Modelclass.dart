// class Sources {
//
//   String? id;
//   String? name;
//   String? description;
//   String? url;
//   String? category;
//
//
//   Sources({this.id, this.name, this.url, this.category, this.description});
//
//   factory Sources.fromJson(Map json)
//   {
//     return Sources(
//       id: json['id'],
//       name: json['name'],
//       description: json['description'],
//       url: json['url'],
//       category: json['category'],
//     );
//   }
//
//
// }

class Articles {
  String? url, urlToImage, publishedAt, content, author, title, description;
  Source? source;

  Articles(
      {this.author,
      this.content,
      this.description,
      this.url,
      this.title,
      this.publishedAt,
      this.source,
      this.urlToImage});

  factory Articles.formJson(Map json) {
    return Articles(
        url: json['json'],
        description: json['description'],
        author: json['author'],
        content: json['content'],
        publishedAt: json['publishedAt'],
        title: json['title'],
        source: Source.fromJson(json['source']),
        // source: json['source'],
        urlToImage: json['urlToImage']);
  }
}

class Source {
  String? id, name;

  Source({this.id, this.name});

  factory Source.fromJson(Map Json) {
    return Source(name: Json['name'], id: Json['id']);
  }
}
