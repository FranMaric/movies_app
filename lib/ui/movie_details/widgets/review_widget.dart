import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/app/colors.dart';
import 'package:movie_app/domain/models/review.dart';
import 'package:movie_app/ui/common/expandable_text.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({Key? key, required this.review}) : super(key: key);

  final Review review;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        review.author,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      subtitle: ExpandableText(
        review.content,
        style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14),
      ),
      leading: ClipOval(
        child: review.authorDetails.avatarPath != null
            ? CachedNetworkImage(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
                fit: BoxFit.cover,
                imageUrl: review.authorDetails.avatarPath!,
                placeholder: (context, url) => Icon(
                  Icons.person,
                  size: MediaQuery.of(context).size.width * 0.15,
                  color: niceGrey,
                ),
                errorWidget: (context, url, error) => Icon(
                  Icons.person,
                  size: MediaQuery.of(context).size.width * 0.15,
                  color: niceGrey,
                ),
              )
            : Icon(
                Icons.person,
                size: MediaQuery.of(context).size.width * 0.15,
                color: niceGrey,
              ),
      ),
    );
  }
}
