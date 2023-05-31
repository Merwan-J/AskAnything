import 'package:askanything/application/profile/bloc/profile_bloc.dart';
import 'package:askanything/application/profile/bloc/profile_state.dart';
import 'package:askanything/domain/profile/profile.dart';
import 'package:askanything/infrastructure/profile/profile_repository.dart';
import 'package:askanything/presentation/pages/home/following_temp.dart';
import 'package:askanything/presentation/pages/home/for_you.dart';
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
    ForYou(key: PageStorageKey<String>('ForYou')),
    Following(key: PageStorageKey<String>('Following'))
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              if (state is LoadingProfileState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Loading...'),
                  ),
                );
              } else if (state is LoadedProfileState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Profile Loaded'),
                  ),
                );
              } else if (state is ErrorProfileState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Error Loading Profile'),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Row(
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
                              state is LoadedProfileState
                                  ? Text(
                                      state.profile.fold(
                                        (failure) => "John Doe",
                                        (profile) => profile.name,
                                      ),
                                      style: TextStyle(
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .fontSize),
                                    )
                                  : Text(
                                      "John Doe ",
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
                                  Text('124',
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
                                  "25 following",
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
                                  "12 followers",
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 36),
                              child: selected != user2
                                  ? Text('Follow')
                                  : ElevatedButton(
                                      onPressed: () =>
                                          context.push(Routes.EDITPROFILE),
                                      //     Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) =>
                                      //         BlocProvider.value(
                                      //       value:
                                      //           BlocProvider.of<ProfileBloc>(
                                      //               context),
                                      //       child: UpdateProfileScreen(),
                                      //     ),
                                      //   ),
                                      // ),
                                      child: Text('Update'),
                                    ),
                            ),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all<double>(0),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
              );
            },
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
