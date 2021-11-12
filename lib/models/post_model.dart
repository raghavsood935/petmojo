import 'package:equatable/equatable.dart';
import 'package:tamely/models/user_model.dart';

class Post extends Equatable {
  final String id;
  final String imageUrl;
  final String caption;
  final String location;
  final int numOfLikes;
  final int numOfComments;
  final User? author;
  final DateTime? dateTime;

  Post copyWith({
    String? id,
    String? imageUrl,
    String? caption,
    String? location,
    int? numOfLikes,
    int? numOfComments,
    User? author,
    DateTime? dateTime,
  }) {
    return Post(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      caption: caption ?? this.caption,
      location: location ?? this.location,
      numOfLikes: numOfLikes ?? this.numOfLikes,
      numOfComments: numOfComments ?? this.numOfComments,
      author: author ?? this.author,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  const Post({
    required this.id,
    required this.imageUrl,
    required this.caption,
    required this.location,
    required this.numOfLikes,
    required this.numOfComments,
    required this.author,
    required this.dateTime,
  });

  factory Post.empty() {
    return Post(
        id: '',
        imageUrl: '',
        caption: '',
        location: '',
        numOfLikes: 0,
        numOfComments: 0,
        author: null,
        dateTime: null);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        id,
        imageUrl,
        caption,
        location,
        numOfLikes,
        numOfComments,
        author ?? "",
        dateTime ?? ""
      ];
}
