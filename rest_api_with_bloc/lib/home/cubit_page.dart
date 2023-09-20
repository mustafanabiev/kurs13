import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/cubit/home_cubit.dart';
import 'package:rest_api_with_bloc/models/user_model.dart';

class CubitPage extends StatelessWidget {
  const CubitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CubitPage'),
      ),
      body: Center(
        child: BlocBuilder<HomeCubit, HomeCubitState>(
          builder: (context, state) {
            if (state is HomeInitial) {
              return const Text('initial state');
            } else if (state is HomeLoading) {
              return const CircularProgressIndicator();
            } else if (state is HomeSuccess) {
              return UserListWidget(users: state.users ?? []);
            } else if (state is HomeError) {
              return Text(state.message ?? '');
            } else {
              return const Text('default state');
            }
          },
        ),
      ),
    );
  }
}

class UserListWidget extends StatelessWidget {
  const UserListWidget({
    super.key,
    required this.users,
  });

  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return Card(
          child: ListTile(
            title: Text(user.name),
            subtitle: Text(user.username),
          ),
        );
      },
    );
  }
}
