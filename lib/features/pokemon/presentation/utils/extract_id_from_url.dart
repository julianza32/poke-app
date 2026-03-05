// funcion para extraer el id de un pokemon de su url
int? extractIdFromUrl(String? url) {
  if (url == null || url.isEmpty) return null;
  try {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.isEmpty) return null;
    final idStr = segments.last;
    return int.tryParse(idStr);
  } catch (_) {
    return null;
  }
}
