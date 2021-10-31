import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubelite/widgets/loading_indicator.dart';

class RefreshListView extends StatefulWidget {
  final ScrollController? controller;
  final VoidCallback onRefresh;
  final Function? onLoadMore;
  final Widget child;

  const RefreshListView(
      {Key? key,
      required this.controller,
      required this.onRefresh,
      required this.child,
      this.onLoadMore})
      : super(key: key);

  @override
  _RefreshListViewState createState() => _RefreshListViewState();
}

class _RefreshListViewState extends State<RefreshListView> {
  bool isLoadingMore = false;
  late ScrollController _controller;

  _loadMore() async {
    if (widget.onLoadMore == null) return;
    if (mounted)
      setState(() {
        isLoadingMore = true;
      });
    if (widget.onLoadMore != null) {
      await widget.onLoadMore!();
      isLoadingMore = false;
      if (mounted) setState(() {});
    }
    return;
  }

  @override
  void initState() {
    _controller = widget.controller ?? ScrollController();
    _controller.addListener(() {
      if (widget.onLoadMore == null) return;
      if (!isLoadingMore &&
          _controller.position.pixels >= _controller.position.maxScrollExtent) {
        print('load more');
        _loadMore();

        if (mounted) setState(() {});

        ///Time out after 15 sec
        Future.delayed(Duration(seconds: 15))
          ..whenComplete(() {
            isLoadingMore = false;

            if (mounted) setState(() {});
          });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _controller,
      physics: Platform.isAndroid
          ? BouncingScrollPhysics()
          : AlwaysScrollableScrollPhysics(),
      slivers: <Widget>[
        CupertinoSliverRefreshControl(
          refreshIndicatorExtent: 80,
          refreshTriggerPullDistance: 120,
          onRefresh: () async {
            widget.onRefresh();
          },
          builder: (context, mode, _, __, ___) => LoadingIndicator(),
        ),
        SliverToBoxAdapter(child: widget.child),
        if (isLoadingMore)
          SliverToBoxAdapter(
            child: LoadingIndicator(),
          )
      ],
    );
  }
}
