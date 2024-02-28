import 'package:education_app/core/utils/typedefs.dart';

abstract class UsecaseWithaoutParams<Type> {
  ResultFuture<Type> call();
}

abstract class UsecaseWithParams<Type, Params> {
  ResultFuture<Type> call(Params params);
}
