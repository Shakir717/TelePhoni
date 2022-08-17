import 'package:go_router/go_router.dart';
import 'package:telfoni/constants/app_assets.dart';
import 'package:telfoni/constants/app_size.dart';
import 'package:telfoni/routing/app_router.dart';
import 'package:telfoni/shared_widgets/custom_elevated_button.dart';

import '../constants/colors_data.dart';
import 'package:flutter/material.dart';

import '../constants/string_values.dart';



class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor:kDarkBlue,
        primaryColor:kDarkBlue,
        brightness: Brightness.dark,),
      child: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            gapH64,
            _listTile(imgUrl: AppAsset.home,text: Strings.home,theme: theme,onTap: (){
               context.goNamed(AppRoute.home.name);
              Navigator.pop(context);
            }
            ),

            _listTile(imgUrl: AppAsset.shopIcon,text: Strings.shop,theme: theme,onTap: (){
              context.pushNamed(AppRoute.productlistpage.name);
              Navigator.pop(context);
            }
            ),

            _listTile(imgUrl: AppAsset.cardIcon,text: Strings.paymentAndRecharge,theme: theme,onTap: (){

              context.pushNamed(AppRoute.paymentandrecharge.name);
              Navigator.pop(context);
            }),

            _listTile(imgUrl: AppAsset.simIcon,text: Strings.buyNewSimCard,theme: theme,onTap: (){

              context.pushNamed(AppRoute.buynewsimcard.name);
              Navigator.pop(context);

            }),


            _listTile(imgUrl: AppAsset.chart,text: Strings.aboutUs,theme: theme,onTap: (){

              context.pushNamed(AppRoute.aboutus.name);
              Navigator.pop(context);

            }),

            _listTile(imgUrl: AppAsset.help,text: Strings.help,theme: theme,onTap: (){

              context.pushNamed(AppRoute.helppage.name);
              Navigator.pop(context);

            }),
            gapH32,
            CustomElevatedButton(
              width: 270,
              style: theme.elevatedButtonTheme.style?.copyWith(backgroundColor: MaterialStateProperty.all(kLightNavyBlue)),
              onPress: (){
                Navigator.pop(context);

              }, text:'عربى',),
            Spacer(),
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(AppAsset.appLogoWhite,width: 200,fit: BoxFit.fitWidth,color: kWhite.withOpacity(.1),)),
            gapH20
          ],
        ),
      ),
    );
  }


  _listTile({required String text,VoidCallback? onTap,required ThemeData theme,required String imgUrl}){
    return ListTile(
      onTap:onTap,
      minLeadingWidth: 0,
      leading: ImageIcon(AssetImage(imgUrl),color: kWhite,),
      title: Text(text,style:theme.textTheme.caption!.copyWith(fontWeight: FontWeight.w500))
    );
  }
}
