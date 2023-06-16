// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:job_finder_app/constants/constants.dart';
import 'package:job_finder_app/models/job.dart';

class ItemJob extends StatefulWidget {
  final Job job;
  final bool themeDark;

  const ItemJob({
      super.key, 
      this.themeDark = false,
      required this.job,
    });

  @override
  State<ItemJob> createState() => _ItemJobState();
}

class _ItemJobState extends State<ItemJob> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _companyLogo(),
        
                  _favicon()
                ],
              ),

              _infoJobTexts(context),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
    color: widget.themeDark ? kPrimaryColor : Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: const [
      BoxShadow(
        color: Colors.black45,
        blurRadius: 10.0,
        offset: Offset(4.0, 4.0)
      )
    ]
  );

  Widget _companyLogo() {
    return Container(
      decoration: BoxDecoration(
        color: widget.themeDark ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(widget.job.company.urlLogo, width: 60.0),
      ),
    );
  }

  Widget _favicon() {
    return GestureDetector(
      child: Icon(
        widget.job.isFavorite ? Icons.favorite : Icons.favorite_border, 
        color: widget.themeDark ? Colors.white : Colors.grey,
      ),
      onTap: () {
        setState(() {
          widget.job.isFavorite = !widget.job.isFavorite;
        });
      },
    );
  }

  Widget _infoJobTexts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.job.company.name, style: TextStyle(fontSize: 15.0, color: widget.themeDark ? const Color(0xffb7b7d2) : Colors.grey ),),
        Text(widget.job.role, style: widget.themeDark ? kHeadLine3 : kHeadLine4 ),
        const SizedBox(height: 5.0,),
        Row(
          children: [
            Icon(Icons.location_on, color: widget.themeDark ? const Color(0xffb7b7d2) : Colors.grey, size: 15.0,),
            const SizedBox( width: 5.0,),
            Text(widget.job.location, style: const TextStyle( fontSize: 15.0, color: Color(0xffb7b7d2) ),)
          ],
        )
      ],
    );

  }
}

// class _InfoJobTexts extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text('Google', style: TextStyle(fontSize: 15.0, color: Color(0xffb7b7d2)),),
//         Text('Product Designer', style: kHeadLine3),
//         SizedBox(height: 5.0,),
//         Row(
//           children: [
//             Icon(Icons.location_on, color: Color(0xffb7b7d2), size: 15.0,),
//             SizedBox( width: 5.0,),
//             Text('San Francisco CA', style: TextStyle( fontSize: 15.0, color: Color(0xffb7b7d2) ),)
//           ],
//         )
//       ],
//     );
//   }
// }

// class _Favicon extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Icon(Icons.favorite_border, color: Colors.white,);
//   }
// }


// class _CompanyLogo extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color:  Colors.white,
//         borderRadius: BorderRadius.circular(10.0)
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(10.0),
//         child: Image.network('https://static.vecteezy.com/system/resources/previews/010/353/285/original/colourful-google-logo-on-white-background-free-vector.jpg', width: 60.0),
//       ),
//     );
//   }
// }