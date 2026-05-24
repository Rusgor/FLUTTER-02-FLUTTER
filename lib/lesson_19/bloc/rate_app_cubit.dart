import 'package:flutter_bloc/flutter_bloc.dart';

enum RateStatus { initial, loading, success, error }

class RateAppState {
  final int rating;
  final String comment;
  final RateStatus status;

  const RateAppState({
    this.rating = 0,
    this.comment = '',
    this.status = RateStatus.initial,
  });

  RateAppState copyWith({int? rating, String? comment, RateStatus? status}) {
    return RateAppState(
      rating: rating ?? this.rating,
      comment: comment ?? this.comment,
      status: status ?? this.status,
    );
  }
}

class RateAppCubit extends Cubit<RateAppState> {
  RateAppCubit() : super(const RateAppState());

  void setRating(int value) {
    emit(state.copyWith(rating: value));
  }

  void updateComment(String value) {
    emit(state.copyWith(comment: value));
  }

  Future<void> submitRating() async {
    emit(state.copyWith(status: RateStatus.loading));

    await Future.delayed(const Duration(seconds: 1));

    emit(state.copyWith(status: RateStatus.success));
  }

  void resetRating() {
    emit(state.copyWith(rating: 0, comment: '', status: RateStatus.initial));
  }
}
