import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/reader_cubit/reader_cubit.dart';
import '../../cubits/reader_cubit/reader_state.dart';


class ReaderSettings extends StatelessWidget {
  const ReaderSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReaderCubit, ReaderState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Настройки чтения',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // Font Size Controls
              Row(
                children: [
                  const Text('Размер шрифта'),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            final newSize = state.fontSize - 1;
                            if (newSize >= 12) {
                              context.read<ReaderCubit>().setFontSize(newSize);
                            }
                          },
                        ),
                        Expanded(
                          child: Slider(
                            value: state.fontSize,
                            min: 12.0,
                            max: 24.0,
                            divisions: 12,
                            label: state.fontSize.toStringAsFixed(1),
                            onChanged: (value) {
                              context.read<ReaderCubit>().setFontSize(value);
                            },
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            final newSize = state.fontSize + 1;
                            if (newSize <= 24) {
                              context.read<ReaderCubit>().setFontSize(newSize);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Background Color Selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Цвет фона'),
                  Row(
                    children: [
                      _ColorOption(
                        color: ReaderCubit.kWhiteColor,
                        isSelected: state.backgroundColor == ReaderCubit.kWhiteColor,
                        onTap: () => context
                            .read<ReaderCubit>()
                            .setBackgroundColor(ReaderCubit.kWhiteColor),
                      ),
                      const SizedBox(width: 12),
                      _ColorOption(
                        color: ReaderCubit.kCreamColor,
                        isSelected: state.backgroundColor == ReaderCubit.kCreamColor,
                        onTap: () => context
                            .read<ReaderCubit>()
                            .setBackgroundColor(ReaderCubit.kCreamColor),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ColorOption extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const _ColorOption({
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}