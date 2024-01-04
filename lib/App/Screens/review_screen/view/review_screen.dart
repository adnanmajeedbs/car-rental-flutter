import 'package:chartercar/App/Common/DynamicSpace/SizeBoxC.dart';
import 'package:chartercar/App/Common/MyButtons/PrimaryButton.dart';
import 'package:chartercar/App/Common/appBar/custom_App_Bar.dart';
import 'package:chartercar/App/Screens/History/models/history_Tile_Model.dart';
import 'package:chartercar/App/Screens/review_screen/components/rating_textField.dart';
import 'package:chartercar/App/Screens/review_screen/components/review_container.dart';
import 'package:chartercar/App/Screens/review_screen/provider/rating_Provider.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:chartercar/utils/Theme/colors_theme_data.dart';
import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

class ReviewScreen extends StatelessWidget {
  final HistoryTileModel historyTileModel;
  const ReviewScreen({super.key, required this.historyTileModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            CustomAppBar(title: MyText.review),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: ReviewContainer(
                          historyTileModel: historyTileModel,
                        ),
                      ),
                      //
                      //
                      //
                      //
                      //
                      //
                      // rating section
                      Container(
                        decoration: BoxDecoration(
                            color: MyColors.white_clr,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 18.0, left: 18, top: 28, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // thankyou
                              Text(
                                MyText.thank_You,
                                style: MyTextStyle.heading_700_16_textStyle_two,
                              ),
                              HeightC(10),
                              Text(
                                MyText.please_rate_your_trip,
                                style:
                                    MyTextStyle.heading_400_14_textField_text,
                              ),
                              HeightC(21),
                              // stars of ratings
                              Consumer<RatingProvider>(
                                builder: (context, value, child) {
                                  return RatingBar.builder(
                                    itemSize: 40,
                                    initialRating: value.rating,
                                    minRating: 1,
                                    maxRating: 5,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    itemCount: 5,
                                    glow: false,
                                    unratedColor: MyColors.genderUnselect,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star_rate_rounded,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      value.newRating(rating);
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              // this is review container
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1,
                                        color:
                                            MyColors.light_grey_90A3BF_Color)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // client name
                                      Text(
                                        'Hey Babar!',
                                        style: MyTextStyle
                                            .heading_700_16_textStyle_two,
                                      ),
                                      HeightC(2),
                                      // textfield
                                      RatingTextField(),
                                      // textfield text counter
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Consumer<RatingProvider>(
                                              builder: (context, value, child) {
                                            return Text(
                                              '255/' +
                                                  value.textLength.toString(),
                                              style: MyTextStyle
                                                  .heading_400_14_textField_text,
                                            );
                                          })
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(right: 20.0, left: 20, top: 5, bottom: 20),
        child: Consumer<RatingProvider>(builder: (context, value, child) {
          return PrimaryButton(
              text: 'Send Review',
              onTap: () {
                value.clearReviewsPage();
                Navigator.pop(context);
              });
        }),
      ),
    );
  }
}
