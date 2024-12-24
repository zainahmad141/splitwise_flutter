import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:splitwise_flutter/utilis/routes.dart';
import 'package:splitwise_flutter/view/dashboard/dashboard_screen.dart';
import 'package:splitwise_flutter/view/onboarding/on_boarding_screen.dart';

class CustomImageCarousel extends StatefulWidget {
  final List<String> imageUrls;

  final bool autoPlay;

  const CustomImageCarousel({
    super.key,
    required this.imageUrls,
    this.autoPlay = true,
  });

  @override
  State<CustomImageCarousel> createState() => _CustomImageCarouselState();
}

class _CustomImageCarouselState extends State<CustomImageCarousel> {
  int _currentIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();


  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      height: 800,
      width: double.infinity,
      decoration: BoxDecoration(
        //  borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 0.7),
        color: Colors.white,
        // const Color(0xffDFE0DF)
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Carousel
          SizedBox(
            width: double.infinity,
            child: CarouselSlider(
              items: widget.imageUrls.map((url) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: screenheight*100,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: widget.autoPlay,
                autoPlayInterval: const Duration(seconds: 1),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.imageUrls.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                          //borderRadius: BorderRadius.circular(100),
                          shape: BoxShape.circle),
                      width: 7.0,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: _currentIndex == entry.key
                          ? Container(
                              color: _currentIndex == 3
                                  ? Colors.purple
                                  : Colors.green,
                            )
                          : Container(
                              color: _currentIndex == 3
                                  ? Color(0xffCF9FFF)
                                  : Color(0xffAFE1AF),
                            )),
                );
              }).toList(),
            ),
          ),
          Positioned(
            bottom: 55,
            child: InkWell(
              onTap: (){
                context.go(MainScreen.route);
              },

                child: const Text(
              'Skip for now',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.purple,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.3),

            )
            ),
          )
        ],
      ),
    );
  }
}
