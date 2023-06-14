import 'package:flutter/material.dart';
import 'package:job_finder_app/constants/constants.dart';

class ItemJob extends StatelessWidget {
  const ItemJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(),
        child: Column(
          children: [
            Row(
              children: [
                _CompanyLogo(),

                _Favicon()
              ],
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
    color: kPrimaryColor,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: const [
      BoxShadow(
        color: Colors.black45,
        blurRadius: 10.0,
        offset: Offset(4.0, 4.0)
      )
    ]
  );
  
  
}

class _Favicon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




class _CompanyLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network('https://static.vecteezy.com/system/resources/previews/010/353/285/original/colourful-google-logo-on-white-background-free-vector.jpg', width: 60.0),
      ),
    );
  }
}