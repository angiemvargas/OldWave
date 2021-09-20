import 'bloc.dart';
import 'bloc_cache.dart';

class Provider {
  static T? of<T extends Bloc?>(T Function() instance) {
    return BlocCache.getBlocInstance(T.toString(), instance) as T?;
  }

  static void dispose<T extends Bloc>() {
    BlocCache.dispose(T.toString());
  }
}
