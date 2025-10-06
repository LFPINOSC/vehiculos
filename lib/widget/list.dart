import 'package:flutter/material.dart';

class ListWidget<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(T item) itemBluilder;
  final String emptyMessage;
  final void Function(T item)? onEditar;
  final void Function(T item)? onEliminar;
  final void Function(T item)? filtroString;

  const ListWidget({
    super.key,
    required this.items,
    required this.itemBluilder,
    required this.emptyMessage,
    this.onEditar,
    this.onEliminar,
    this.filtroString
  });

  @override
  State<ListWidget<T>> createState() => _ListWidget<T>();
}

class _ListWidget<T> extends State<ListWidget<T>> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}