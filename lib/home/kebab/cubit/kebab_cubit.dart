import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'kebab_state.dart';

class KebabCubit extends Cubit<KebabState> {
  KebabCubit() : super(KebabState(documents: const []));
}
