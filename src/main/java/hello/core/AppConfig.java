package hello.core;


import hello.core.discount.FixDiscountPolicy;
import hello.core.member.MemberService;
import hello.core.member.MemberServiceImpl;
import hello.core.member.MemoryMemberRepository;
import hello.core.order.OrderService;
import hello.core.order.OrderServiceImpl;

public class AppConfig {
    //생성한 객체 인스턴스의 참조를 생성자를 통해서 주입한다.
    public MemberService memberService(){
        return new MemberServiceImpl(new MemoryMemberRepository());
    }
    //MemberServiceImpl --> MemoryMemberRepository

    public OrderService orderService(){
        return new OrderServiceImpl(new MemoryMemberRepository(), new FixDiscountPolicy());
    }
    //OrderServiceImpl -->MemoryMemberRepository, FixDiscountPolicy
}
