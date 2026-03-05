import 'package:flutter/material.dart';
import 'package:global66/core/localizations/app_localizations.dart';
import 'package:global66/core/localizations/localization_helper.dart';

class FilterPokemonOrganism extends StatefulWidget {
  final List<String> types;
  final List<String> initialSelected;
  final void Function(List<String> selected)? onApply;
  final VoidCallback? onCancel;

  const FilterPokemonOrganism({
    super.key,
    required this.types,
    this.initialSelected = const [],
    this.onApply,
    this.onCancel,
  });

  @override
  State<FilterPokemonOrganism> createState() => _FilterPokemonOrganismState();
}

class _FilterPokemonOrganismState extends State<FilterPokemonOrganism> {
  late Set<String> _selected;
  bool _isExpanded = true;

  @override
  void initState() {
    super.initState();
    _selected = Set.from(widget.initialSelected);
  }

  void _toggle(String type) {
    setState(() {
      if (_selected.contains(type)) {
        _selected.remove(type);
      } else {
        _selected.add(type);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: widget.onCancel ?? () => Navigator.of(context).pop(),
                child: const Icon(Icons.close, size: 24),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 16),
           Text(
            AppLocalizations.of(context)!.filterByPreferences,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => setState(() => _isExpanded = !_isExpanded),
            child: Row(
              children: [
                 Text(
                  AppLocalizations.of(context)!.type,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Icon(
                  _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ],
            ),
          ),
          const Divider(height: 24),
          if (_isExpanded)
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.types.length,
                itemBuilder: (context, index) {
                  final type = widget.types[index];
                  final isChecked = _selected.contains(type);
                  return InkWell(
                    onTap: () => _toggle(type),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              LocalizationHelper.getPokemonType(context, type),
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          Checkbox(
                            value: isChecked,
                            onChanged: (_) => _toggle(type),
                            activeColor: const Color(0xFF2F56C8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                widget.onApply?.call(_selected.toList());
                Navigator.of(context).pop(_selected.toList());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2F56C8),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child:  Text(
                AppLocalizations.of(context)!.apply,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: widget.onCancel ?? () => Navigator.of(context).pop(),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
                side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Cancelar',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

}
