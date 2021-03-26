import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  final image =
      'https://larepublica.pe/resizer/G-zAoAn4RRT1ajlQwqwsd9RzdbY=/1250x735/top/smart/cloudfront-us-east-1.images.arcpublishing.com/gruporepublica/LMT42JPXTVF5FJ75BABXI4ESUQ.jpg';

  final image2 =
      'https://lh3.googleusercontent.com/proxy/SUc51Zcxk6AG8jIT6KeNlqEeTCQCqASkoeNTpRMdE4MpWbRAGyYuADPE-hjpbasHfAy8rA4c56ZX251x2qbSjCJ20TwVE8AuQ_6bjfZgxaS94zAQqw66WUPL39PY7USG3dH7d91pUg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(image),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('MA'),
              backgroundColor: Colors.orange,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(image2),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(microseconds: 350),
        ),
      ),
    );
  }
}
