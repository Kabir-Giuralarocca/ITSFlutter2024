import 'package:corso_flutter_2024/ui/bloc/theme.cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FlutterPlayground')),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Lorem Ipsum',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: 8),
            Text(
              'Fugiat aliqua cupidatat consectetur ipsum id consectetur magna labore occaecat anim consequat. Deserunt adipisicing eiusmod magna esse deserunt ullamco cillum aliquip enim. Labore officia cillum consequat velit voluptate. Proident fugiat dolor fugiat non ullamco laboris incididunt.',
            ),
            SizedBox(height: 36),
            FilledButton(onPressed: () {}, child: Text('Button')),
            SizedBox(height: 8),
            OutlinedButton(onPressed: () {}, child: Text('Button')),
            SizedBox(height: 36),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  Radio.adaptive(
                    value: ThemeMode.light,
                    groupValue: context.watch<ThemeCubit>().state,
                    onChanged: (value) {
                      context.read<ThemeCubit>().setTheme(value ?? ThemeMode.light);
                    },
                  ),
                  Icon(Icons.light_mode_rounded),
                  Text('Light'),
                ]),
                Column(children: [
                  Radio.adaptive(
                    value: ThemeMode.dark,
                    groupValue: context.watch<ThemeCubit>().state,
                    onChanged: (value) {
                      context.read<ThemeCubit>().setTheme(value ?? ThemeMode.dark);
                    },
                  ),
                  Icon(Icons.dark_mode_rounded),
                  Text('Dark'),
                ]),
                Column(children: [
                  Radio.adaptive(
                    value: ThemeMode.system,
                    groupValue: context.watch<ThemeCubit>().state,
                    onChanged: (value) {
                      context.read<ThemeCubit>().setTheme(value ?? ThemeMode.system);
                    },
                  ),
                  Icon(Icons.settings),
                  Text('System'),
                ]),
              ],
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.star),
      ),
    );
  }
}
