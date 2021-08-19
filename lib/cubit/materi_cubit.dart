import 'package:bloc/bloc.dart';
import 'package:chatbot/models/models.dart';
import 'package:chatbot/services/services.dart';
import 'package:equatable/equatable.dart';

part 'materi_state.dart';

class MateriCubit extends Cubit<MateriState> {
  MateriCubit() : super(MateriInitial());

  Future<void> getMateries() async {
    ApiReturnValue<List<Materi>> result = await MateriServices.getMateries();

    if (result.value != null) {
      emit(MateriLoaded(result.value));
    } else {
      emit(MateriLoadingFailed(result.message));
    }
  }
}
