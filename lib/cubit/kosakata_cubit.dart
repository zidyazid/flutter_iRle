import 'package:bloc/bloc.dart';
import 'package:chatbot/models/models.dart';
import 'package:chatbot/services/services.dart';
import 'package:equatable/equatable.dart';

part 'kosakata_state.dart';

class KosakataCubit extends Cubit<KosakataState> {
  KosakataCubit() : super(KosakataInitial());

  Future<void> getKosaKata() async {
    ApiReturnValue<List<KosaKata>> result =
        await KosaKataServices.getKosaKata();

    if (result.value != null) {
      emit(KosakataLoaded(result.value));
    } else {
      emit(KosakataLoadingFailed(result.message));
    }
  }

  Future<bool> updateKosaKata(KosaKata kosakata) async {
    ApiReturnValue<KosaKata> result =
        await KosaKataServices.updateStatusKosaKata(kosakata);

    if (result.value != null) {
      emit(KosakataLoaded((state as KosakataLoaded).kosakata + [result.value]));
      return true;
    } else {
      return false;
    }
  }
}
