package hello.core.order;

public interface OrderService {
    //주문 생성후 반환 하는 값
    Order createOrder(Long memberID, String itemName,
                      int itemPrice);
}
