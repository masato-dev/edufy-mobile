import 'package:flutter/material.dart';

class ScrollPagination extends StatefulWidget {
  final int length;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final int currentPage;
  final int pageCount;
  final bool? shrinkWrap;
  final void Function()? onScrollToEnd;
  
  const ScrollPagination({
    required this.length,
    required this.itemBuilder,
    required this.currentPage,
    required this.pageCount,
    this.shrinkWrap,
    this.onScrollToEnd,
    super.key
  });

  @override
  State<ScrollPagination> createState() => _ScrollPaginationState();
}

class _ScrollPaginationState extends State<ScrollPagination> {
  late final ScrollController _controller;
  @override
  void initState() {
    _controller = ScrollController(
      keepScrollOffset: true
    );
    _controller.addListener(() {
      _onScrollToLast();
    });
    super.initState();
  }

  void _onScrollToLast() {
    final onScrollToEnd = widget.onScrollToEnd ?? () {};
    if(_controller.position.pixels == _controller.position.maxScrollExtent && widget.currentPage < widget.pageCount) {
      onScrollToEnd();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _controller,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: widget.length + 1,
      shrinkWrap: widget.shrinkWrap ?? false,
      padding: const EdgeInsets.only(top: 1),
      itemBuilder: (context, index) {
        if(index < widget.length) {
          return widget.itemBuilder(context, index);
        }
        else {
          if(widget.currentPage < widget.pageCount) {
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator.adaptive(),),
            );
          }
          else {
            return const SizedBox();
          }
        }
      },
    );
  }
}