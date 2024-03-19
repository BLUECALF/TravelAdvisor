import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_advisor/Home/presentation/BottomNavigationViewModel.dart';
import 'package:travel_advisor/Location/presentation/LocationView.dart';
import 'package:travel_advisor/TravelNotice/presentation/TravelNoticeView.dart';
import 'package:travel_advisor/UserAccount/presentation/UserAccountView.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(),
      child: Scaffold(
        body: BlocBuilder<BottomNavigationCubit, int>(
          builder: (context, currentIndex) {
            switch (currentIndex) {
              case 0:
                return const LocationView();
              case 1:
                return const TravelNoticeView();
              case 2:
                return const UserAccountView();
              default:
                return Container();
            }
          },
        ),
        bottomNavigationBar: BlocBuilder<BottomNavigationCubit, int>(
          builder: (context, currentIndex) {
            return BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                context.read<BottomNavigationCubit>().updateIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on),
                  label: 'Locations',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.travel_explore),
                  label: 'Travel Notices',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Account',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
