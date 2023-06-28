package hello.core.singleton;

public class StatefulService {
//    private int price; //상태를 유지하는 필드

//   public void order(String name, int price){
//        System.out.println("name = " + name + " price = " + price);
//        this.price = price; //여기가 문제!
//    }
    /////////////////////////////////////////////////////////////////
    //price 필드를 제거하여 상태를 유지하지 않는다.
    //order() 메서드가 상태를 유지하지 않고 매개변수로 받은 price 값을 반환하도록 수정한다.
    ////////////////////////////////////////////////////////////////
    public int order(String name, int price){
        System.out.println("name = " + name + " price = " + price);
 //       this.price = price; //여기가 문제!
        return price;
    }

//    public int getPrice() {
//        return price;
//    }
}
