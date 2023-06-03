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

class AdminUsers extends StatefulWidget {
  const AdminUsers({super.key});

  @override
  State<AdminUsers> createState() => _AdminUsersState();
}

class _AdminUsersState extends State<AdminUsers>
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
        appBar: CustomAppBar(title: 'Users'),
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
                            text: 'All Users',
                          ),
                          Tab(
                            text: 'Admin Users',
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
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is Initial || state is LoadedAdminUsers) {
          BlocProvider.of<UserBloc>(context).add(GetAllUsers());
          return Center(child: CircularProgressIndicator());
        } else if (state is Loading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is LoadedAllUsers) {
          if (state.users.length == 0) {
            return Center(child: Text("No Users"));
          } else {
            return ListView.builder(
              key: _followerKey,
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                final user = state.users[index];
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
                          user['name'],
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
                              user['reputation']
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
                      onPressed: () {
                        if (user['role'] == 'admin') {
                          context.read<UserBloc>().add(DemoteUser(user['_id']));
                        } else {
                          context
                              .read<UserBloc>()
                              .add(PromoteUser(user['_id']));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: user['role'] == 'admin'
                            ? Theme.of(context).secondaryHeaderColor
                            : Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.h),
                        ),
                      ),
                      child:
                          Text(user['role'] == 'admin' ? 'Demote' : 'Promote',
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
          return Center(
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
        if (state is Initial || state is LoadedAllUsers) {
          BlocProvider.of<UserBloc>(context).add(GetAdminUsers());
          return Center(child: CircularProgressIndicator());
        } else if (state is Loading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is UserError) {
          return Center(child: Text("error"));
        } else if (state is LoadedAdminUsers) {
          if (state.users.length == 0) {
            return Center(child: Text("No Admin Users"));
          } else {
            return ListView.builder(
              key: _followingKey,
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                final user = state.users[index];
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
                          user['name'],
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
                              user['reputation']
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
                      onPressed: () {
                        if (user['role'] == 'admin') {
                          context.read<UserBloc>().add(DemoteUser(user['_id']));
                        } else {
                          context
                              .read<UserBloc>()
                              .add(PromoteUser(user['_id']));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.h),
                        ),
                      ),
                      child:
                          Text(user['role'] == 'admin' ? 'Demote' : 'Promote',
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
          return Center(child: Text("unexpected"));
        }
      },
    );
  }
}
