import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          VerticalDivider(
            thickness: 2.0,
          ),
          Category(
            image_location: "images/ansible.png",
            image_caption: "Ansible",
          ),
          VerticalDivider(
            thickness: 2.0,
          ),
          Category(
            image_location: "images/jenkins.png",
            image_caption: "Jenkins",
          ),
          VerticalDivider(
            thickness: 2.0,
          ),
          Category(
            image_location: "images/kubernets.png",
            image_caption: "Kubernets",
          ),
          VerticalDivider(
            thickness: 2.0,
          ),
          Category(
            image_location: "images/cloud-computing.png",
            image_caption: "cloud-computing",
          ),
          VerticalDivider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(2.0),
              child: Container(
                child: Image.asset(
                  image_location,
                  width: 100.0,
                  height: 74.0,
                ),
              ),
            ),
            Text(image_caption),
          ],
        ));
  }
}
