enum RateAppStatus { initial, loading, success, error }

class RateAppState {
  final int rating;
  final RateAppStatus status;

  const RateAppState({this.rating = 0, this.status = RateAppStatus.initial});

  RateAppState copyWith({int? rating, RateAppStatus? status}) {
    return RateAppState(
      rating: rating ?? this.rating,
      status: status ?? this.status,
    );
  }
}
