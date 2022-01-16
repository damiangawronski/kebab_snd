part of 'kebab_cubit.dart';

@immutable
class KebabState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;
  final bool isLoading;
  final String errorMessage;

  const KebabState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
