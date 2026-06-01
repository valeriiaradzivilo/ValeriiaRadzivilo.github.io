import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/general_info_repository.dart';
import '../data/models/general_info_model.dart';

class GeneralInfoCubit extends Cubit<GeneralInfoModel> {
  GeneralInfoCubit(GeneralInfoRepository repository)
      : super(repository.getInfo());
}
