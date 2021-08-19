import 'package:bloc/bloc.dart';
import 'package:chatbot/models/models.dart';
import 'package:chatbot/services/services.dart';
import 'package:equatable/equatable.dart';

part 'kuis_state.dart';

class KuisCubit extends Cubit<KuisState> {
  KuisCubit() : super(KuisInitial());

  Future<void> getKuises() async {
    ApiReturnValue<List<Kuis>> result = await KuisServices.getKuises();

    if (result.value != null) {
      emit(KuisLoaded(result.value));
    } else {
      emit(KuisLoadingFailed(result.message));
    }
  }
}
