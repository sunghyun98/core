package hello.core.member;

public class MemberServiceImpl implements MemberService{
    //MemberService 인터페이스를 구현한 구현체
    private final MemberRepository memberRepository;

    public MemberServiceImpl(MemberRepository memberRepository) {
        this.memberRepository = memberRepository;
    }

    //MemoryMemberRepository 클래스의 인스턴스를 생성하여 할당
    @Override
    public void join(Member member) {
        memberRepository.save(member);
    }
    //매개변수로 전달받은 member 객체를 menberRepository를 통해 저장
    @Override
    public Member findMember(Long memberId) {
        return memberRepository.findById(memberId);
    }
    //매개변수로 전달받은 memberId를 memberRepository를 통해 회원조회


    //테스트용도
    public MemberRepository getMemberRepository() {
        return memberRepository;
    }
}
