import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oriflame/data/services%20/account_service.dart';
import 'package:oriflame/ui/flow/review_accounts/review_accounts_state_notifier.dart';
import '../../../../data/models/account/account.dart';

part 'review_account_detail_state_notifier.freezed.dart';

final reviewAccountsStateNotifierProvider = StateNotifierProvider.family
    .autoDispose<
      ReviewAccountDetailStateNotifier,
      ReviewAccountDetailState,
      ({List<Account> accounts, int current})
    >((ref, value) {
      return ReviewAccountDetailStateNotifier(
        value.accounts,
        value.current,
        ref.read(accountServiceProvider),
        ref.read(reviewAccountsStateNotifier.notifier),
      );
    });

class ReviewAccountDetailStateNotifier
    extends StateNotifier<ReviewAccountDetailState> {
  final AccountService _accountService;
  final ReviewAccountsStateNotifier _reviewNotifier;

  ReviewAccountDetailStateNotifier(
    List<Account> accounts,
    int current,
    this._accountService,
    this._reviewNotifier,
  ) : super(
        ReviewAccountDetailState(
          accounts: accounts,
          current: current,
          pageController: PageController(initialPage: current),
        ),
      );

  void onPageChanged(int index) {
    state = state.copyWith(current: index);
  }

  void navigateNext() {
    state.pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void navigatePrevious() {
    state.pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  Future<void> onDecline(
    Account account,
    Future<void> Function() showToast,
  ) async {
    try {
      state = state.copyWith(error: null, declineLoading: account.id);
      await _accountService.declineAccount(account);

      await showToast();
      state = state.copyWith(
        accounts: state.accounts.toList()
          ..removeWhere((element) => element.id == account.id),
        declineLoading: null,
      );
      _reviewNotifier.removeAccount(account);
    } catch (e) {
      state = state.copyWith(error: e, declineLoading: null);
    }
  }

  Future<void> onApprove(
    Account account,
    Future<void> Function() showToast,
  ) async {
    try {
      state = state.copyWith(error: null, approveLoading: account.id);
      await _accountService.approveAccount(account);

      await showToast();

      state = state.copyWith(
        accounts: state.accounts.toList()
          ..removeWhere((element) => element.id == account.id),
        approveLoading: null,
      );
      _reviewNotifier.removeAccount(account);
    } catch (e) {
      state = state.copyWith(error: e, approveLoading: null);
    }
  }

  @override
  void dispose() {
    state.pageController.dispose();
    super.dispose();
  }
}

@freezed
abstract class ReviewAccountDetailState with _$ReviewAccountDetailState {
  const factory ReviewAccountDetailState({
    @Default(<Account>[]) List<Account> accounts,
    String? approveLoading,
    String? declineLoading,
    @Default(0) int current,
    required PageController pageController,
    Object? error,
  }) = _ReviewAccountsState;
}
