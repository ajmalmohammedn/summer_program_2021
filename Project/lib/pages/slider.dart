import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: [
          //1st Image of Slider
          Card(
            child: Hero(
              tag: "Docker",
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/docker.png'),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: Hero(
              tag: "Centos",
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/centos.png'),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: Hero(
              tag: "ubuntu",
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/ubuntu.png'),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: Hero(
              tag: "redhat",
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/redhat.png'),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: Hero(
              tag: "Debian",
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/debian.png'),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),

          //3rd Image of Slider
          Card(
            child: Hero(
              tag: "Linux",
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/linux.png'),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: Hero(
              tag: "Chat",
              child: Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/chat.png'),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ),
          ),
        ],

        //Slider Container properties
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
