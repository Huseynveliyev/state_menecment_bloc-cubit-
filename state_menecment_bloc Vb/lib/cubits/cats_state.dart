import 'package:equatable/equatable.dart';
import 'package:state_menecment_bloc/model/cats_model.dart';

abstract class CatsState extends Equatable {
  const CatsState();
}

class CatsInitial extends CatsState {
  const CatsInitial();

  @override
  List<Object?> get props => [];
}

class CatsLoading extends CatsState {
  const CatsLoading();
  @override
  List<Object?> get props => [];
}

class CatsCompleted extends CatsState {
  final List<CatsModel> response;

  const CatsCompleted(this.response);

  @override
  List<Object?> get props => [response];
}

class CatsError extends CatsState {
  final String message;
  const CatsError(this.message);

  @override
  List<Object?> get props => [message];
}
