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
          path: 'input',
          factory: $ImagePickerRouteExtension._fromState,
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
        '/input',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
