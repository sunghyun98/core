package hello.core;

import hello.core.member.Grade;
import hello.core.member.Member;
import hello.core.member.MemberService;
import hello.core.member.MemberServiceImpl;

public class MemberApp {
    public static void main(String[] args) {
        AppConfig appConfig = new AppConfig();
        MemberService memberService = appConfig.memberService();
        //MemberService memberService = new MemberServiceImpl();
        //MemberServiceImpl 클래스의 객체가 생성됩니다. 이 객체는 MemberServiceImpl 클래스의 생성자를 호출하여 초기화됩니다.
        //생성된 MemberServiceImpl 객체의 참조가 MemberService 타입의 변수인 memberService에 할당됩니다.
        //이제 memberService 변수를 사용하여 MemberService 인터페이스에 선언된 메소드를 호출할 수 있습니다.
        Member member = new Member(1L, "memberA", Grade.VIP);
        memberService.join(member);

        Member findMember = memberService.findMember(1L);
        System.out.println("new member = " + member.getName());
        System.out.println("findMember = " + findMember.getName());




    }
}
