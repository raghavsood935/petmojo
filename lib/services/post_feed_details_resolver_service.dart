import 'package:flutter/material.dart';
import '../app/app.locator.dart';
import '../models/feed_post_response.dart';
import 'aws_upload_service.dart';
import '../ui/post/Class/post_feed_class.dart';

class PostFeedDetailsService {
  static void initialise() async {}

  final _uploadService = locator<CloudStorageService>();

  Future<List<FeedPost>> alsoWorks(List<FeedPostResponse>? data) async {
    List<FeedPost> allPosts = [];
    List<FeedPostResponse>? tempListOfPost = data;
    for (var each in tempListOfPost!) {
      FeedPost feedPost = FeedPost();
      feedPost.Id = each.Id;
      feedPost.hashtags = each.hashtags;
      String tempURL = each.image!;
      if (tempURL.contains("https")) {
        feedPost.image = each.image;
        feedPost.thumbnail = each.thumbnail;
      } else {
        feedPost.image =
            await _uploadService.getUrlFromAwsKey(awsKey: each.image);
        feedPost.thumbnail =
            await _uploadService.getUrlFromAwsKey(awsKey: each.thumbnail);
      }
      feedPost.filter = each.filter;
      feedPost.caption = each.caption;
      feedPost.isLiked = each.isLiked;
      feedPost.isBookmarked = each.isBookmarked;
      feedPost.userAuthor = each.userAuthor;
      feedPost.authorType = each.authorType;
      feedPost.authorType = each.authorType;
      feedPost.date = each.date;
      feedPost.votesCounts = each.votesCounts;
      feedPost.commentResponse = each.commentResponse;
      feedPost.animalAuthorResponse = each.animalAuthorResponse;
      allPosts.add(feedPost);
    }
    return allPosts;
  }
}
