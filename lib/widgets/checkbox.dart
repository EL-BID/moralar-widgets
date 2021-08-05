part of moralar_widgets;

class LoginCheckBox extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return InkWell(
        onTap: () {
          controller.checked.value = !controller.checked.value;
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Assets.colors.kellyGreen,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: controller.checked.value
                ? const Center(
                    child: FaIcon(
                      FontAwesomeIcons.check,
                      color: Colors.white,
                      size: 18,
                    ),
                  )
                : Center(
                    child: FaIcon(
                      FontAwesomeIcons.check,
                      color: Assets.colors.kellyGreen,
                      size: 18,
                    ),
                  ),
          ),
        ),
      );
    });
  }
}
