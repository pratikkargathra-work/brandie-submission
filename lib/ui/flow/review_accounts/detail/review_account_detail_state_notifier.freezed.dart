// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_account_detail_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewAccountDetailState {

 List<Account> get accounts; String? get approveLoading; String? get declineLoading; int get current; PageController get pageController; Object? get error;
/// Create a copy of ReviewAccountDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewAccountDetailStateCopyWith<ReviewAccountDetailState> get copyWith => _$ReviewAccountDetailStateCopyWithImpl<ReviewAccountDetailState>(this as ReviewAccountDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewAccountDetailState&&const DeepCollectionEquality().equals(other.accounts, accounts)&&(identical(other.approveLoading, approveLoading) || other.approveLoading == approveLoading)&&(identical(other.declineLoading, declineLoading) || other.declineLoading == declineLoading)&&(identical(other.current, current) || other.current == current)&&(identical(other.pageController, pageController) || other.pageController == pageController)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(accounts),approveLoading,declineLoading,current,pageController,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ReviewAccountDetailState(accounts: $accounts, approveLoading: $approveLoading, declineLoading: $declineLoading, current: $current, pageController: $pageController, error: $error)';
}


}

/// @nodoc
abstract mixin class $ReviewAccountDetailStateCopyWith<$Res>  {
  factory $ReviewAccountDetailStateCopyWith(ReviewAccountDetailState value, $Res Function(ReviewAccountDetailState) _then) = _$ReviewAccountDetailStateCopyWithImpl;
@useResult
$Res call({
 List<Account> accounts, String? approveLoading, String? declineLoading, int current, PageController pageController, Object? error
});




}
/// @nodoc
class _$ReviewAccountDetailStateCopyWithImpl<$Res>
    implements $ReviewAccountDetailStateCopyWith<$Res> {
  _$ReviewAccountDetailStateCopyWithImpl(this._self, this._then);

  final ReviewAccountDetailState _self;
  final $Res Function(ReviewAccountDetailState) _then;

/// Create a copy of ReviewAccountDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accounts = null,Object? approveLoading = freezed,Object? declineLoading = freezed,Object? current = null,Object? pageController = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<Account>,approveLoading: freezed == approveLoading ? _self.approveLoading : approveLoading // ignore: cast_nullable_to_non_nullable
as String?,declineLoading: freezed == declineLoading ? _self.declineLoading : declineLoading // ignore: cast_nullable_to_non_nullable
as String?,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,pageController: null == pageController ? _self.pageController : pageController // ignore: cast_nullable_to_non_nullable
as PageController,error: freezed == error ? _self.error : error ,
  ));
}

}


/// @nodoc


class _ReviewAccountsState implements ReviewAccountDetailState {
  const _ReviewAccountsState({final  List<Account> accounts = const <Account>[], this.approveLoading, this.declineLoading, this.current = 0, required this.pageController, this.error}): _accounts = accounts;
  

 final  List<Account> _accounts;
@override@JsonKey() List<Account> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}

@override final  String? approveLoading;
@override final  String? declineLoading;
@override@JsonKey() final  int current;
@override final  PageController pageController;
@override final  Object? error;

/// Create a copy of ReviewAccountDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewAccountsStateCopyWith<_ReviewAccountsState> get copyWith => __$ReviewAccountsStateCopyWithImpl<_ReviewAccountsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewAccountsState&&const DeepCollectionEquality().equals(other._accounts, _accounts)&&(identical(other.approveLoading, approveLoading) || other.approveLoading == approveLoading)&&(identical(other.declineLoading, declineLoading) || other.declineLoading == declineLoading)&&(identical(other.current, current) || other.current == current)&&(identical(other.pageController, pageController) || other.pageController == pageController)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_accounts),approveLoading,declineLoading,current,pageController,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ReviewAccountDetailState(accounts: $accounts, approveLoading: $approveLoading, declineLoading: $declineLoading, current: $current, pageController: $pageController, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ReviewAccountsStateCopyWith<$Res> implements $ReviewAccountDetailStateCopyWith<$Res> {
  factory _$ReviewAccountsStateCopyWith(_ReviewAccountsState value, $Res Function(_ReviewAccountsState) _then) = __$ReviewAccountsStateCopyWithImpl;
@override @useResult
$Res call({
 List<Account> accounts, String? approveLoading, String? declineLoading, int current, PageController pageController, Object? error
});




}
/// @nodoc
class __$ReviewAccountsStateCopyWithImpl<$Res>
    implements _$ReviewAccountsStateCopyWith<$Res> {
  __$ReviewAccountsStateCopyWithImpl(this._self, this._then);

  final _ReviewAccountsState _self;
  final $Res Function(_ReviewAccountsState) _then;

/// Create a copy of ReviewAccountDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accounts = null,Object? approveLoading = freezed,Object? declineLoading = freezed,Object? current = null,Object? pageController = null,Object? error = freezed,}) {
  return _then(_ReviewAccountsState(
accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<Account>,approveLoading: freezed == approveLoading ? _self.approveLoading : approveLoading // ignore: cast_nullable_to_non_nullable
as String?,declineLoading: freezed == declineLoading ? _self.declineLoading : declineLoading // ignore: cast_nullable_to_non_nullable
as String?,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as int,pageController: null == pageController ? _self.pageController : pageController // ignore: cast_nullable_to_non_nullable
as PageController,error: freezed == error ? _self.error : error ,
  ));
}


}

// dart format on
