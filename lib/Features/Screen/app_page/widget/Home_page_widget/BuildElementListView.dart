import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BuildElement1to3 extends StatelessWidget {
  const BuildElement1to3({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Expanded(
                child: item(
                    image: Image.asset('assets/image/Mixed Black Coffee1.png'),
                    text: 'Hot Coffees')),
            const SizedBox(width: 10),
            Expanded(
                child: item(
                    image: Image.asset('assets/image/Frame 19986.png'),
                    text: 'Hot Teas')),
            const SizedBox(width: 10),
            Expanded(
              child: item(
                image: Image.asset('assets/image/Frame 19986 (1).png'),
                text: 'Hot Drinks',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BuildElement4to6 extends StatelessWidget {
  const BuildElement4to6({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Expanded(
              child: item(
                image: Image.asset('assets/drink/2.png'),
                text: 'Cold Drinks',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: item(
                image: Image.asset('assets/drink/12.png'),
                text: 'Iced Teas',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: item(
                image: Image.asset('assets/drink/Frappucino1.png'),
                text: 'Frappucino',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BuildElement7 extends StatelessWidget {
  const BuildElement7({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Expanded(
              child: item(
                image: Image.asset('assets/drink/Iced coffee.png'),
                text: 'Iced coffee',
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}

class BuildElementfood extends StatelessWidget {
  const BuildElementfood({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Expanded(
              child: item(
                image: Image.asset('assets/food/Bakery.png'),
                text: 'Bakery',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: item(
                image: Image.asset('assets/food/Lunch.png'),
                text: 'Lunch',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: item(
                image: Image.asset('assets/food/sweets.png'),
                text: 'sweets',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BuildElementCoffee extends StatelessWidget {
  const BuildElementCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Expanded(
              child: item(
                image: Image.asset('assets/food/Whole Beans.png'),
                text: 'Whole Beans',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: item(
                image: Image.asset('assets/food/Tea Bags.png'),
                text: 'Teas',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BuildElementMerchandise extends StatelessWidget {
  const BuildElementMerchandise({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Expanded(
                child: item(
                    image: Image.asset('assets/drink/Customize mug.png'),
                    text: 'Customize Mugs')),
            const SizedBox(width: 10),
            Expanded(
              child: item(
                image: Image.asset('assets/drink/Espresso1.png'),
                text: 'Espresso',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: item(
                image: Image.asset('assets/drink/Customize mug.png'),
                text: 'other',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class item extends StatelessWidget {
  const item({
    super.key,
    required this.image,
    required this.text,
  });

  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124,
      height: 147,
      decoration: BoxDecoration(
          color: Get.isDarkMode ? Colors.black26 : Colors.white,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          image,
          const SizedBox(height: 7),
          Text(
            '$text',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
