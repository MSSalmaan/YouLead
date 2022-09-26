import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';
import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  YouLeadFirebaseUser? initialUser;
  YouLeadFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(YouLeadFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? HomeWidget() : SigninWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomeWidget() : SigninWidget(),
          routes: [
            FFRoute(
              name: 'WelcomePage',
              path: 'welcomePage',
              builder: (context, params) => WelcomePageWidget(),
            ),
            FFRoute(
              name: 'Signin',
              path: 'signin',
              builder: (context, params) => SigninWidget(),
            ),
            FFRoute(
              name: 'LearningArticle',
              path: 'learningArticle',
              asyncParams: {
                'learningItem':
                    getDoc('LearningPost', LearningPostRecord.serializer),
              },
              builder: (context, params) => LearningArticleWidget(
                learningItem:
                    params.getParam('learningItem', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'VerifyPhoneCodePage',
              path: 'verifyPhoneCodePage',
              builder: (context, params) => VerifyPhoneCodePageWidget(),
            ),
            FFRoute(
              name: 'Home',
              path: 'Home',
              builder: (context, params) => HomeWidget(),
            ),
            FFRoute(
              name: 'MentorMatch',
              path: 'mentorMatch',
              builder: (context, params) => MentorMatchWidget(),
            ),
            FFRoute(
              name: 'ResearchLearning',
              path: 'researchLearning',
              builder: (context, params) => ResearchLearningWidget(),
            ),
            FFRoute(
              name: 'MyApplication',
              path: 'myApplication',
              builder: (context, params) => MyApplicationWidget(),
            ),
            FFRoute(
              name: 'JobSection',
              path: 'jobSection',
              builder: (context, params) => JobSectionWidget(),
            ),
            FFRoute(
              name: 'AchievementPage',
              path: 'achievementPage',
              asyncParams: {
                'achievementItem':
                    getDoc('Achievements', AchievementsRecord.serializer),
              },
              builder: (context, params) => AchievementPageWidget(
                achievementItem:
                    params.getParam('achievementItem', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AccounPage',
              path: 'accounPage',
              builder: (context, params) => AccounPageWidget(),
            ),
            FFRoute(
              name: 'AboutYLA',
              path: 'aboutYLA',
              builder: (context, params) => AboutYLAWidget(),
            ),
            FFRoute(
              name: 'Book_Page',
              path: 'bookPage',
              asyncParams: {
                'bookItem': getDoc('Books', BooksRecord.serializer),
              },
              builder: (context, params) => BookPageWidget(
                bookItem: params.getParam('bookItem', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'ThoughtLeader_Page',
              path: 'thoughtLeaderPage',
              asyncParams: {
                'tlItem': getDoc(
                    'Thoughtleadership', ThoughtleadershipRecord.serializer),
              },
              builder: (context, params) => ThoughtLeaderPageWidget(
                tlItem: params.getParam('tlItem', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Add_Achievement',
              path: 'addAchievement',
              builder: (context, params) => AddAchievementWidget(),
            ),
            FFRoute(
              name: 'Add_book_read',
              path: 'addBookRead',
              builder: (context, params) => AddBookReadWidget(),
            ),
            FFRoute(
              name: 'Add_ThoughtLeadership',
              path: 'addThoughtLeadership',
              builder: (context, params) => AddThoughtLeadershipWidget(),
            ),
            FFRoute(
              name: 'Update_Achievement',
              path: 'updateAchievement',
              asyncParams: {
                'updateAchievement':
                    getDoc('Achievements', AchievementsRecord.serializer),
              },
              builder: (context, params) => UpdateAchievementWidget(
                updateAchievement:
                    params.getParam('updateAchievement', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AddName',
              path: 'addName',
              builder: (context, params) => AddNameWidget(),
            ),
            FFRoute(
              name: 'AddLearningContent',
              path: 'addLearningContent',
              builder: (context, params) => AddLearningContentWidget(),
            ),
            FFRoute(
              name: 'AboutUs',
              path: 'aboutUs',
              builder: (context, params) => AboutUsWidget(),
            ),
            FFRoute(
              name: 'SavedRead',
              path: 'savedRead',
              builder: (context, params) => SavedReadWidget(),
            ),
            FFRoute(
              name: 'UpdateBook',
              path: 'updateBook',
              asyncParams: {
                'bookUpdate': getDoc('Books', BooksRecord.serializer),
              },
              builder: (context, params) => UpdateBookWidget(
                bookUpdate: params.getParam('bookUpdate', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Update_TL',
              path: 'updateTL',
              builder: (context, params) => UpdateTLWidget(),
            ),
            FFRoute(
              name: 'NewCreatAccount',
              path: 'newCreatAccount',
              builder: (context, params) => NewCreatAccountWidget(),
            ),
            FFRoute(
              name: 'home1',
              path: 'home1',
              builder: (context, params) => Home1Widget(),
            ),
            FFRoute(
              name: 'UserProfile4mentor_matchCopy',
              path: 'ProfileUpdate',
              builder: (context, params) => UserProfile4mentorMatchCopyWidget(),
            ),
            FFRoute(
              name: 'UserProfile4mentor_Part2',
              path: 'ProfileUpdate2',
              builder: (context, params) => UserProfile4mentorPart2Widget(),
            ),
            FFRoute(
              name: 'UserProfile4mentor_Part3',
              path: 'userProfile4mentorPart3',
              builder: (context, params) => UserProfile4mentorPart3Widget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam(
    String paramName,
    ParamType type, [
    String? collectionName,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam(param, type, collectionName);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/signin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/EE6CA1E3-7275-443A-80FE-34390D24C4B3.jpeg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
