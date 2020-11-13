part of 'widgets.dart';

class ItemProvinsi extends StatelessWidget {
  final int index;
  final AsyncSnapshot item;

  ItemProvinsi(this.index, this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(3, 3),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.data[index].nama,
            style: TextStyle(
                fontSize: 14,
                color: dark,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total Kasus",
                style: TextStyle(
                    fontSize: 12,
                    color: dark,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),
              ),
              Text(
                item.data[index].positif.toString(),
                style: TextStyle(
                    fontSize: 12,
                    color: dark,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
