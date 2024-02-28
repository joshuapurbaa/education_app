import 'package:education_app/core/usecases/usecases.dart';
import 'package:education_app/core/utils/typedefs.dart';
import 'package:education_app/src/on_boarding/domain/domain.dart';

class CacheFirstTimer extends UsecaseWithaoutParams<void> {
  CacheFirstTimer({required OnBoardingRepo onBoardingRepo})
      : _onBoardingRepo = onBoardingRepo;

  final OnBoardingRepo _onBoardingRepo;

  @override
  ResultFuture<void> call() {
    return _onBoardingRepo.cacheFirstTimer();
  }
}
