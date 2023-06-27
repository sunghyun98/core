package hello.core.singleton;

import org.junit.jupiter.api.Test;

public class SingletonService {

    private static final SingletonService instance = new SingletonService();

    public static SingletonService getInstance() {
        return instance;
    }
    private SingletonService(){ }
    //생성자를 private로 막아서 객체 인스턴스가 생성되는 것을 막는다.

    public static void main(String[] args) {

    }

    public void logic(){
        System.out.println("싱클톤 객체 로직 호출");
    }
}
