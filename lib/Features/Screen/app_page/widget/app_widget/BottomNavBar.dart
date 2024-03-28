import 'package:coffee_shop_01/Features/Screen/app_page/logic/App/app_cubit.dart';
import 'package:coffee_shop_01/Features/Screen/app_page/logic/App/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const BottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor:
              const Color.fromARGB(122, 158, 158, 158).withOpacity(0.5),
          currentIndex: state.index,
          onTap: onItemTapped,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            _buildBottomNavigationItem('Home'),
            _buildBottomNavigationItem('Scan_Pay'),
            _buildBottomNavigationItem('Order'),
            _buildBottomNavigationItem('Account'),
            _buildBottomNavigationItem('Rewards'),
          ],
        );
      },
    );
  }

  BottomNavigationBarItem _buildBottomNavigationItem(String type) {
    return BottomNavigationBarItem(
      icon: _buildIcon(type),
      activeIcon: _buildActiveIcon(type),
      label: type,
    );
  }

  Widget _buildIcon(String type) {
    return SizedBox(
      height: 44,
      width: 35,
      child: Image.asset('assets/image/$type.png'),
    );
  }

  Widget _buildActiveIcon(String type) {
    return SizedBox(
      width: 40,
      height: 48,
      child: Image.asset(
        'assets/image/$type.png',
        color: Colors.blue,
      ),
    );
  }
}
