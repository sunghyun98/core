package hello.core.member;

public interface MemberRepository {

    void save(Member member);
    //저장
    Member findById(Long memberID);
    //아이디를 찾는 기능
}
