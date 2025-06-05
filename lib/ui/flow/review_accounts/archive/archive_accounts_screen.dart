import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:oriflame/ui/extensions/context_extension.dart';
import 'package:oriflame/ui/flow/review_accounts/archive/archive_accounts_state_notifier.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../style/theme/typography/typography.dart';
import '../../../components/animations/fade_in_switcher.dart';
import '../../../components/animations/on_tap_scale.dart';
import '../../../components/app_text_field.dart';
import '../../../components/place_holder_screen.dart';
import '../../../components/snack_bar.dart';
import '../components/account_card.dart';

class ArchiveAccountsScreen extends ConsumerStatefulWidget {
  const ArchiveAccountsScreen({super.key});

  @override
  ConsumerState<ArchiveAccountsScreen> createState() =>
      _ArchiveAccountsScreenState();
}

class _ArchiveAccountsScreenState extends ConsumerState<ArchiveAccountsScreen> {
  void _observeError(BuildContext context) {
    ref.listen(archiveAccountsStateNotifier.select((value) => value.error), (
      previous,
      next,
    ) {
      if (next != null) {
        showErrorSnackBar(context: context, error: next);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _observeError(context);
    return Column(
      children: [
        const _ArchiveAccountHeader(),
        const Divider(height: 1),
        FadeInSwitcher(child: const _ArchiveAccountsActions()),
        Expanded(child: FadeInSwitcher(child: const _ArchiveAccountsList())),
      ],
    );
  }
}

class _ArchiveAccountsList extends ConsumerWidget {
  const _ArchiveAccountsList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(archiveAccountsStateNotifier);

    if (state.loading) {
      return const Center(child: CupertinoActivityIndicator());
    }

    if (state.accounts.isEmpty) {
      return PlaceHolderScreen(
        icon: Assets.images.navigation.reviewAccounts,
        title: context.l10n.empty_archive_accounts_title,
        description: context.l10n.empty_archive_accounts_description,
      );
    }

    if (state.sortedAccounts.isEmpty) {
      return PlaceHolderScreen(
        icon: Assets.images.navigation.reviewAccounts,
        title: context.l10n.empty_search_result_title,
        description: context.l10n.empty_search_result_description,
      );
    }

    return ListView(
      padding: EdgeInsets.all(32),
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.start,
          children: List.generate(
            state.sortedAccounts.length,
            (index) => AccountCard(
              account: state.sortedAccounts[index],
              onTap: () {
                ///TODO: open account details
              },
              onApprove: () {
                ref
                    .read(archiveAccountsStateNotifier.notifier)
                    .onApprove(state.sortedAccounts[index]);
                if (context.mounted) {
                  showCustomSnackBar(
                    context: context,
                    text: context.l10n.account_approved_text,
                    backgroundColor: Color.alphaBlend(
                      context.colorScheme.surface.withValues(alpha: 0.8),
                      context.colorScheme.statusRed,
                    ),
                    icon: Icon(
                      Icons.check_circle,
                      color: context.colorScheme.statusGreen,
                      size: 18,
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _ArchiveAccountHeader extends StatelessWidget {
  const _ArchiveAccountHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          OnTapScale(
            onTap: () {
              context.pop();
            },
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.colorScheme.strokeLight),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: context.colorScheme.textSecondary,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.back_to_review_account_text,
                      style: AppTextStyles.caption.copyWith(
                        color: context.colorScheme.textDisabled,
                      ),
                    ),
                    Text(
                      context.l10n.archive_title,
                      style: AppTextStyles.header3.copyWith(
                        color: context.colorScheme.textPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: context.colorScheme.strokeLight),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://flagcdn.com/48x36/gb.png",
                  ),
                  radius: 12,
                ),
                const SizedBox(width: 4),
                Text(
                  "UK",
                  style: AppTextStyles.body2.copyWith(
                    color: context.colorScheme.textSecondary,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 20,
                  color: context.colorScheme.textSecondary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ArchiveAccountsActions extends ConsumerStatefulWidget {
  const _ArchiveAccountsActions();

  @override
  ConsumerState createState() => __ArchiveAccountsActionsState();
}

class __ArchiveAccountsActionsState
    extends ConsumerState<_ArchiveAccountsActions> {
  final GlobalKey _menuKey = GlobalKey();
  late ArchiveAccountsStateNotifier _notifier;

  @override
  void initState() {
    _notifier = ref.read(archiveAccountsStateNotifier.notifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(archiveAccountsStateNotifier);

    if (state.accounts.isEmpty) {
      return const SizedBox();
    }

    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.all(24),
        child: IntrinsicHeight(
          child: Flex(
            direction: constraints.maxWidth < 800
                ? Axis.vertical
                : Axis.horizontal,
            children: [
              Expanded(
                child: AppTextField(
                  controller: state.searchController,
                  onChanged: _notifier.onSearchChanged,
                  prefix: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: SvgPicture.asset(
                      Assets.images.icons.search,
                      width: 16,
                      height: 16,
                      colorFilter: ColorFilter.mode(
                        context.colorScheme.textSecondary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  hintText: context.l10n.search_account_field_hint,
                ),
              ),
              const SizedBox(width: 24, height: 24),
              Row(
                children: [
                  Text(
                    context.l10n.common_sort_by,
                    style: AppTextStyles.body2.copyWith(
                      color: context.colorScheme.textSecondary,
                    ),
                  ),
                  const SizedBox(width: 8),
                  OnTapScale(
                    key: _menuKey,
                    onTap: () {
                      final RenderBox button =
                          _menuKey.currentContext!.findRenderObject()
                              as RenderBox;
                      final RenderBox overlay =
                          Overlay.of(context).context.findRenderObject()
                              as RenderBox;

                      final Offset buttonOffset = button.localToGlobal(
                        Offset.zero,
                        ancestor: overlay,
                      );
                      final Size buttonSize = button.size;

                      final RelativeRect position = RelativeRect.fromLTRB(
                        buttonOffset.dx,
                        buttonOffset.dy + buttonSize.height,
                        overlay.size.width -
                            (buttonOffset.dx + buttonSize.width),
                        overlay.size.height -
                            (buttonOffset.dy + buttonSize.height),
                      );
                      showMenu(
                        context: context,
                        position: position,
                        color: context.colorScheme.surface,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        items: [
                          PopupMenuItem(
                            onTap: () => _notifier.onOrderByChanged(
                              OrderBy.dateConnected,
                            ),
                            child: Text(
                              context.l10n.date_connected_filter_title,
                              style: AppTextStyles.button.copyWith(
                                color: state.orderBy == OrderBy.dateConnected
                                    ? context.colorScheme.primary
                                    : context.colorScheme.textPrimary,
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            onTap: () =>
                                _notifier.onOrderByChanged(OrderBy.username),
                            child: Text(
                              context.l10n.username_filter_title,
                              style: AppTextStyles.button.copyWith(
                                color: state.orderBy == OrderBy.username
                                    ? context.colorScheme.primary
                                    : context.colorScheme.textPrimary,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ).copyWith(right: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: context.colorScheme.strokeDark,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Text(
                            state.orderBy == OrderBy.dateConnected
                                ? context.l10n.date_connected_filter_title
                                : context.l10n.username_filter_title,
                            style: AppTextStyles.button.copyWith(
                              color: context.colorScheme.textSecondary,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: context.colorScheme.textSecondary,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CupertinoSlidingSegmentedControl(
                    backgroundColor: context.colorScheme.containerMedium,
                    thumbColor: context.colorScheme.surface,
                    padding: EdgeInsets.all(6),
                    groupValue: state.orderSortFormat,
                    children: {
                      OrderSortFormat.ascending: Icon(
                        Icons.arrow_upward,
                        size: 22,
                        color:
                            state.orderSortFormat == OrderSortFormat.ascending
                            ? context.colorScheme.primary
                            : context.colorScheme.textSecondary,
                      ),
                      OrderSortFormat.descending: Icon(
                        Icons.arrow_downward,
                        size: 22,
                        color:
                            state.orderSortFormat == OrderSortFormat.descending
                            ? context.colorScheme.primary
                            : context.colorScheme.textSecondary,
                      ),
                    },
                    onValueChanged: (value) {
                      if (value == null) return;
                      _notifier.onOrderSortFormatChanged(value);
                    },
                  ),
                ],
              ),

              const SizedBox(width: 24, height: 24),
              Row(
                children: [
                  OnTapScale(
                    onTap: _notifier.toggleFilter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: state.filterEnable
                              ? context.colorScheme.primary
                              : context.colorScheme.strokeDark,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.filter_alt_outlined,
                            color: state.filterEnable
                                ? context.colorScheme.primary
                                : context.colorScheme.textDisabled,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            context.l10n.common_filter,
                            style: AppTextStyles.button.copyWith(
                              color: state.filterEnable
                                  ? context.colorScheme.primary
                                  : context.colorScheme.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
