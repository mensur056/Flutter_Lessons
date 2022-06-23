enum LottieItems { themeChange }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.themeChange:
        return 'change_theme';
    }
  }

  String get lottiPath => 'assets/lottie/lottie_${_path()}.json';
}
