// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $testRoute,
    ];

GoRoute get $testRoute => GoRouteData.$route(
      path: '/',
      factory: $TestRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'hoge',
          factory: $HogeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'image',
          factory: $ImagePickerRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'color',
          factory: $ColorPickerRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'color/display',
          factory: $ColorDisplayRouteExtension._fromState,
        ),
      ],
    );

extension $TestRouteExtension on TestRoute {
  static TestRoute _fromState(GoRouterState state) => const TestRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $HogeRouteExtension on HogeRoute {
  static HogeRoute _fromState(GoRouterState state) => const HogeRoute();

  String get location => GoRouteData.$location(
        '/hoge',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ImagePickerRouteExtension on ImagePickerRoute {
  static ImagePickerRoute _fromState(GoRouterState state) =>
      const ImagePickerRoute();

  String get location => GoRouteData.$location(
        '/image',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ColorPickerRouteExtension on ColorPickerRoute {
  static ColorPickerRoute _fromState(GoRouterState state) =>
      const ColorPickerRoute();

  String get location => GoRouteData.$location(
        '/color',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ColorDisplayRouteExtension on ColorDisplayRoute {
  static ColorDisplayRoute _fromState(GoRouterState state) =>
      const ColorDisplayRoute();

  String get location => GoRouteData.$location(
        '/color/display',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
