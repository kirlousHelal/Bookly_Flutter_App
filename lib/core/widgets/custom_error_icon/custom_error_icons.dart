import 'package:bookly_app/core/widgets/custom_error_icon/widgets/blurred_fade_error_icon.dart';
import 'package:bookly_app/core/widgets/custom_error_icon/widgets/fade_error_icon.dart';
import 'package:bookly_app/core/widgets/custom_error_icon/widgets/shaking_error_icon.dart';
import 'package:bookly_app/core/widgets/custom_error_icon/widgets/slide_error_icon.dart';
import 'package:bookly_app/core/widgets/custom_error_icon/widgets/zoom_error_icon.dart';

abstract class CustomErrorIcons {
  static const fade = FadeErrorIcon();
  static const shaking = ShakingErrorIcon();
  static const slide = SlideErrorIcon();
  static const zoom = ZoomErrorIcon();
  static const blurred = BlurredErrorIcon();
}
