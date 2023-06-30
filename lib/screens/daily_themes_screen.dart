import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/query_daily_themes_provider.dart';
import '../widgets/app_bar/daily_themes_app_bar.dart';
import '../widgets/container/daily_theme_container.dart';
import '../widgets/container/data_not_found_error_container.dart';
import '../widgets/container/loading_container.dart';
import '../widgets/container/unexpected_error_container.dart';

class DailyThemesScreen extends HookConsumerWidget {
  const DailyThemesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context, ref) {
    final year = useState(DateTime.now().year);

    final month = useState(DateTime.now().month);

    final dailyThemes = ref.watch(
      queryDailyThemesProvider(
        QueryDailyThemesProps(year: year.value, month: month.value),
      ),
    );

    return Scaffold(
      key: const PageStorageKey('daily_themes'),
      appBar: DailyThemesAppBar(
        month: month.value,
        year: year.value,
        hasPrev: hasPrev(year.value, month.value),
        onPrev: () {
          onPrev(year, month);
        },
        hasNext: hasNext(year.value, month.value),
        onNext: () {
          onNext(year, month);
        },
      ),
      body: dailyThemes.when(
        error: (error, stackTrace) {
          return const UnexpectedErrorContainer();
        },
        loading: () {
          return const LoadingContainer();
        },
        data: (data) {
          if (data == null) {
            return const DataNotFoundErrorContainer();
          }
          final dailyThemes = data.dailyThemes;
          if (dailyThemes.isEmpty) {
            return const DataNotFoundErrorContainer();
          }
          return ListView.builder(
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.only(bottom: 16, left: 0, right: 0),
            cacheExtent: 0.0,
            itemCount: dailyThemes.length,
            itemBuilder: (context, index) {
              final dailyTheme = dailyThemes[index];
              final firstWork = dailyTheme.firstWork;
              return InkWell(
                onTap: () {
                  context.push('/daily_themes/${dailyTheme.id}');
                },
                child: DailyThemeContainer(
                  isCurrent: isCurrent(year.value, month.value, dailyTheme.day),
                  day: dailyTheme.day,
                  title: dailyTheme.title,
                  worksCount: dailyTheme.worksCount,
                  thumbnailImageURL: firstWork?.thumbnailImage?.downloadURL,
                ),
              );
            },
          );
        },
      ),
    );
  }

  /// 先月に変更する
  void onPrev(ValueNotifier<int> year, ValueNotifier<int> month) {
    if (month.value == 1 && year.value == 2022) return;
    if (month.value == 1) {
      year.value -= 1;
      month.value = 12;
      return;
    }
    month.value -= 1;
  }

  bool hasPrev(int year, int month) {
    if (year == 2023 && month < 3) return false;
    return true;
  }

  /// 来月に変更する
  void onNext(ValueNotifier<int> year, ValueNotifier<int> month) {
    if (month.value == 12) {
      year.value += 1;
      month.value = 1;
      return;
    }
    month.value += 1;
  }

  bool hasNext(int year, int month) {
    final now = DateTime.now();
    if (year == now.year && month == now.month) {
      return false;
    }
    if (year == 2023 && month == 12) {
      return false;
    }
    return true;
  }

  bool isCurrent(int year, int month, int day) {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }
}
