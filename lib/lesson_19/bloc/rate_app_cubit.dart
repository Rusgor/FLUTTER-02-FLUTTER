import 'package:flutter_bloc/flutter_bloc.dart';

enum RateStatus { initial, loading, success, error }

class RateAppState {
  final int rating;
  final RateStatus status;

  const RateAppState({required this.rating, required this.status});

  factory RateAppState.initial() {
    return const RateAppState(rating: 0, status: RateStatus.initial);
  }

  RateAppState copyWith({int? rating, RateStatus? status}) {
    return RateAppState(
      rating: rating ?? this.rating,
      status: status ?? this.status,
    );
  }
}

class RateAppCubit extends Cubit<RateAppState> {
  RateAppCubit() : super(RateAppState.initial());

  void setRating(int value) {
    emit(state.copyWith(rating: value));
  }

  void resetRating() {
    emit(RateAppState.initial());
  }

  void resetIfNotSubmitted() {
    if (state.status != RateStatus.success) {
      emit(RateAppState.initial());
    }
  }

  Future<void> submitRating() async {
    emit(state.copyWith(status: RateStatus.loading));

    await Future.delayed(const Duration(milliseconds: 1000));

    emit(state.copyWith(status: RateStatus.success));
  }
}
