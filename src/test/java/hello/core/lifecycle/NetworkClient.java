package hello.core.lifecycle;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class NetworkClient {
    private String url;

    public  NetworkClient(){
        System.out.println("생성자 호출, url = " + url);

    }

    public void setUrl(String url){
        this.url = url;
    }

    //서비스 시작시 호출
    public void connect(){
        System.out.println("connect = "+ url);
    }

    public void call(String message){
        System.out.println("call = " + url + "message = " + message);
    }

    //서비스 종료시 호출
    public void disconnect(){
        System.out.println("close = " + url);
    }

    public void init() {
        System.out.println("NetworkClient.afterPropertiesSet");
        connect();
        call("초기화 연결 메시지");
    }


    public void close() {
        System.out.println("NetworkClient.destroy");
        disconnect();
    }
/*
    //InitializingBean = afterPropertiesSet() 메서드로 초기화를 지원한다
    // DisposableBean  = estroy() 메서드로 소멸을 지원한다.
    //단점 스프링 전용 인터페이스다.
    //해당 코드가 스프링 전용 인터페이스에 의존한다.
    //초기화 소멸 메서드의 이름을 변경할 수 없다.
    //외부라이브러리에 적용할 수 없다.
    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("NetworkClient.afterPropertiesSet");
        connect();
        call("초기화 연결 메시지");
    }

    @Override
    public void destroy() throws Exception {
        System.out.println("NetworkClient.destroy");
        disconnect();
    }
 */

}
