import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oriflame/data/services%20/account_service.dart';
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
      );
    });

class ReviewAccountDetailStateNotifier
    extends StateNotifier<ReviewAccountDetailState> {
  final AccountService _accountService;

  ReviewAccountDetailStateNotifier(
    List<Account> accounts,
    int current,
    this._accountService,
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
    @Default(0) int current,
    required PageController pageController,
    Object? error,
  }) = _ReviewAccountsState;
}
