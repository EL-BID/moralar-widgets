library moralar_widgets;

import 'dart:developer';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mega_flutter/mega_flutter.dart';
import 'package:moralar_widgets/utils/birth_mask_formatter.dart';
import 'package:ua_client_hints/ua_client_hints.dart';
import 'package:validatorless/validatorless.dart';

part 'bindings/change_password_binding.dart';
part 'bindings/login_binding.dart';
part 'bindings/recovery_password_binding.dart';
part 'controllers/change_password_controller.dart';
part 'controllers/login_controller.dart';
part 'controllers/recovery_password_controller.dart';
part 'models/address.dart';
part 'models/answer.dart';
part 'models/answer_details.dart';
part 'models/course.dart';
part 'models/course_tts.dart';
part 'models/description.dart';
part 'models/document_credentials.dart';
part 'models/family_holder.dart';
part 'models/family_member.dart';
part 'models/family_tts.dart';
part 'models/family_user.dart';
part 'models/informative.dart';
part 'models/matchs.dart';
part 'models/notification.dart';
part 'models/property.dart';
part 'models/property_features.dart';
part 'models/property_filter.dart';
part 'models/question_response.dart';
part 'models/quiz.dart';
part 'models/quiz_details.dart';
part 'models/schedule_details.dart';
part 'models/spouse.dart';
part 'models/tts.dart';
part 'models/user.dart';
part 'models/user_type.dart';
part 'models/video.dart';
part 'moralar_widgets.g.dart';
part 'providers/auth_provider.dart';
part 'providers/family_provider.dart';
part 'providers/password_provider.dart';
part 'service/course.dart';
part 'service/family.dart';
part 'service/quiz.dart';
part 'service/scheduling.dart';
part 'utils/assets.dart';
part 'utils/colors.dart';
part 'utils/date.dart';
part 'utils/formats.dart';
part 'utils/image.dart';
part 'utils/theme.dart';
part 'utils/urls.dart';
part 'views/change_password_view.dart';
part 'views/login_view.dart';
part 'views/recovery_password_view.dart';
part 'widgets/alert.dart';
part 'widgets/app_bar.dart';
part 'widgets/button.dart';
part 'widgets/card.dart';
part 'widgets/checkbox.dart';
part 'widgets/drawer.dart';
part 'widgets/drawer_header.dart';
part 'widgets/drawer_list_tile.dart';
part 'widgets/list_tile.dart';
part 'widgets/page_controller.dart';
part 'widgets/picker.dart';
part 'widgets/radio.dart';
part 'widgets/scaffold.dart';
part 'widgets/splash.dart';
part 'widgets/status.dart';
part 'widgets/text_field.dart';
part 'widgets/text_span.dart';

/*
Comandos
  flutter pub run build_runner build --delete-conflicting-outputs
*/

class MoralarWidgets {
  static late final MoralarWidgets instance;

  /// Indica qual tipo de usu??rio est?? usando o app.
  final UserType userType;
  final String baseUrlForHTTP = 'apihom.megaleios.com';
  //Change Urls.tts.timelineExport too.

  MoralarWidgets._({
    required this.userType,
  });

  static Future<void> initialize({
    required UserType userType,
  }) async {
    await MegaFlutter.initialize(
      baseUrl: 'https://apihom.megaleios.com/ApiMoralarHml/api/v1',
      authProvider: AuthProvider(),
    );
    instance = MoralarWidgets._(
      userType: userType,
    );
    await MegaFlutter.instance.auth.findCurrentUser();
  }
}
