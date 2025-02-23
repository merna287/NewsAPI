import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_test/manager/cubit.dart';
import 'package:new_test/manager/state.dart';
import 'package:new_test/widget/article_item.dart';

class ArticleListview extends StatefulWidget {
  const ArticleListview({super.key});

  @override
  State<ArticleListview> createState() => _ArticleListviewState();
}

class _ArticleListviewState extends State<ArticleListview> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (state is LoadedState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ArticleItem(
                  m: state.x[index],
                );
              },
              childCount: state.x.length,
            ),
          );
        } else if (state is ErrorState) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text("Error: ${state.errorMassege}"),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
