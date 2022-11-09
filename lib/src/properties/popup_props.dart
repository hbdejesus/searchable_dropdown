import 'package:flutter/material.dart';

import '../../dropdown_search.dart';

class PopupProps<T> {
  ///popup title
  final Widget title;

  ///the search box will be shown if true, hidden otherwise
  final bool showSearchBox;

  final DropdownSearchPopupItemBuilder<T> itemBuilder;

  /// object that passes all props to search field
  final TextFieldProps searchFieldProps;

  /// props for selection list view
  final ListViewProps listViewProps;

  /// scrollbar properties
  final ScrollbarProps scrollbarProps;

  /// callback executed before applying value change
  ///delay before searching, change it to Duration(milliseconds: 0)
  ///if you do not use online search
  final Duration searchDelay;

  ///called when popup is dismissed
  final VoidCallback onDismissed;

  ///custom layout for empty results
  final EmptyBuilder emptyBuilder;

  ///custom layout for loading items
  final LoadingBuilder loadingBuilder;

  ///custom layout for error
  final ErrorBuilder errorBuilder;

  ///defines if an item of the popup is enabled or not, if the item is disabled,
  ///it cannot be clicked
  final DropdownSearchPopupItemEnabled<T> disabledItemFn;

  ///popup mode
  final Mode mode;

  ///select the selected item in the menu/dialog/bottomSheet of items
  final bool showSelectedItems;

  ///true if the filter on items is applied onlie (via API/DB/...)
  final bool isFilterOnline;

  ///favorite items props
  final FavoriteItemProps<T> favoriteItemProps;

  ///dialog mode props
  final DialogProps dialogProps;

  ///BottomSheet mode props
  final BottomSheetProps bottomSheetProps;

  ///ModalBottomSheet mode props
  final ModalBottomSheetProps modalBottomSheetProps;

  ///Menu mode props
  final MenuProps menuProps;

  ///fit height depending on nb of result or keep height fix.
  final FlexFit fit;

  ///used as container to the popup widget
  ///this could be very useful if you want to add extra actions/widget to the popup
  ///the popup widget is considered as a child
  final PopupBuilder containerBuilder;

  ///popup constraints
  final BoxConstraints constraints;

  ///if true , the callbacks (onTap, onLongClick...) will be handled by the user
  final bool interceptCallBacks;

  const PopupProps._({
    this.mode = Mode.MENU,
    this.fit = FlexFit.tight,
    this.title,
    this.showSearchBox = false,
    this.bottomSheetProps = const BottomSheetProps(),
    this.dialogProps = const DialogProps(),
    this.modalBottomSheetProps = const ModalBottomSheetProps(),
    this.menuProps = const MenuProps(),
    this.searchFieldProps = const TextFieldProps(),
    this.scrollbarProps = const ScrollbarProps(),
    this.listViewProps = const ListViewProps(),
    this.favoriteItemProps = const FavoriteItemProps(),
    this.searchDelay,
    this.onDismissed,
    this.emptyBuilder,
    this.itemBuilder,
    this.errorBuilder,
    this.loadingBuilder,
    this.showSelectedItems = false,
    this.disabledItemFn,
    this.isFilterOnline = false,
    this.containerBuilder,
    this.constraints = const BoxConstraints(),
    this.interceptCallBacks = false,
  });

  const PopupProps.menu({
    this.title,
    this.fit = FlexFit.tight,
    this.showSearchBox = false,
    this.menuProps = const MenuProps(),
    this.searchFieldProps = const TextFieldProps(),
    this.scrollbarProps = const ScrollbarProps(),
    this.listViewProps = const ListViewProps(),
    this.favoriteItemProps = const FavoriteItemProps(),
    this.searchDelay,
    this.onDismissed,
    this.emptyBuilder,
    this.itemBuilder,
    this.errorBuilder,
    this.loadingBuilder,
    this.showSelectedItems = false,
    this.disabledItemFn,
    this.isFilterOnline = false,
    this.containerBuilder,
    this.constraints = const BoxConstraints(maxHeight: 350),
    this.interceptCallBacks = false,
  })  : this.mode = Mode.MENU,
        this.bottomSheetProps = const BottomSheetProps(),
        this.dialogProps = const DialogProps(),
        this.modalBottomSheetProps = const ModalBottomSheetProps();

  const PopupProps.dialog({
    this.fit = FlexFit.tight,
    this.title,
    this.showSearchBox = false,
    this.dialogProps = const DialogProps(),
    this.searchFieldProps = const TextFieldProps(),
    this.scrollbarProps = const ScrollbarProps(),
    this.listViewProps = const ListViewProps(),
    this.favoriteItemProps = const FavoriteItemProps(),
    this.searchDelay,
    this.onDismissed,
    this.emptyBuilder,
    this.itemBuilder,
    this.errorBuilder,
    this.loadingBuilder,
    this.showSelectedItems = false,
    this.disabledItemFn,
    this.isFilterOnline = false,
    this.containerBuilder,
    this.constraints = const BoxConstraints(
      minWidth: 500,
      maxWidth: 500,
      maxHeight: 600,
    ),
    this.interceptCallBacks = false,
  })  : this.mode = Mode.DIALOG,
        this.menuProps = const MenuProps(),
        this.bottomSheetProps = const BottomSheetProps(),
        this.modalBottomSheetProps = const ModalBottomSheetProps();

  const PopupProps.bottomSheet({
    this.fit = FlexFit.tight,
    this.title,
    this.showSearchBox = false,
    this.bottomSheetProps = const BottomSheetProps(),
    this.searchFieldProps = const TextFieldProps(),
    this.scrollbarProps = const ScrollbarProps(),
    this.listViewProps = const ListViewProps(),
    this.favoriteItemProps = const FavoriteItemProps(),
    this.searchDelay,
    this.onDismissed,
    this.emptyBuilder,
    this.itemBuilder,
    this.errorBuilder,
    this.loadingBuilder,
    this.showSelectedItems = false,
    this.disabledItemFn,
    this.isFilterOnline = false,
    this.containerBuilder,
    this.constraints = const BoxConstraints(maxHeight: 500),
    this.interceptCallBacks = false,
  })  : this.mode = Mode.BOTTOM_SHEET,
        this.menuProps = const MenuProps(),
        this.dialogProps = const DialogProps(),
        this.modalBottomSheetProps = const ModalBottomSheetProps();

  const PopupProps.modalBottomSheet({
    this.title,
    this.fit = FlexFit.tight,
    this.showSearchBox = false,
    this.modalBottomSheetProps = const ModalBottomSheetProps(),
    this.searchFieldProps = const TextFieldProps(),
    this.scrollbarProps = const ScrollbarProps(),
    this.listViewProps = const ListViewProps(),
    this.favoriteItemProps = const FavoriteItemProps(),
    this.searchDelay,
    this.onDismissed,
    this.emptyBuilder,
    this.itemBuilder,
    this.errorBuilder,
    this.loadingBuilder,
    this.showSelectedItems = false,
    this.disabledItemFn,
    this.isFilterOnline = false,
    this.containerBuilder,
    this.constraints = const BoxConstraints(maxHeight: 500),
    this.interceptCallBacks = false,
  })  : this.mode = Mode.MODAL_BOTTOM_SHEET,
        this.menuProps = const MenuProps(),
        this.dialogProps = const DialogProps(),
        this.bottomSheetProps = const BottomSheetProps();
}

class PopupPropsMultiSelection<T> extends PopupProps<T> {
  ///called when a new item added on Multi selection mode
  final OnItemAdded<T> onItemAdded;

  ///called when a new item added on Multi selection mode
  final OnItemRemoved<T> onItemRemoved;

  ///widget used to show checked items in multiSelection mode
  final DropdownSearchPopupItemBuilder<T> selectionWidget;

  ///widget used to validate items in multiSelection mode
  final ValidationMultiSelectionBuilder<T> validationWidgetBuilder;

  const PopupPropsMultiSelection._({
    Mode mode = Mode.MENU,
    FlexFit fit = FlexFit.tight,
    Widget title,
    bool isFilterOnline,
    DropdownSearchPopupItemBuilder<T> itemBuilder,
    DropdownSearchPopupItemEnabled<T> disabledItemFn,
    bool showSearchBox,
    TextFieldProps searchFieldProps = const TextFieldProps(),
    FavoriteItemProps favoriteItemProps = const FavoriteItemProps(),
    ModalBottomSheetProps modalBottomSheetProps = const ModalBottomSheetProps(),
    ScrollbarProps scrollbarProps = const ScrollbarProps(),
    ListViewProps listViewProps = const ListViewProps(),
    Duration searchDelay,
    VoidCallback onDismissed,
    EmptyBuilder emptyBuilder,
    ErrorBuilder errorBuilder,
    LoadingBuilder loadingBuilder,
    bool showSelectedItems,
    BottomSheetProps bottomSheetProps = const BottomSheetProps(),
    DialogProps dialogProps = const DialogProps(),
    MenuProps menuProps = const MenuProps(),
    PopupBuilder containerBuilder,
    BoxConstraints constraints = const BoxConstraints(maxHeight: 350),
    bool interceptCallBacks = false,
    this.onItemAdded,
    this.onItemRemoved,
    this.selectionWidget,
    this.validationWidgetBuilder,
  }) : super._(
          mode: mode,
          fit: fit,
          title: title,
          isFilterOnline: isFilterOnline,
          itemBuilder: itemBuilder,
          disabledItemFn: disabledItemFn,
          showSearchBox: showSearchBox,
          searchFieldProps: searchFieldProps,
          favoriteItemProps: favoriteItemProps,
          modalBottomSheetProps: modalBottomSheetProps,
          scrollbarProps: scrollbarProps,
          listViewProps: listViewProps,
          searchDelay: searchDelay,
          onDismissed: onDismissed,
          emptyBuilder: emptyBuilder,
          errorBuilder: errorBuilder,
          loadingBuilder: loadingBuilder,
          showSelectedItems: showSelectedItems,
          bottomSheetProps: bottomSheetProps,
          dialogProps: dialogProps,
          menuProps: menuProps,
          containerBuilder: containerBuilder,
          constraints: constraints,
          interceptCallBacks: interceptCallBacks,
        );

  const PopupPropsMultiSelection.menu({
    FlexFit fit = FlexFit.tight,
    Widget title,
    bool showSearchBox = false,
    TextFieldProps searchFieldProps = const TextFieldProps(),
    MenuProps menuProps = const MenuProps(),
    FavoriteItemProps favoriteItemProps = const FavoriteItemProps(),
    ScrollbarProps scrollbarProps = const ScrollbarProps(),
    ListViewProps listViewProps = const ListViewProps(),
    Duration searchDelay,
    VoidCallback onDismissed,
    EmptyBuilder emptyBuilder,
    DropdownSearchPopupItemBuilder<T> itemBuilder,
    ErrorBuilder errorBuilder,
    LoadingBuilder loadingBuilder,
    bool showSelectedItems = false,
    DropdownSearchPopupItemEnabled<T> disabledItemFn,
    bool isFilterOnline = false,
    PopupBuilder containerBuilder,
    BoxConstraints constraints = const BoxConstraints(maxHeight: 350),
    bool interceptCallBacks = false,
    this.onItemAdded,
    this.onItemRemoved,
    this.selectionWidget,
    this.validationWidgetBuilder,
  }) : super.menu(
          fit: fit,
          title: title,
          isFilterOnline: isFilterOnline,
          itemBuilder: itemBuilder,
          disabledItemFn: disabledItemFn,
          showSearchBox: showSearchBox,
          searchFieldProps: searchFieldProps,
          favoriteItemProps: favoriteItemProps,
          scrollbarProps: scrollbarProps,
          listViewProps: listViewProps,
          searchDelay: searchDelay,
          onDismissed: onDismissed,
          emptyBuilder: emptyBuilder,
          errorBuilder: errorBuilder,
          loadingBuilder: loadingBuilder,
          showSelectedItems: showSelectedItems,
          menuProps: menuProps,
          containerBuilder: containerBuilder,
          constraints: constraints,
          interceptCallBacks: interceptCallBacks,
        );

  const PopupPropsMultiSelection.dialog({
    Widget title,
    FlexFit fit = FlexFit.tight,
    bool showSearchBox = false,
    TextFieldProps searchFieldProps = const TextFieldProps(),
    ScrollbarProps scrollbarProps = const ScrollbarProps(),
    ListViewProps listViewProps = const ListViewProps(),
    FavoriteItemProps favoriteItemProps = const FavoriteItemProps(),
    DialogProps dialogProps = const DialogProps(),
    Duration searchDelay,
    VoidCallback onDismissed,
    EmptyBuilder emptyBuilder,
    DropdownSearchPopupItemBuilder<T> itemBuilder,
    ErrorBuilder errorBuilder,
    LoadingBuilder loadingBuilder,
    bool showSelectedItems = false,
    DropdownSearchPopupItemEnabled<T> disabledItemFn,
    bool isFilterOnline = false,
    PopupBuilder containerBuilder,
    BoxConstraints constraints = const BoxConstraints(
      minWidth: 500,
      maxWidth: 500,
      maxHeight: 600,
    ),
    bool interceptCallBacks = false,
    this.onItemAdded,
    this.onItemRemoved,
    this.selectionWidget,
    this.validationWidgetBuilder,
  }) : super.dialog(
          fit: fit,
          title: title,
          isFilterOnline: isFilterOnline,
          itemBuilder: itemBuilder,
          disabledItemFn: disabledItemFn,
          showSearchBox: showSearchBox,
          searchFieldProps: searchFieldProps,
          favoriteItemProps: favoriteItemProps,
          scrollbarProps: scrollbarProps,
          listViewProps: listViewProps,
          searchDelay: searchDelay,
          onDismissed: onDismissed,
          emptyBuilder: emptyBuilder,
          errorBuilder: errorBuilder,
          loadingBuilder: loadingBuilder,
          showSelectedItems: showSelectedItems,
          dialogProps: dialogProps,
          containerBuilder: containerBuilder,
          constraints: constraints,
          interceptCallBacks: interceptCallBacks,
        );

  const PopupPropsMultiSelection.bottomSheet({
    Widget title,
    FlexFit fit = FlexFit.tight,
    bool showSearchBox = false,
    TextFieldProps searchFieldProps = const TextFieldProps(),
    ListViewProps listViewProps = const ListViewProps(),
    FavoriteItemProps favoriteItemProps = const FavoriteItemProps(),
    BottomSheetProps bottomSheetProps = const BottomSheetProps(),
    ScrollbarProps scrollbarProps = const ScrollbarProps(),
    Duration searchDelay,
    VoidCallback onDismissed,
    EmptyBuilder emptyBuilder,
    DropdownSearchPopupItemBuilder<T> itemBuilder,
    ErrorBuilder errorBuilder,
    LoadingBuilder loadingBuilder,
    bool showSelectedItems = false,
    DropdownSearchPopupItemEnabled<T> disabledItemFn,
    bool isFilterOnline = false,
    PopupBuilder containerBuilder,
    BoxConstraints constraints = const BoxConstraints(maxHeight: 500),
    bool interceptCallBacks = false,
    this.onItemAdded,
    this.onItemRemoved,
    this.selectionWidget,
    this.validationWidgetBuilder,
  }) : super.bottomSheet(
          fit: fit,
          title: title,
          isFilterOnline: isFilterOnline,
          itemBuilder: itemBuilder,
          disabledItemFn: disabledItemFn,
          showSearchBox: showSearchBox,
          searchFieldProps: searchFieldProps,
          favoriteItemProps: favoriteItemProps,
          scrollbarProps: scrollbarProps,
          listViewProps: listViewProps,
          searchDelay: searchDelay,
          onDismissed: onDismissed,
          emptyBuilder: emptyBuilder,
          errorBuilder: errorBuilder,
          loadingBuilder: loadingBuilder,
          showSelectedItems: showSelectedItems,
          bottomSheetProps: bottomSheetProps,
          containerBuilder: containerBuilder,
          constraints: constraints,
          interceptCallBacks: interceptCallBacks,
        );

  const PopupPropsMultiSelection.modalBottomSheet({
    Widget title,
    bool isFilterOnline,
    FlexFit fit = FlexFit.tight,
    DropdownSearchPopupItemBuilder<T> itemBuilder,
    DropdownSearchPopupItemEnabled<T> disabledItemFn,
    bool showSearchBox,
    TextFieldProps searchFieldProps = const TextFieldProps(),
    FavoriteItemProps favoriteItemProps = const FavoriteItemProps(),
    ModalBottomSheetProps modalBottomSheetProps = const ModalBottomSheetProps(),
    ScrollbarProps scrollbarProps = const ScrollbarProps(),
    ListViewProps listViewProps = const ListViewProps(),
    Duration searchDelay,
    VoidCallback onDismissed,
    EmptyBuilder emptyBuilder,
    ErrorBuilder errorBuilder,
    LoadingBuilder loadingBuilder,
    bool showSelectedItems,
    PopupBuilder containerBuilder,
    BoxConstraints constraints = const BoxConstraints(maxHeight: 500),
    bool interceptCallBacks = false,
    this.onItemAdded,
    this.onItemRemoved,
    this.selectionWidget,
    this.validationWidgetBuilder,
  }) : super.modalBottomSheet(
          fit: fit,
          title: title,
          isFilterOnline: isFilterOnline,
          itemBuilder: itemBuilder,
          disabledItemFn: disabledItemFn,
          showSearchBox: showSearchBox,
          searchFieldProps: searchFieldProps,
          favoriteItemProps: favoriteItemProps,
          modalBottomSheetProps: modalBottomSheetProps,
          scrollbarProps: scrollbarProps,
          listViewProps: listViewProps,
          searchDelay: searchDelay,
          onDismissed: onDismissed,
          emptyBuilder: emptyBuilder,
          errorBuilder: errorBuilder,
          loadingBuilder: loadingBuilder,
          showSelectedItems: showSelectedItems,
          containerBuilder: containerBuilder,
          constraints: constraints,
          interceptCallBacks: interceptCallBacks,
        );

  PopupPropsMultiSelection.from(PopupProps<T> popupProps)
      : this._(
          title: popupProps.title,
          fit: popupProps.fit,
          favoriteItemProps: popupProps.favoriteItemProps,
          disabledItemFn: popupProps.disabledItemFn,
          emptyBuilder: popupProps.emptyBuilder,
          errorBuilder: popupProps.errorBuilder,
          isFilterOnline: popupProps.isFilterOnline,
          itemBuilder: popupProps.itemBuilder,
          listViewProps: popupProps.listViewProps,
          loadingBuilder: popupProps.loadingBuilder,
          modalBottomSheetProps: popupProps.modalBottomSheetProps,
          onDismissed: popupProps.onDismissed,
          scrollbarProps: popupProps.scrollbarProps,
          searchDelay: popupProps.searchDelay,
          searchFieldProps: popupProps.searchFieldProps,
          showSearchBox: popupProps.showSearchBox,
          showSelectedItems: popupProps.showSelectedItems,
          mode: popupProps.mode,
          bottomSheetProps: popupProps.bottomSheetProps,
          dialogProps: popupProps.dialogProps,
          menuProps: popupProps.menuProps,
          containerBuilder: popupProps.containerBuilder,
          constraints: popupProps.constraints,
          interceptCallBacks: popupProps.interceptCallBacks,
          onItemAdded: null,
          onItemRemoved: null,
          selectionWidget: null,
          validationWidgetBuilder: null,
        );
}
