// Row(
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
//
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 30.0, left: 18),
// child: Row(
// children: [
//
// Icon(
// Icons.arrow_back,
// color: Colors.white,
// size: 20,
// ),
// Text(
// "Bed",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold,
// fontSize: 25),
// ),
//
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 18),
// child: Text(
// "Room",
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold,
// fontSize: 25),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 18),
// child: Container(
// height: 50,
// child: AnimatedPadding(
// padding: EdgeInsets.only(top: lightTextPadding),
// duration: const Duration(seconds: 2),
// curve: Curves.linearToEaseOut,
// child: lightTextPadding > 5
// ? Text(
// "4 Lights",
// style: TextStyle(
// color: AppColors.buldlight,
// fontWeight: FontWeight.bold,
// fontSize: 18),
// )
// : Text(""),
// ),
// ),
// ),
// SizedBox(
// height: 20,
// ),
// AnimatedPadding(
// padding: EdgeInsets.only(left: topListViewPadding),
// duration: const Duration(seconds: 2),
// curve: Curves.linearToEaseOut,
// child: Container(
// height: 60,
// width: width-30,
// color: Colors.transparent,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: upperListIteams.length,
// itemBuilder: (context, index) {
// return Padding(
// padding: const EdgeInsets.all(8.0),
// child: InkWell(
// onTap: () {
// setState(() {
// selectedUpperListIndex = index;
// });
// },
// child: Container(
// width: 120,
// decoration: BoxDecoration(
// color: selectedUpperListIndex == index
// ? AppColors.lightGreen
//     : Colors.white,
// borderRadius:
// BorderRadius.all(Radius.circular(10))),
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceEvenly,
// children: [
// Icon(
// index == 2
// ? Icons.bed_outlined
//     : index == 1
// ? Icons.fastfood_rounded
//     : Icons.lightbulb_outline,
// color: selectedUpperListIndex == index
// ? AppColors.white
//     : AppColors.lightGreen,
// ),
// Text(
// upperListIteams[index],
// style: TextStyle(
// color: selectedUpperListIndex == index
// ? AppColors.white
//     : AppColors.lightGreen,
// fontWeight: FontWeight.bold,
// fontSize: 18),
// )
// ],
// )),
// ),
// );
// }),
// ),
// ),
// SizedBox(
// height: 20,
// ),
// ],
// ),
//
//
// ],
// ),



// Padding(
// padding: const EdgeInsets.only(top: 5.0),
// child: Container(
// // alignment: Alignment.center,
// width: 150,
// height: 60,
// margin: EdgeInsets.only(top: 50),
// padding: EdgeInsets.only(top: 100),
// decoration: BoxDecoration(
// border: Border(
// left: BorderSide(
// color:AppColors.bgColors,
// width: 25,
// ),
// top: BorderSide(
// color: AppColors.bgColors,
// width: 0,
// ),
// right: BorderSide(
// color:AppColors.bgColors,
// width: 30,
// ),
// bottom: BorderSide(
// color: Colors.white,
// width: 50,
// ))),
// ),
// ),