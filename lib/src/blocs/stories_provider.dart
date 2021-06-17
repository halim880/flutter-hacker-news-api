

import 'package:flutter/cupertino.dart';
import 'package:hacker_news/src/blocs/stories_bloc.dart';
export 'stories_bloc.dart';


class StoriesProvider extends InheritedWidget {

  final StoriesBloc bloc;

  StoriesProvider({Key key, Widget child})
    :bloc = StoriesBloc(),
    super(key: key, child:child);

    @override
    bool updateShouldNotify(StoriesProvider oldWidget) {
      return true;
    }

  static StoriesBloc of(BuildContext context){
    return (context.dependOnInheritedWidgetOfExactType() 
    as StoriesProvider).bloc;
  }
}


class Stories extends InheritedWidget {
  Stories({Key key, this.child}) : super(key: key, child: child);

  final Widget child;

  static Stories of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Stories>();
  }

  @override
  bool updateShouldNotify(Stories oldWidget) {
    return true;
  }
}