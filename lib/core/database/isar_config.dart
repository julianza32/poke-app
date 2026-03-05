import 'package:global66/features/pokemon/domain/entities/pokemon.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

Future<void> openIsar() async {
  final dir = await getApplicationDocumentsDirectory();

  try {
    Isar.openSync(
      [PokemonItemIsarSchema],
      directory: dir.path,
    );
  } catch (e) {
    Isar.openSync([PokemonItemIsarSchema],
        directory: dir.path, maxSizeMiB: 256);
  }
}

Isar getIsarInstance() {
  final isar = Isar.getInstance();
  if (isar == null) {
    throw Exception('Isar is not initialized');
  }
  return isar;
}
