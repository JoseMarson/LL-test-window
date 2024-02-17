import 'package:flutter/material.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/loading_widget.dart';
import 'package:locallog_driver_interface/theme/app_theme.dart';

class SearchingRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppTheme.colors.searchingRoutes,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Buscando rotas na região...",
                        style: AppTheme.textStyles.searchingRoutes,
                      ),
                      TextSpan(
                        text: "\nMaior probabilidade de rota entre ",
                        style: AppTheme.textStyles.searchingRoutes2,
                      ),
                      TextSpan(
                        text: "13:45",
                        style: AppTheme.textStyles.textBaseBold,
                      ),
                      TextSpan(
                        text: " e ",
                        style: AppTheme.textStyles.searchingRoutes2,
                      ),
                      TextSpan(
                        text: "14:15",
                        style: AppTheme.textStyles.textBaseBold,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: LoadingWidget(),
        ),
      ],
    );
  }
}
