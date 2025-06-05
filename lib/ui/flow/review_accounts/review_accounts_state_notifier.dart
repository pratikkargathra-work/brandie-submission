import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oriflame/data/services%20/account_service.dart';
import '../../../data/models/account/account.dart';

part 'review_accounts_state_notifier.freezed.dart';

final reviewAccountsStateNotifier =
    StateNotifierProvider.autoDispose<
      ReviewAccountsStateNotifier,
      ReviewAccountsState
    >((ref) {
      return ReviewAccountsStateNotifier(ref.read(accountServiceProvider));
    });

class ReviewAccountsStateNotifier extends StateNotifier<ReviewAccountsState> {
  final AccountService _accountService;

  ReviewAccountsStateNotifier(this._accountService)
    : super(ReviewAccountsState(searchController: TextEditingController())) {
    getAccounts();
  }

  Future<void> getAccounts() async {
    try {
      state = state.copyWith(loading: true, error: null);
      final accounts = await _accountService.fetchPendingAccounts();
      state = state.copyWith(
        loading: false,
        accounts: accounts,
        sortedAccounts: accounts,
      );
    } catch (e) {
      state = state.copyWith(error: e, loading: false);
    }
  }

  void sortAccounts() {
    final sorted = [...state.accounts];

    sorted.sort((a, b) {
      int comparison;
      switch (state.orderBy) {
        case OrderBy.dateConnected:
          comparison = a.date_joined.compareTo(b.date_joined);
          break;
        case OrderBy.username:
          comparison = a.name.compareTo(b.name);
          break;
      }

      if (state.orderSortFormat == OrderSortFormat.descending) {
        comparison = -comparison;
      }

      return comparison;
    });

    state = state.copyWith(
      sortedAccounts: state.searchController.text.trim().isEmpty
          ? sorted
          : sorted
                .where(
                  (e) => e.name.toLowerCase().contains(
                    state.searchController.text.toLowerCase(),
                  ),
                )
                .toList(),
    );
  }

  void onOrderByChanged(OrderBy orderBy) {
    state = state.copyWith(orderBy: orderBy);

    if (state.filterEnable) {
      sortAccounts();
    }
  }

  void onOrderSortFormatChanged(OrderSortFormat orderSortFormat) {
    state = state.copyWith(orderSortFormat: orderSortFormat);

    if (state.filterEnable) {
      sortAccounts();
    }
  }

  void onSearchChanged(String _) {
    if (!state.filterEnable) {
      state = state.copyWith(
        sortedAccounts: state.searchController.text.trim().isEmpty
            ? state.accounts
            : state.accounts
                  .where(
                    (e) => e.name.toLowerCase().contains(
                      state.searchController.text.toLowerCase(),
                    ),
                  )
                  .toList(),
      );
    } else {
      sortAccounts();
    }
  }

  void toggleFilter() {
    final value = !state.filterEnable;
    state = state.copyWith(filterEnable: value);
    if (value) {
      sortAccounts();
    } else {
      state = state.copyWith(
        sortedAccounts: state.searchController.text.trim().isEmpty
            ? state.accounts
            : state.accounts
                  .where(
                    (e) => e.name.toLowerCase().contains(
                      state.searchController.text.toLowerCase(),
                    ),
                  )
                  .toList(),
      );
    }
  }

  @override
  void dispose() {
    state.searchController.dispose();
    super.dispose();
  }
}

@freezed
abstract class ReviewAccountsState with _$ReviewAccountsState {
  const factory ReviewAccountsState({
    @Default(false) bool loading,
    @Default(<Account>[]) List<Account> accounts,
    @Default(<Account>[]) List<Account> sortedAccounts,
    @Default(OrderBy.dateConnected) OrderBy orderBy,
    @Default(OrderSortFormat.ascending) OrderSortFormat orderSortFormat,
    required TextEditingController searchController,
    @Default(false) bool filterEnable,
    Object? error,
  }) = _ReviewAccountsState;
}

enum OrderSortFormat { ascending, descending }

enum OrderBy { dateConnected, username }
