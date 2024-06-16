class ExpenseModel{
  final String image, title, date, price;

  const ExpenseModel({required this.image, required this.title, required this.date, required this.price});

  factory ExpenseModel.fromJson(Map json){
return ExpenseModel(image: json['image'], title: json['title'], date: json['date'], price: json['price']);
  }
}