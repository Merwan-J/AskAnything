import 'package:askanything/application/follow_unfollow/follow_bloc.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_repository.dart';
import 'package:askanything/presentation/base/app_bar.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FollowersFollowingPage extends StatefulWidget {
  const FollowersFollowingPage({Key? key, required this.user})
      : super(key: key);
  final User user;

  @override
  _FollowersFollowingPageState createState() => _FollowersFollowingPageState();
}

class _FollowersFollowingPageState extends State<FollowersFollowingPage>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;
  final PageStorageKey<String> _followerKey =
      PageStorageKey<String>('followerPage');
  final PageStorageKey<String> _followingKey =
      PageStorageKey<String>('followingPage');

  String searchQuery = "";
  TextEditingController _searchController = TextEditingController();
  String currentUser = '6448f5ead561de32dc337d5b';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    final List<AuthorDto> followers = widget.user.followers;
    final List<AuthorDto> followings = widget.user.followings;
  }

  @override
  void dispose() {
    _searchController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) =>
          FollowBloc(RepositoryProvider.of<UserRepository>(context)),
      child: Scaffold(
        appBar: CustomAppBar(title: 'Followers and Following'),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        labelStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        tabs: [
                          Tab(
                            text: 'Followers',
                          ),
                          Tab(
                            text: 'Following',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40.h,
                              child: Container(
                                margin: EdgeInsets.only(left: 6.h),
                                child: TextField(
                                  controller: _searchController,
                                  onChanged: (value) {
                                    setState(() {
                                      searchQuery = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 13.sp,
                                    ),
                                    filled: true,
                                    hintText: 'Search here',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Container(
                            padding: EdgeInsets.all(10.h),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF735C),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [_buildFollowerList(), _buildFollowingList()],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFollowerList() {
    final filteredFollowers = widget.user.followers
        .where((follower) =>
            follower.name.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
    return ListView.builder(
      key: _followerKey,
      itemCount: filteredFollowers.length,
      itemBuilder: (context, index) {
        final follower = filteredFollowers[index];
        return Container(
          margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.h),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
          child: ListTile(
            leading: Container(
              margin: EdgeInsets.fromLTRB(1.h, 0, 1.h, 5.h),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user 2.png'),
                radius: 25.h,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  follower.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.trophy,
                      color: Theme.of(context).primaryColor,
                      size: 15.sp,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '364', // Replace with actual reputation number
                      style: TextStyle(
                        color: CustomColor.primaryColor,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFollowingList() {
    final filteredFollowing = widget.user.followings
        .where(
            (following) => following.name.contains(searchQuery.toLowerCase()))
        .toList();

    return ListView.builder(
      key: _followingKey,
      itemCount: filteredFollowing.length,
      itemBuilder: (context, index) {
        final following = filteredFollowing[index];
        return Container(
          margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.h),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
          child: ListTile(
            leading: Container(
              margin: EdgeInsets.fromLTRB(1.h, 0, 1.h, 5.h),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user 2.png'),
                radius: 25.h,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  following.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.trophy,
                      color: Theme.of(context).primaryColor,
                      size: 15.sp,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '364',
                      style: TextStyle(
                        color: CustomColor.primaryColor,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.h),
                ),
              ),
              child: Text('Following',
                  style: TextStyle(
                    fontSize: 12.sp,
                  )),
            ),
          ),
        );
      },
    );
  }
}
