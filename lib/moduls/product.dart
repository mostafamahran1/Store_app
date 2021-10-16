class product {
  final int id, price;
  final String title, subTitle, descreption, image;

  product(
      {
      required this.id,
      required this.price,
      required this.title,
      required this.subTitle,
      required this.descreption,
      required this.image});
}

//list of products
List<product> products = [
  product(
      id: 1,
      price: 75,
      title: "IIK Collection",
      subTitle: "ساعة ذهبي ",
      image: "image/DSC_0025.jpg",
      descreption: "ساعة شيك جدا من افخم الساعات ورخيصة جدا "
  ),
  product(
      id: 2,
      price: 95,
      title: "IIK Collection",
      subTitle: "ساعة ذهبي ",
      image: "image/DSC_0047.jpg",
      descreption: "ساعة شيك جدا من افخم الساعات ورخيصة جدا "
  ),
  product(
      id: 3,
      price: 110,
      title: "IIK Collection",
      subTitle: "ساعة ذهبي في اسود ",
      image: "image/DSC_0069.jpg",
      descreption: "ساعة شيك جدا من افخم الساعات ورخيصة جدا وسهلة الحركة "
  ),
  product(
      id: 4,
      price: 75,
      title: "IIK Collection",
      subTitle: "ساعة ذهبي والعقارب سودا ",
      image: "image/DSC_0100.jpg",
      descreption: "ساعة شيك جدا من افخم الساعات ورخيصة جدا ساعة شيك جدا "
  ),
  product(
      id: 5,
      price: 75,
      title: "IIK Collection",
      subTitle: "ساعة جلد طبيعي ",
      image: "image/DSC_0163.jpg",
      descreption: "ساعة شيك جدا من افخم الساعات ورخيصة جدا ساعة جلد بني بالتاريخ "
  ),
  product(
      id: 6,
      price: 75,
      title: "بالورة",
      subTitle: "بالورة سويت لاف للعروسين ",
      image: "image/DSC_0203.jpg",
      descreption: "باللورة شيك جدا وتنفع لاي مناسبة "
  ),
  product(
      id: 7,
      price: 75,
      title: "باللورة",
      subTitle: "باللورة باريس ",
      image: "image/DSC_0241.jpg",
      descreption: "باللورة شيك جدا وتنفع لاي مناسبة علي شكل برج ايفل "
  ),
  product(
      id: 8,
      price: 75,
      title: "باللورة",
      subTitle: "باللورة باريس ",
      image: "image/DSC_0245.jpg",
      descreption: " باللورة شيك جدا وتنفع لاي مناسبة علي شكل برج ايفل"
  ),
  product(
      id: 9,
      price: 75,
      title: "باللورة",
      subTitle: "باللورة فلافيلو ",
      image: "image/DSC_0255.jpg",
      descreption: " علي شكل فلافيلو "
  ),
  product(
      id: 10,
      price: 75,
      title: "باللورة",
      subTitle: "باللورة بيبي ",
      image: "image/DSC_0263.jpg",
      descreption: " علي شكل بيبي"
  ),
];
