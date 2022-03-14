import 'package:healthy_u/all_Imports.dart';
class Text1 extends StatelessWidget {
  Text1({
    required this.text,
    required this.color,
    required this.size,
    Key? key,
  }) : super(key: key);
  final String text;
  final double size;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6!.copyWith(
            fontSize: size,
            fontWeight: FontWeight.bold,
            color: color,
            letterSpacing: 1
        ),
      ),
    );
  }
}

class ClickableText extends StatelessWidget {
  ClickableText({
    required this.text,
    required this.size,
    required this.pageName,
    Key? key,
  }) : super(key: key);
  final String text;
  final double size;
  final String pageName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(pageName);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(text,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: size,
                  //fontWeight: FontWeight.bold,
                  color: const Color(0xFF0C9869),
                  letterSpacing: 1
              ),),
          ],
        ),
      ),
    );
  }
}

class DividerText extends StatelessWidget {
  const DividerText({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        const Expanded(
            child: Divider(thickness: 1,)
        ),
        Padding(
          padding:  EdgeInsets.all(15.0),
          child: Text(text,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
        const Expanded(
            child: Divider(thickness: 1,)
        ),
      ],
    );
  }
}