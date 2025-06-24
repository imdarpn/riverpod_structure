import 'package:riverpod_structure/enums/cms_pages.dart';
import 'package:riverpod_structure/enums/text_color_type.dart';
import 'package:riverpod_structure/src/presentation/screen/cms_html_page/cms_html_page_args.dart';
import 'package:riverpod_structure/widget/app_scaffold.dart';
import 'package:riverpod_structure/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../utils/common_consumer.dart';

import 'notifier/cms_html_page_notifier.dart';
import 'state/cms_html_page_state.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class CmsHtmlPageScreen extends ConsumerWidget {
  final CmsHtmlPageArgs? args;
  const CmsHtmlPageScreen({super.key,required this.args});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // Access the notifier
    final notifier = ref.read(cmsHtmlPageNotifierProvider.notifier);

    // Call once after first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifier.getArguments(args);
    });

    return AutoConsumerBuilder<CmsHtmlPageState, CmsHtmlPageNotifier>(
      provider: cmsHtmlPageNotifierProvider,
      builder: (BuildContext context, CmsHtmlPageState state, CmsHtmlPageNotifier notifier, WidgetRef ref) {
        return AppScaffold(
          appBar: CustomAppBar(
            titleText: args?.cmsPages?.value ?? "",
            backgroundColor: TextColorType.bgColor.resolve(context),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: HtmlWidget(
              state.pageContent
            ),
          ),
        );
      },
    );
  }
}
