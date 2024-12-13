import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardNewOrdersPageState()) {
    on<DashboardEvent>((event, emit) {
      switch (event) {
        case DashboardNewOrdersPageEvent():
        emit(DashboardNewOrdersPageState());
        break;

        case DashboardInProgressOrdersPageEvent():
        emit(DashboardInProgressOrdersPageState());
        break;

        case DashboardOnTheWayOrdersPageEvent():
        emit(DashboardOnTheWayOrdersPageState());
        break;

      }
    });
  }
}
