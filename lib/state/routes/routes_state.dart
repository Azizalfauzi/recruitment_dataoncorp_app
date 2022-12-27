part of 'routes_cubit.dart';

abstract class RoutesState extends Equatable {
  const RoutesState();
  @override
  List<Object> get props => [];
}

class RoutesInitial extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesLogin extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesHome extends RoutesState {
  @override
  List<Object> get props => [];
}
class RoutesWeb extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesDetail extends RoutesState {
  final String userName;
  final String profileName;
  const RoutesDetail(this.userName, this.profileName);
  @override
  List<Object> get props => [
        userName,
        profileName,
      ];
}
