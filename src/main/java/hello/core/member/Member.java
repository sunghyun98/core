package hello.core.member;

public class Member {
    private Long id;
    //회원의 고유 식별자
    private String name;
    //회원의 이름
    private Grade grade;
    //회원의 등급

    public Member(Long id, String name, Grade grade) {
        
        this.id = id;
        this.name = name;
        this.grade = grade;
    }
    //id, name, grade를 매개변수로 받는 생성자
    //이 생성자를 통해 Member 객체를 생성하면서 회원의 정보를 초기화
    public Long getId() {
        return id;
    }
    //id값을 반환하는 Getter 메소드

    public void setId(Long id) {
        this.id = id;
    }
    //id 값을 설정하는 Setter
    public String getName() {
        return name;
    }


    public void setName(String name) {
        this.name = name;
    }

    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }
}
