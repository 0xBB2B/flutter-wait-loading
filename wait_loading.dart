import 'package:flutter/material.dart';

class WaitLoading {
  WaitLoading.of(BuildContext context) {
    _context = context;
  }

  BuildContext _context;
  BuildContext _loadingContext;

  Future<T> wait<T>(Future<T> future) async {
    _isLoading();
    T response = await future;
    _isCompleted();
    return response;
  }

  void _isLoading() {
    showDialog(
      context: _context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        _loadingContext = context;
        return Container(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  void _isCompleted() {
    Navigator.of(_loadingContext).pop();
  }
}
