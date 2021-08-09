part of moralar_widgets;

class MoralarImage extends Image {
  MoralarImage.asset(
    String name, {
    double? height,
    double? width,
  }) : super(
          image: AssetImage(
            name,
            package: 'moralar_widgets',
          ),
          width: width,
          height: height,
        );
}
