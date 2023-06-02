import 'dart:convert';

import 'package:askanything/application/follow_unfollow/follow_bloc.dart';
import 'package:askanything/application/follow_unfollow/follow_state.dart';
import 'package:askanything/application/follow_unfollow/follow_event.dart';
import 'package:askanything/application/user/user_bloc.dart';
import 'package:askanything/application/user/user_event.dart';
import 'package:askanything/application/user/user_state.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/answer/answer_dto.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';
import 'package:askanything/infrastructure/question/question_repository.dart';
import 'package:askanything/infrastructure/user/user_repository.dart';
import 'package:askanything/application/profile/bloc/profile_bloc.dart';
import 'package:askanything/application/profile/bloc/profile_state.dart';
import 'package:askanything/domain/profile/profile.dart';
import 'package:askanything/infrastructure/profile/profile_repository.dart';
import 'package:askanything/presentation/pages/home/following_temp.dart';
import 'package:askanything/presentation/pages/home/for_you.dart';
import 'package:askanything/presentation/widgets/answer.dart';
import 'package:askanything/presentation/widgets/question.dart';
import 'package:askanything/presentation/pages/update_profile/update_profile_screen.dart';
import 'package:askanything/presentation/routes/routes_dart.dart';
import 'package:askanything/util/Theme/custom_theme.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../routes/routes_dart.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final TabController _tabController;
  final user1 = 1;
  final user2 = 2;
  final selected = 2;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  bool get wantKeepAlive => true;

  final tabScreens = [
    const ForYou(key: PageStorageKey<String>('ForYou')),
    const Following(key: PageStorageKey<String>('Following'))
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocProvider(
      create: (context) => UserBloc(
          RepositoryProvider.of<UserRepository>(context),
          RepositoryProvider.of<QuestionRepository>(context)),
      child: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is Initial) {
            BlocProvider.of<UserBloc>(context)
                .add(const GetUserById('644a7a97dd0ade9f826deeda'));
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LoadedUser) {
            return _buildBody(context, state.user);
          } else {
            return const Center(child: Text('unexpected error'));
          }
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, User checkUser) {
    final String authenticatedUser = '644a7a97dd0ade9f826deeda';
    User user = checkUser;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/user 3.jpg',
                ),
                radius: 60,
              ),
              BlocProvider(
                create: (context) =>
                    FollowBloc(RepositoryProvider.of<UserRepository>(context)),
                child: BlocConsumer<FollowBloc, FollowState>(
                  listener: (context, state) {
                    // TODO: implement listener
                    if (state is FollowSuccess) {
                      user = state.user;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('You are now Following ${user.name}'),
                        duration: const Duration(seconds: 1),
                      ));
                    }

                    if (state is UnFollowSuccess) {
                      user = state.user;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('You have unfollowed ${user.name}'),
                        duration: const Duration(seconds: 1),
                      ));
                    }

                    if (state is FollowError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Error Following ${user.name}'),
                        duration: const Duration(seconds: 1),
                      ));
                    }

                    if (state is UnFollowError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Error Unfollowing ${user.name}'),
                        duration: const Duration(seconds: 1),
                      ));
                    }
                  },
                  builder: (context, state) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  user.name,
                                  style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .fontSize),
                                ),
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.trophy,
                                        color: Theme.of(context).primaryColor,
                                        size: 20),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(user.reputation.toString(),
                                        style: TextStyle(
                                            fontSize: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .fontSize))
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      '${user.followings.length} following',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .color,
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .fontSize),
                                    ),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Theme.of(context).primaryColor,
                                    size: 10,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "${user.followers.length} followers",
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .color,
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .fontSize,
                                      ),
                                    ),
                                  )
                                ]),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  // your button press logic here
                                  if (authenticatedUser == user.id) {
                                    context.push(Routes.EDITPROFILE);
                                    //
                                  } else if (user.followers
                                      .contains(authenticatedUser)) {
                                    BlocProvider.of<FollowBloc>(context).add(
                                        UnfollowUserEvent(
                                            authenticatedUser, user.id));
                                  } else {
                                    BlocProvider.of<FollowBloc>(context).add(
                                        FollowUserEvent(
                                            authenticatedUser, user.id));
                                  }
                                },
                                style: ButtonStyle(
                                  elevation:
                                      MaterialStateProperty.all<double>(0),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 36),
                                  child: authenticatedUser == user.id
                                      ? const Text('Edit')
                                      : user.followers
                                              .contains(authenticatedUser)
                                          ? const Text('Unfollow')
                                          : const Text('Follow'),
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          TabBar(
            controller: _tabController,
            indicatorWeight: 4,
            // isScrollable: true,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text('Questions',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text('Answers',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize)),
              ),
            ],
          ),
          Expanded(
            child: PageStorage(
              bucket: PageStorageBucket(),
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      // shrinkWrap: true,
                      // scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: QuestionW(
                              question: user.questionIds[index].toQuestion()),
                        );
                      },
                      itemCount: user.questionIds.length),
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      // shrinkWrap: true,
                      // scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child:
                              AnswerW(answer: user.answerIds[index].toAnswer()),
                        );
                      },
                      itemCount: user.answerIds.length)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
