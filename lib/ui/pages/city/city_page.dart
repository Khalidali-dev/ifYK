import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ifyk_landing/constants/cities.dart';
import 'package:ifyk_landing/models/city/city.dart';
import 'package:ifyk_landing/ui/pages/city/widgets/compact/city_compact_content.dart';
import 'package:ifyk_landing/ui/pages/city/widgets/wide/city_wide_content.dart';
import 'package:ifyk_landing/ui/utils/size_util.dart';

@RoutePage()
class CityPage extends StatefulWidget {
  final String cityId;
  const CityPage({super.key, @PathParam('id') required this.cityId});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  late City city;

  @override
  void initState() {
    city = kCities.singleWhere((city) => city.id == widget.cityId);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final isCompact = SizeUtil.isCompact(context);
    if(isCompact){
      return  CityCompactContent(city: city, tabsRouter: tabsRouter);
    } else {
      return CityWideContent(city: city, tabsRouter: tabsRouter);
    }
  }
}
