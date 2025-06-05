// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'archive_accounts_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArchiveAccountsState {

 bool get loading; List<Account> get accounts; List<Account> get sortedAccounts; OrderBy get orderBy; OrderSortFormat get orderSortFormat; TextEditingController get searchController; bool get filterEnable; Object? get error;
/// Create a copy of ArchiveAccountsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArchiveAccountsStateCopyWith<ArchiveAccountsState> get copyWith => _$ArchiveAccountsStateCopyWithImpl<ArchiveAccountsState>(this as ArchiveAccountsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchiveAccountsState&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.accounts, accounts)&&const DeepCollectionEquality().equals(other.sortedAccounts, sortedAccounts)&&(identical(other.orderBy, orderBy) || other.orderBy == orderBy)&&(identical(other.orderSortFormat, orderSortFormat) || other.orderSortFormat == orderSortFormat)&&(identical(other.searchController, searchController) || other.searchController == searchController)&&(identical(other.filterEnable, filterEnable) || other.filterEnable == filterEnable)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(accounts),const DeepCollectionEquality().hash(sortedAccounts),orderBy,orderSortFormat,searchController,filterEnable,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ArchiveAccountsState(loading: $loading, accounts: $accounts, sortedAccounts: $sortedAccounts, orderBy: $orderBy, orderSortFormat: $orderSortFormat, searchController: $searchController, filterEnable: $filterEnable, error: $error)';
}


}

/// @nodoc
abstract mixin class $ArchiveAccountsStateCopyWith<$Res>  {
  factory $ArchiveAccountsStateCopyWith(ArchiveAccountsState value, $Res Function(ArchiveAccountsState) _then) = _$ArchiveAccountsStateCopyWithImpl;
@useResult
$Res call({
 bool loading, List<Account> accounts, List<Account> sortedAccounts, OrderBy orderBy, OrderSortFormat orderSortFormat, TextEditingController searchController, bool filterEnable, Object? error
});




}
/// @nodoc
class _$ArchiveAccountsStateCopyWithImpl<$Res>
    implements $ArchiveAccountsStateCopyWith<$Res> {
  _$ArchiveAccountsStateCopyWithImpl(this._self, this._then);

  final ArchiveAccountsState _self;
  final $Res Function(ArchiveAccountsState) _then;

/// Create a copy of ArchiveAccountsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? accounts = null,Object? sortedAccounts = null,Object? orderBy = null,Object? orderSortFormat = null,Object? searchController = null,Object? filterEnable = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<Account>,sortedAccounts: null == sortedAccounts ? _self.sortedAccounts : sortedAccounts // ignore: cast_nullable_to_non_nullable
as List<Account>,orderBy: null == orderBy ? _self.orderBy : orderBy // ignore: cast_nullable_to_non_nullable
as OrderBy,orderSortFormat: null == orderSortFormat ? _self.orderSortFormat : orderSortFormat // ignore: cast_nullable_to_non_nullable
as OrderSortFormat,searchController: null == searchController ? _self.searchController : searchController // ignore: cast_nullable_to_non_nullable
as TextEditingController,filterEnable: null == filterEnable ? _self.filterEnable : filterEnable // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}

}


/// @nodoc


class _ArchiveAccountsState implements ArchiveAccountsState {
  const _ArchiveAccountsState({this.loading = false, final  List<Account> accounts = const <Account>[], final  List<Account> sortedAccounts = const <Account>[], this.orderBy = OrderBy.dateConnected, this.orderSortFormat = OrderSortFormat.ascending, required this.searchController, this.filterEnable = false, this.error}): _accounts = accounts,_sortedAccounts = sortedAccounts;
  

@override@JsonKey() final  bool loading;
 final  List<Account> _accounts;
@override@JsonKey() List<Account> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}

 final  List<Account> _sortedAccounts;
@override@JsonKey() List<Account> get sortedAccounts {
  if (_sortedAccounts is EqualUnmodifiableListView) return _sortedAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sortedAccounts);
}

@override@JsonKey() final  OrderBy orderBy;
@override@JsonKey() final  OrderSortFormat orderSortFormat;
@override final  TextEditingController searchController;
@override@JsonKey() final  bool filterEnable;
@override final  Object? error;

/// Create a copy of ArchiveAccountsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArchiveAccountsStateCopyWith<_ArchiveAccountsState> get copyWith => __$ArchiveAccountsStateCopyWithImpl<_ArchiveAccountsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArchiveAccountsState&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other._accounts, _accounts)&&const DeepCollectionEquality().equals(other._sortedAccounts, _sortedAccounts)&&(identical(other.orderBy, orderBy) || other.orderBy == orderBy)&&(identical(other.orderSortFormat, orderSortFormat) || other.orderSortFormat == orderSortFormat)&&(identical(other.searchController, searchController) || other.searchController == searchController)&&(identical(other.filterEnable, filterEnable) || other.filterEnable == filterEnable)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(_accounts),const DeepCollectionEquality().hash(_sortedAccounts),orderBy,orderSortFormat,searchController,filterEnable,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ArchiveAccountsState(loading: $loading, accounts: $accounts, sortedAccounts: $sortedAccounts, orderBy: $orderBy, orderSortFormat: $orderSortFormat, searchController: $searchController, filterEnable: $filterEnable, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ArchiveAccountsStateCopyWith<$Res> implements $ArchiveAccountsStateCopyWith<$Res> {
  factory _$ArchiveAccountsStateCopyWith(_ArchiveAccountsState value, $Res Function(_ArchiveAccountsState) _then) = __$ArchiveAccountsStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, List<Account> accounts, List<Account> sortedAccounts, OrderBy orderBy, OrderSortFormat orderSortFormat, TextEditingController searchController, bool filterEnable, Object? error
});




}
/// @nodoc
class __$ArchiveAccountsStateCopyWithImpl<$Res>
    implements _$ArchiveAccountsStateCopyWith<$Res> {
  __$ArchiveAccountsStateCopyWithImpl(this._self, this._then);

  final _ArchiveAccountsState _self;
  final $Res Function(_ArchiveAccountsState) _then;

/// Create a copy of ArchiveAccountsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? accounts = null,Object? sortedAccounts = null,Object? orderBy = null,Object? orderSortFormat = null,Object? searchController = null,Object? filterEnable = null,Object? error = freezed,}) {
  return _then(_ArchiveAccountsState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<Account>,sortedAccounts: null == sortedAccounts ? _self._sortedAccounts : sortedAccounts // ignore: cast_nullable_to_non_nullable
as List<Account>,orderBy: null == orderBy ? _self.orderBy : orderBy // ignore: cast_nullable_to_non_nullable
as OrderBy,orderSortFormat: null == orderSortFormat ? _self.orderSortFormat : orderSortFormat // ignore: cast_nullable_to_non_nullable
as OrderSortFormat,searchController: null == searchController ? _self.searchController : searchController // ignore: cast_nullable_to_non_nullable
as TextEditingController,filterEnable: null == filterEnable ? _self.filterEnable : filterEnable // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}


}

// dart format on
