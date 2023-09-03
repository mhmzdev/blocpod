part of 'bottom_bar.dart';

List<_ItemModel> get _items => [
      _ItemModel(
        active: Icon(
          Icons.home,
          color: AppTheme.pink,
          size: 10.un(),
        ),
        inActive: Icon(
          Icons.home,
          color: AppTheme.grey,
          size: 10.un(),
        ),
        label: 'Home',
        path: AppRoutes.home,
      ),
      _ItemModel(
        active: Icon(
          Icons.book,
          color: AppTheme.pink,
          size: 10.un(),
        ),
        inActive: Icon(
          Icons.book,
          color: AppTheme.grey,
          size: 10.un(),
        ),
        label: 'Bookmarks',
        path: AppRoutes.favorite,
      ),
      _ItemModel(
        active: Icon(
          Icons.search,
          color: AppTheme.pink,
          size: 10.un(),
        ),
        inActive: Icon(
          Icons.search,
          color: AppTheme.grey,
          size: 10.un(),
        ),
        label: 'Search',
        path: AppRoutes.favorite,
      ),
      _ItemModel(
        active: Icon(
          Icons.person,
          color: AppTheme.pink,
          size: 10.un(),
        ),
        inActive: Icon(
          Icons.person,
          color: AppTheme.grey,
          size: 10.un(),
        ),
        label: 'Profile',
        path: AppRoutes.home,
      ),
    ];
