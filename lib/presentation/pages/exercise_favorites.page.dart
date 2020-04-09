import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/models/exercise.dart';
import '../../domain/models/user_settings.dart';
import '../../domain/repositories/i_hive_facade.dart';
import '../router/routes.dart';
import '../theme/colors.dart';
import '../widgets/items_exercise.dart';
import '../widgets/lists_empty_feedback.dart';

class ExerciseFavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Favorites'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add),
                color: AppColors.greyLight,
                onPressed: () =>
                    Navigator.pushNamed(context, FluroRouter.exerciseListLink))
          ],
        ),
        body: Container(
            child: Column(children: <Widget>[
          Expanded(
            child: ValueListenableBuilder(
                valueListenable: IHiveFacade.userSettingsBox
                    .listenable(keys: [UserSettings.favoriteExercises]),
                builder: (context, Box box, widget) {
                  List<String> favorites =
                      box.get(UserSettings.favoriteExercises);
                  return favorites.length > 0
                      //= Favorite list items
                      ? ListView(
                          children: favorites.map((key) {
                          Exercise exercise = IHiveFacade.exercisesBox.get(key);
                          return Container(
                            child: ExerciseItem(
                                key: Key('favoritesList:$key'),
                                exerciseId: key,
                                exercise: exercise),
                          );
                        }).toList())
                      //= Favorite empty list feedback widget
                      : emptyListFeedbackFavorites;
                }),
          ),
        ])));
  }
}