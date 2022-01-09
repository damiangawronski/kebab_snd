part of 'kebab_cubit.dart';

@immutable
class KebabState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;

  KebabState({required this.documents});
}
