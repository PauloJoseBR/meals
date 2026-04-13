import 'package:flutter/material.dart';
import 'package:meals/screens/tabs.dart';
import 'package:meals/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const String id = 'filter_screen';

  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _veganFilterSet = false;
  var _vegetarianFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Filters')),
      drawer: MainDrawer(
        onSelectScreen: (identifier) {
          Navigator.of(context).pop();
          if (identifier == 'meals') {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => const TabsScreen()));
          }
        },
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (newValue) {
              setState(() {
                _glutenFreeFilterSet = newValue;
              });
            },
            title: Text(
              'Gluten-free',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            subtitle: Text(
              'Only include gluten-free meals.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            activeThumbColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _lactoseFreeFilterSet,
            onChanged: (newValue) {
              setState(() {
                _lactoseFreeFilterSet = newValue;
              });
            },
            title: Text(
              'Lactose-free',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            subtitle: Text(
              'Only include lactose-free meals.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            activeThumbColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _vegetarianFilterSet,
            onChanged: (newValue) {
              setState(() {
                _vegetarianFilterSet = newValue;
              });
            },
            title: Text(
              'Vegetarian',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            subtitle: Text(
              'Only include vegetarian meals.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            activeThumbColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: _veganFilterSet,
            onChanged: (newValue) {
              setState(() {
                _veganFilterSet = newValue;
              });
            },
            title: Text(
              'Vegan',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            subtitle: Text(
              'Only include vegan meals.',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            activeThumbColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}
