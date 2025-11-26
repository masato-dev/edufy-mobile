// lib/src/presentation/pages/root/tabs/discover/discover_tab.dart
import 'package:edufy_mobile/src/shared/configs/export.dart';
import 'package:flutter/material.dart';

class DiscoverTab extends StatefulWidget {
  const DiscoverTab({super.key});

  @override
  State<DiscoverTab> createState() => _DiscoverTabState();
}

class _DiscoverTabState extends State<DiscoverTab> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Khám phá'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        children: [
          _DiscoverSearchField(controller: _searchController),
          const SizedBox(height: 20),
          const _DiscoverHeroCard(),
          const SizedBox(height: 24),
          const _SectionLabel(text: 'Danh mục phổ biến'),
          const SizedBox(height: 12),
          const _CategoryChips(),
          const SizedBox(height: 24),
          const _SectionLabel(text: 'Khám phá theo mục tiêu'),
          const SizedBox(height: 12),
          const _GoalCards(),
          const SizedBox(height: 24),
          const _SectionLabel(text: 'Lộ trình gợi ý'),
          const SizedBox(height: 12),
          const _RoadmapList(),
        ],
      ),
    );
  }
}

class _DiscoverSearchField extends StatelessWidget {
  final TextEditingController controller;

  const _DiscoverSearchField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Tìm khoá học, chủ đề, trung tâm...',
        prefixIcon: const Icon(Icons.search_rounded),
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: () {
                  controller.clear();
                  FocusScope.of(context).unfocus();
                },
              )
            : null,
        filled: true,
        fillColor: AppColors.surface,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.border.withOpacity(0.8),
            width: 0.6,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.border.withOpacity(0.8),
            width: 0.6,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color: AppColors.primary,
            width: 1.2,
          ),
        ),
      ),
      onSubmitted: (value) {
        // TODO: hook qua search nâng cao / filter nếu cần
      },
    );
  }
}

class _DiscoverHeroCard extends StatelessWidget {
  const _DiscoverHeroCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.06),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.primary.withOpacity(0.18),
          width: 0.8,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.explore_rounded,
              color: AppColors.primary,
              size: 26,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Khám phá lộ trình học',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Chọn mục tiêu, Edufy gợi ý khoá học và lộ trình phù hợp cho bạn.',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                        height: 1.4,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;

  const _SectionLabel({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
    );
  }
}

class _CategoryChips extends StatelessWidget {
  const _CategoryChips();

  @override
  Widget build(BuildContext context) {
    final categories = <String>[
      'Digital Marketing',
      'Design',
      'Data & BI',
      'Ngôn ngữ',
      'Kỹ năng mềm',
      'Công nghệ thông tin',
    ];

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: categories
          .map(
            (label) => FilterChip(
              label: Text(
                label,
                style: const TextStyle(
                  fontSize: 13,
                ),
              ),
              onSelected: (_) {
                // TODO: apply filter / navigate to category
              },
              backgroundColor: AppColors.surface,
              selectedColor: AppColors.primary.withOpacity(0.08),
              checkmarkColor: AppColors.primary,
              side: BorderSide(
                color: AppColors.border.withOpacity(0.9),
                width: 0.6,
              ),
            ),
          )
          .toList(),
    );
  }
}

class _GoalCards extends StatelessWidget {
  const _GoalCards();

  @override
  Widget build(BuildContext context) {
    final goals = [
      (
        icon: Icons.rocket_launch_rounded,
        title: 'Bắt đầu sự nghiệp mới',
        subtitle: 'Lộ trình từ cơ bản đến nâng cao.'
      ),
      (
        icon: Icons.trending_up_rounded,
        title: 'Nâng cấp kỹ năng hiện tại',
        subtitle: 'Bám sát công việc bạn đang làm.'
      ),
      (
        icon: Icons.auto_graph_rounded,
        title: 'Chuẩn bị lên vị trí cao hơn',
        subtitle: 'Quản lý, leader, specialist, v.v.'
      ),
    ];

    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: goals.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final goal = goals[index];
          return SizedBox(
            width: 240,
            child: Material(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(16),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  // TODO: navigate tới danh sách khoá học được filter theo mục tiêu
                },
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        goal.icon,
                        size: 24,
                        color: AppColors.primary,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        goal.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            Theme.of(context).textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.textPrimary,
                                ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        goal.subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(
                              color: AppColors.textSecondary,
                              height: 1.4,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _RoadmapList extends StatelessWidget {
  const _RoadmapList();

  @override
  Widget build(BuildContext context) {
    final roadmaps = [
      (
        title: 'Lộ trình Digital Marketing 0 → 1',
        level: 'Newbie • 3–6 tháng',
        tags: ['Nền tảng', 'Thực chiến', 'Case study']
      ),
      (
        title: 'Trở thành Performance Marketer',
        level: 'Đã có nền tảng • 2–4 tháng',
        tags: ['Ads', 'Tối ưu ngân sách', 'Đa kênh']
      ),
      (
        title: 'Data cho Marketing',
        level: 'Marketing • 2–3 tháng',
        tags: ['Dashboard', 'Phân tích', 'Báo cáo']
      ),
    ];

    return Column(
      children: roadmaps
          .map(
            (r) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Material(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    // TODO: navigate tới page lộ trình / filtered courses
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          r.title,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textPrimary,
                                  ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          r.level,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                        ),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 6,
                          runSpacing: 4,
                          children: r.tags
                              .map(
                                (tag) => Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.surfaceMuted,
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                  child: Text(
                                    tag,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                          color: AppColors.textSecondary,
                                        ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
