class AppUrl {
  // this is our base url
  static const String baseUrl =
      'https://api.rootnet.in/covid19-in/stats/latest';

  // fetch world covid states
  static const String worldStatesApi = baseUrl + 'all';
  static const String countriesList = baseUrl + 'states';
}
