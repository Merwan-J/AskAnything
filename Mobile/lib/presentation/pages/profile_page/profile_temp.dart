import 'package:askanything/application/user/user_bloc.dart';
import 'package:askanything/application/user/user_event.dart';
import 'package:askanything/application/user/user_state.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/question/question_repository.dart';
import 'package:askanything/infrastructure/user/user_repository.dart';
import 'package:askanything/presentation/pages/home/following_temp.dart';
import 'package:askanything/presentation/pages/home/for_you.dart';
import 'package:askanything/util/Theme/custom_theme.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  bool get wantKeepAlive => true;

  final tabScreens = [
    ForYou(key: PageStorageKey<String>('ForYou')),
    Following(key: PageStorageKey<String>('Following'))
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
                .add(const GetUserById('6448f5ead561de32dc337d5b'));
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LoadedUser) {
            return _buildBody(context, state.user);
          } else if (state is UserError) {
            return const Center(child: Text('Error'));
          } else {
            return const Center(child: Text('unexpected error'));
          }
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, User user) {
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
              Expanded(
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '${user.followings.length} following',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .fontSize),
                            ),
                            Icon(
                              Icons.circle,
                              color: Theme.of(context).primaryColor,
                              size: 10,
                            ),
                            Text(
                              "${user.followers.length} followers",
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .fontSize),
                            )
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // your button press logic here
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          child: Text('Follow'),
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
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
                padding: EdgeInsets.only(bottom: 16),
                child: Text('Questions',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
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
                children: tabScreens,
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
