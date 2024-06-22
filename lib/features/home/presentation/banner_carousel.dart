import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackmate/features/home/data/blocs/banner_cubit.dart';
import 'package:hackmate/features/home/presentation/banner_content.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../configurations/configurations.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  final _carouselController = CarouselController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) => BlocBuilder<BannerCubit, BannerState>(
        builder: (context, state) => state.isLoading
            ? const _BannerPlaceholder()
            : Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 300,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: state.models.length > 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: state.models
                        .map(
                          (item) => BannerContent(
                            heading: item.heading,
                            subHeading: item.subHeading,
                            buttonText: item.buttonText,
                            imgUrl: item.imgUrl,
                            onButtonPressed: item.onClick,
                          ),
                        )
                        .toList(),
                    carouselController: _carouselController,
                  ),
                  if (state.models.isNotEmpty)
                    AnimatedSmoothIndicator(
                      activeIndex: _currentIndex,
                      count: state.models.length,
                      effect: SwapEffect(
                        activeDotColor: Theme.of(context).primaryColor,
                        dotHeight: kPadding * 2,
                        dotWidth: kPadding * 2,
                        type: SwapType.yRotation,
                      ),
                    ),
                ],
              ),
      );
}

class _BannerPlaceholder extends StatelessWidget {
  const _BannerPlaceholder();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Card(
          color: const Color(0xff222126),
          margin: const EdgeInsets.fromLTRB(
              kPadding * 4, kPadding * 2, kPadding * 4, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              kButtonRadius,
            ),
          ),
          child: Shimmer.fromColors(
            baseColor: Colors.white.withOpacity(0.4),
            highlightColor: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kButtonRadius),
              child: Container(
                height: kBannerHeight,
                width: double.infinity,
                padding: const EdgeInsets.all(kPadding * 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                kButtonRadius,
                              ),
                              color: theme.primaryColor,
                            ),
                            width: 180,
                            height: kButtonHeight,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: kPadding,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: kPadding,
        ),
        Shimmer.fromColors(
          baseColor: Colors.black.withOpacity(0.4),
          highlightColor: Colors.white,
          child: Container(
            width: 200,
            height: 20,
            color: theme.primaryColor,
          ),
        ),
        const SizedBox(
          height: kPadding / 2,
        ),
        Shimmer.fromColors(
          baseColor: Colors.black.withOpacity(0.4),
          highlightColor: Colors.white,
          child: Container(
            width: 150,
            height: 15,
            color: theme.primaryColor,
          ),
        ),
      ],
    );
  }
}
