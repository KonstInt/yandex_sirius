import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/profile/bloc/profile_bloc.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        // if (state.status.isFailure) {}
      },
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _Profile(),
        ],
      ),
    );
  }
}

class _Profile extends StatelessWidget {
  const _Profile();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              backgroundImage:
                  (state.photo == null) ? null : NetworkImage(state.photo!),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Text('Name:'),
                const SizedBox(
                  width: 10,
                ),
                Text(state.name),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Text('Surname:'),
                const SizedBox(
                  width: 10,
                ),
                Text(state.secondName),
              ],
            ),
            Row(
              children: [
                const Text('Alias:'),
                const SizedBox(
                  width: 10,
                ),
                Text(state.nickName),
              ],
            ),
            FloatingActionButton(onPressed: () {
              context.read<ProfileBloc>().add(LogOut());
            }),
          ],
        );
      },
    );
  }
}
