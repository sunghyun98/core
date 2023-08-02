package hello.core;

import hello.core.member.MemoryMemberRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;

@Configuration
@ComponentScan(
        basePackages = "hello.core.member",
        basePackageClasses = AutoAppConfig.class,
        //컴포넌트 스캔에서 뺄것을 지정dd
        //Configuration.class을 빼는 이유는 수동으로 등록한 AppConfig를 제거해야지 예제 클래스가 충돌이 안 일어남
        //기존 AppConfig와 다르게 @Bean을 등록한것이 없다.
        excludeFilters = @ComponentScan.Filter(type = FilterType.ANNOTATION, classes = Configuration.class)
)
public class AutoAppConfig {
//    @Bean(name = "memoryMemberRepository")
//    MemoryMemberRepository memoryMemberRepository(){
//        return new MemoryMemberRepository();
//    }


}
