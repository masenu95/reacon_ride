import 'package:animation_wrappers/animation_wrappers.dart';

import 'package:flutter/material.dart';

import 'package:reacon_customer/presentation/core/theme/colors.dart';



Column cartOrderItemListTile(
    String image,
    BuildContext context,
    String title,
    String price,
    int itemCount,
    void plus,
    void minus,

    ) {
  return Column(
    children: <Widget>[
      ListTile(
        title: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  image,
                  scale: 2.5,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2-40,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Theme.of(context).secondaryHeaderColor),
                    overflow: TextOverflow.clip,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Container(
                  height: 30.0,
                  //width: 76.7,
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: kMainColor),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap:()=> minus,
                        child: Icon(
                          Icons.remove,
                          color: kMainColor,
                          size: 20.0,
                          //size: 23.3,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(itemCount.toString(),
                          style: Theme.of(context).textTheme.caption),
                      SizedBox(width: 8.0),
                      InkWell(
                        onTap: ()=> plus,
                        child: Icon(
                          Icons.add,
                          color: kMainColor,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  ' $price TZS',
                  style: Theme.of(context).textTheme.caption,
                ),
              ]),
        ),
      )
    ],
  );
}



Widget quickGrid({
  required BuildContext context,
  required String image,
  required String name,
  required String category,
  required String price,
  required VoidCallback onTap,
  required double width
}) {
  return GestureDetector(
    onTap: onTap,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FadedScaleAnimation(
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image:NetworkImage(image),fit: BoxFit.cover),
            ),
           height: 100,
            width: width,
          ),
        ),
        SizedBox(width: 13.3),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 140,
              child: Text(name,
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).secondaryHeaderColor)),
            ),
            SizedBox(height: 8.0),
            Text(category,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: kLightTextColor, fontSize: 10.0)),
            SizedBox(height: 10.3),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.money,
                  color: kIconColor,
                  size: 10,
                ),
                SizedBox(width: 10.0),
                Text(price,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: kLightTextColor, fontSize: 10.0)),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

class Loader extends StatelessWidget {
  const Loader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 2,
      backgroundColor: Colors.black.withOpacity(0.5),
      child: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const  Image(
                height: 100,
                width: 100,
                image: AssetImage('images/loader.gif')),
            const SizedBox(height: 30),
            Text(
                "Waiting.."
            ),
          ],
        ),
      ),
    );
  }
}