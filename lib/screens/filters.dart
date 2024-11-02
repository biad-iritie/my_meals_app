import 'package:flutter/material.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({
    super.key,
    // required this.currentFilters
  });

  // final Map<Filter, bool> currentFilters;
//   @override
//   ConsumerState<FiltersScreen> createState() => _FiltersScreenState();
// }

// class _FiltersScreenState extends ConsumerState<FiltersScreen> {
//   var _glutenFreeFiltersSet = false;
//   var _lactoseFreeFiltersSet = false;
//   var _vegetarianFreeFiltersSet = false;
//   var _veganFreeFiltersSet = false;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     final activeFilters = ref.read(filtersProveider);
//     _glutenFreeFiltersSet = activeFilters[Filter.glutenFree]!;
//     _lactoseFreeFiltersSet = activeFilters[Filter.lactoseFree]!;
//     _vegetarianFreeFiltersSet = activeFilters[Filter.vegetarian]!;
//     _veganFreeFiltersSet = activeFilters[Filter.vegan]!;
//   }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProveider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your filters"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (isChecked) {
              // setState(() {
              //   _glutenFreeFiltersSet = isChecked;
              // });
              ref
                  .read(filtersProveider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
            title: Text(
              "Gluten-free",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text("Only include gluten-free meals.",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface)),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.lactoseFree]!,
            onChanged: (isChecked) {
              // setState(() {
              //   _glutenFreeFiltersSet = isChecked;
              // });
              ref
                  .read(filtersProveider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
            title: Text(
              "Lactose-free",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text("Only include lactose-free meals.",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface)),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (isChecked) {
              // setState(() {
              //   _glutenFreeFiltersSet = isChecked;
              // });
              ref
                  .read(filtersProveider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
            title: Text(
              "Vegetarian-free",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text("Only include vegetarian-free meals.",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface)),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegan]!,
            onChanged: (isChecked) {
              // setState(() {
              //   _glutenFreeFiltersSet = isChecked;
              // });
              ref
                  .read(filtersProveider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
            title: Text(
              "Vegan-free",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text("Only include vegan-free meals.",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface)),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}
