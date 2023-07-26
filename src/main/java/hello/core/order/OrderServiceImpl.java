package hello.core.order;

import hello.core.discount.DiscountPolicy;
//import hello.core.discount.FixDiscountPolicy;
//import hello.core.discount.RateDiscountPolicy;
import hello.core.member.Member;
import hello.core.member.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService{
    private final MemberRepository memberRepository;
    //private final DiscountPolicy discountPolicy = new FixDiscountPolicy();
    private final DiscountPolicy discountPolicy;

    //setter를 이용한 생성자 주입 선택/변경 가능성이 있다.
    // @Autowired는 주입할 대상이 없으면 오류가 발생 하기 때문에
    //주입할 대상이 없어도 동작하게 하려면
    // @Autowired(required = false)로 지정하면 된다.

    //생성자가 하나만 있으면 생략가능하다.
    @Autowired
//    public OrderServiceImpl(MemberRepository memberRepository, DiscountPolicy discountPolicy ) {
//        this.memberRepository = memberRepository;
//        this.discountPolicy = discountPolicy;
//    } @RequiredArgsConstructor가 대신 생성해준다
    @Override
    public Order createOrder(Long memberID, String itemName, int itemPrice) {
        Member member = memberRepository.findById(memberID);
        int discountPrice = discountPolicy.discount(member, itemPrice);
        return new Order(memberID, itemName, itemPrice, discountPrice);
    }


    //테스트 용도
    public MemberRepository getMemberRepository() {
        return memberRepository;
    }
}
