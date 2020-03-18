// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ExerciseStore on _ExerciseStore, Store {
  Computed<StoreState> _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state)).value;

  final _$exerciseListAtom = Atom(name: '_ExerciseStore.exerciseList');

  @override
  List<Exercise> get exerciseList {
    _$exerciseListAtom.context.enforceReadPolicy(_$exerciseListAtom);
    _$exerciseListAtom.reportObserved();
    return super.exerciseList;
  }

  @override
  set exerciseList(List<Exercise> value) {
    _$exerciseListAtom.context.conditionallyRunInAction(() {
      super.exerciseList = value;
      _$exerciseListAtom.reportChanged();
    }, _$exerciseListAtom, name: '${_$exerciseListAtom.name}_set');
  }

  final _$_exerciseListFutureAtom =
      Atom(name: '_ExerciseStore._exerciseListFuture');

  @override
  ObservableFuture<List<Exercise>> get _exerciseListFuture {
    _$_exerciseListFutureAtom.context
        .enforceReadPolicy(_$_exerciseListFutureAtom);
    _$_exerciseListFutureAtom.reportObserved();
    return super._exerciseListFuture;
  }

  @override
  set _exerciseListFuture(ObservableFuture<List<Exercise>> value) {
    _$_exerciseListFutureAtom.context.conditionallyRunInAction(() {
      super._exerciseListFuture = value;
      _$_exerciseListFutureAtom.reportChanged();
    }, _$_exerciseListFutureAtom,
        name: '${_$_exerciseListFutureAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_ExerciseStore.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.context.enforceReadPolicy(_$errorMessageAtom);
    _$errorMessageAtom.reportObserved();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.context.conditionallyRunInAction(() {
      super.errorMessage = value;
      _$errorMessageAtom.reportChanged();
    }, _$errorMessageAtom, name: '${_$errorMessageAtom.name}_set');
  }

  final _$getExerciseListAsyncAction = AsyncAction('getExerciseList');

  @override
  Future<dynamic> getExerciseList() {
    return _$getExerciseListAsyncAction.run(() => super.getExerciseList());
  }

  @override
  String toString() {
    final string =
        'exerciseList: ${exerciseList.toString()},errorMessage: ${errorMessage.toString()},state: ${state.toString()}';
    return '{$string}';
  }
}
