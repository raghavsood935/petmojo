import '../../../models/feed_post_response.dart';
import '../../../models/profile_model_response.dart';

class FeedPost {
  String? Id;
  List<String>? hashtags;
  String? image;
  String? thumbnail;
  String? filter;
  String? caption;
  bool? isLiked;
  bool? isBookmarked;
  List<ProfileResponse>? userAuthor;
  String? authorType;
  String? date;
  List<VotesCountResponse>? votesCounts;
  FeedPostCommentResponse? commentResponse;
  List<AnimalAuthorResponse>? animalAuthorResponse;
  FeedPost({
    this.Id,
    this.hashtags,
    this.image,
    this.thumbnail,
    this.filter,
    this.caption,
    this.isLiked,
    this.isBookmarked,
    this.userAuthor,
    this.authorType,
    this.date,
    this.votesCounts,
    this.commentResponse,
    this.animalAuthorResponse,
  });
}
