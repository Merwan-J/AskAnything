import 'package:askanything/presentation/base/app_bar.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FollowersFollowingPage extends StatefulWidget {
  final bool isAdminProfile;

  const FollowersFollowingPage({Key? key, this.isAdminProfile = false})
      : super(key: key);

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
  final PageStorageKey<String> _allKey = PageStorageKey<String>('allPage');
  final PageStorageKey<String> _adminKey = PageStorageKey<String>('adminPage');

  final List<String> followers = [
    "User 1",
    "User 2",
    "User 3",
    "User 4",
    "User 5",
    "User 5",
    "User 6",
    "User 7",
    "User 8",
    "User 9",
    "User 10",
    "User 5",
    "User 6",
    "User 7",
    "User 8",
    "User 9",
    "User 10",
  ];

  final List<String> following = [
    "User 5",
    "User 6",
    "User 7",
    "User 8",
    "User 9",
    "User 10",
    "User 5",
    "User 6",
    "User 7",
    "User 8",
    "User 9",
    "User 10",
    "User 5",
    "User 6",
    "User 7",
    "User 8",
    "User 9",
    "User 10",
  ];

  final List<String> all = [
    "User 1",
    "User 2",
    "User 3",
    "User 4",
    "User 5",
    "User 6",
    "User 7",
    "User 8",
    "User 9",
    "User 10",
    "User 5",
    "User 6",
    "User 7",
    "User 8",
    "User 9",
    "User 10",
  ];

  final List<String> admin = [
    "User 6",
    "User 7",
    "User 8",
    "User 9",
    "User 10",
  ];
  // late TabController _tabController;

  String searchQuery = "";
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
    return Scaffold(
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
                          text: widget.isAdminProfile ? 'All' : 'Followers',
                        ),
                        Tab(
                          text: widget.isAdminProfile ? 'Admin' : 'Following',
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
                      children: [
                        if (!widget.isAdminProfile)
                          _buildFollowerList()
                        else
                          _buildAllList(),
                        if (!widget.isAdminProfile)
                          _buildFollowingList()
                        else
                          _buildAdminList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFollowerList() {
    final filteredFollowers = followers
        .where((follower) =>
            follower.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return ListView.builder(
      key: _followerKey,
      itemCount: filteredFollowers.length,
      itemBuilder: (context, index) {
        final follower = filteredFollowers[index];
        final isFollowing = following.contains(follower);
        return Container(
          margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.h),
          decoration: BoxDecoration(
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
                  follower,
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
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: isFollowing && !widget.isAdminProfile
                    ? Colors.blueGrey[700]
                    : CustomColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.h),
                ),
              ),
              child: Text(
                isFollowing ? 'Following' : 'Follow',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAllList() {
    final filteredAllUsers = all
        .where(
            (users) => users.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return ListView.builder(
      key: _allKey,
      itemCount: filteredAllUsers.length,
      itemBuilder: (context, index) {
        final user = filteredAllUsers[index];
        final isAdmin = admin.contains(user);
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.h),
          decoration: BoxDecoration(
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
                  user,
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
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary:
                    isAdmin ? Colors.blueGrey[700] : CustomColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.h),
                ),
              ),
              child: Text(
                isAdmin ? 'Demote' : 'Promote',
                style: TextStyle(
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFollowingList() {
    final filteredFollowing = following
        .where((user) => user.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return ListView.builder(
      key: _followingKey,
      itemCount: filteredFollowing.length,
      itemBuilder: (context, index) {
        final user = filteredFollowing[index];
        return Container(
          margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.h),
          decoration: BoxDecoration(
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
                  user,
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

  Widget _buildAdminList() {
    final filteredAdmin = admin
        .where((user) => user.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return ListView.builder(
      key: _adminKey,
      itemCount: filteredAdmin.length,
      itemBuilder: (context, index) {
        final user = filteredAdmin[index];
        return Container(
          margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.h),
          decoration: BoxDecoration(
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
                  user,
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
              child: Text('Demote',
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
