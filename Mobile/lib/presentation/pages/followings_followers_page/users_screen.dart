import 'package:askanything/application/follow_unfollow/follow_bloc.dart';
import 'package:askanything/application/user/user_bloc.dart';
import 'package:askanything/application/user/user_event.dart';
import 'package:askanything/application/user/user_state.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/question/question_repository.dart';
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
      const PageStorageKey<String>('followerPage');
  final PageStorageKey<String> _followingKey =
      const PageStorageKey<String>('followingPage');

  String searchQuery = "";
  TextEditingController _searchController = TextEditingController();
  String currentUser = '6448f5ead561de32dc337d5b';

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
    return BlocProvider(
      create: (context) => UserBloc(
          RepositoryProvider.of<UserRepository>(context),
          RepositoryProvider.of<QuestionRepository>(context)),
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Followers and Following'),
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
                          const Tab(
                            text: 'Followers',
                          ),
                          const Tab(
                            text: 'Following',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
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
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is Initial || state is LoadedFollowings) {
          context.read<UserBloc>().add(GetFollowers(widget.user.id));
          return const Center(child: CircularProgressIndicator());
        } else if (state is Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is LoadedFollowers) {
          print(state);
          if (state.followers.length == 0) {
            return const Center(child: Text("No Follwers"));
          } else {
            return ListView.builder(
              key: _followerKey,
              itemCount: state.followers.length,
              itemBuilder: (context, index) {
                final follower = state.followers[index];
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
                        backgroundImage:
                            const AssetImage('assets/images/user 2.png'),
                        radius: 25.h,
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          follower['name'],
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
                              follower['reputation']
                                  .toString(), // Replace with actual reputation number
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
        } else {
          print(state);
          return const Center(
            child: Text("error"),
          );
        }
      },
    );
  }

  Widget _buildFollowingList() {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is Initial || state is LoadedFollowers) {
          context.read<UserBloc>().add(GetFollowings(widget.user.id));
          return const Center(child: CircularProgressIndicator());
        } else if (state is Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is UserError) {
          return const Center(child: Text("error"));
        } else if (state is LoadedFollowings) {
          print(widget.user.id);
          print(state);
          if (state.followings.length == 0) {
            return const Center(child: Text("No Followings"));
          } else {
            return ListView.builder(
              key: _followingKey,
              itemCount: state.followings.length,
              itemBuilder: (context, index) {
                final following = state.followings[index];
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
                        backgroundImage:
                            const AssetImage('assets/images/user 2.png'),
                        radius: 25.h,
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          following['name'],
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
                              following['reputation']
                                  .toString(), // Replace with actual reputation number
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
        } else {
          print(state);
          return const Center(child: Text("unexpected"));
        }
      },
    );
  }
}
