import 'order_model.dart';
import 'order_service.dart';
import 'drink_model.dart';

void main() {
  final service = OrderService();

  final order1 = OrderModel(
    drinks: [TurkishCoffee(), Tea()],
    customerName: "Omar",
    instructions: "No sugar",
  );

  final order2 = OrderModel(
    drinks: [HibiscusTea(), Tea()],
    customerName: "Ahmed",
    instructions: "Extra hot",
  );

  service.addOrder(order1);
  service.addOrder(order2);

  service.markOrderCompleted(order1);

  service.generateReport();
}
