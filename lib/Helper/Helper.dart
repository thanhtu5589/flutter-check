class Helper {
  static dynamic getDataModel(json, String key) {
    try {
        final arrayKey = key.split('.');
        if (arrayKey.length > 0) {
          var currentValue = json;
          arrayKey.forEach((element) {
            currentValue = currentValue[element];
          });
          return currentValue;
      }
      return json[key];
    } catch (e) {
      return null;
    }
  }
}