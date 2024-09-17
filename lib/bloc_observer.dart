import 'package:flutter_bloc/flutter_bloc.dart';

class Observer extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    print('$bloc : $change');
    super.onChange(bloc, change);
  }
}
