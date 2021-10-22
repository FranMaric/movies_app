import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/ui/movie_details/provider/reviews_provider.dart';
import 'package:movie_app/ui/movie_details/widgets/review_widget.dart';

class ReviewsList extends StatefulWidget {
  const ReviewsList({Key? key, required this.movieId}) : super(key: key);

  final int movieId;

  @override
  ReviewsListState createState() => ReviewsListState();
}

class ReviewsListState extends State<ReviewsList> {
  bool isCollapsed = true;

  void setCollapsed(bool newValue) {
    setState(() {
      isCollapsed = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => setCollapsed(!isCollapsed),
          child: Container(
            color: Colors.green,
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reviews',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const Icon(
                  Icons.arrow_downward_sharp,
                  size: 18,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        if (!isCollapsed)
          Consumer(
            builder: (context, watch, child) => watch(reviewsProvider(widget.movieId)).when(
              error: (err, st) => Container(
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.center,
                child: Text(
                  err.toString() + st.toString(),
                ),
              ),
              loading: () => Container(
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              ),
              data: (reviews) => ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: reviews.length,
                itemBuilder: (context, index) => ReviewWidget(review: reviews[index]),
              ),
            ),
          ),
      ],
    );
  }
}
