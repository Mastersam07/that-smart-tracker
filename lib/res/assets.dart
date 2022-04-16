import 'package:flutter/material.dart';

abstract class Assets {
  static const _imageAssetPath = 'assets/images';
  static const _iconAssetPath = 'assets/icons';

  ///IMAGE ASSETS
  static const splashLogo = AssetImage('$_imageAssetPath/logo.png');
  static const emailImage = AssetImage('$_imageAssetPath/email.png');

  ///ICON ASSETS
  static const googleIcon = AssetImage('$_iconAssetPath/google.png');
}
