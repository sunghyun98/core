package hello.core.member;

import java.util.HashMap;
import java.util.Map;

// "MemoryMemberRepository" 클래스는 인터페이스를 구현하여 메모리에 회원 정보를 저장하고 조회하는 기능을 제공합니다.
// 이 코드는 단순히 예시로 작성된 것이며, 실제로는 데이터베이스나 다른 영구 저장소를 사용하는 것이 일반적입니다.
public class MemoryMemberRepository implements MemberRepository {
    //MemoryMemberRepository 클래스는 MemberRepository 인터페이스를 구현하므로
    //save와 findById라는 두 가지 메서드를 구현해야 한다.
    private static Map<Long, Member> store = new HashMap<>();
    //회원 아이디(Long)를 키로 사용하여 화원(Member)객체를 값으로 저장한다
    //회원 정보를 메모리에 저장하는 용도
    @Override
    public void save(Member member) {
        //회원 객체를 전달 받아서 store hashmap에 저장한다.
        //회원 객체의 아이디를 키로 사용하여 회원 객체를 저장한다.
        store.put(member.getId(), member);
    }

    @Override
    public Member findById(Long memberID) {
        //회원 아이디를 전달받아서 해당 아이디에
        // 해당하는 회원 객체를 "store" HashMap에서 찾아 반환한다.+.
        return store.get(memberID);
    }
}
