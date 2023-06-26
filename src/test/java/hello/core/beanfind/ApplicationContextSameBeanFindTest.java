package hello.core.beanfind;

import hello.core.AppConfig;
import hello.core.discount.DiscountPolicy;
import hello.core.member.MemberRepository;
import hello.core.member.MemberService;
import hello.core.member.MemoryMemberRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.NoSuchBeanDefinitionException;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Map;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

import static org.junit.jupiter.api.Assertions.*;


//빈 이름을 조회하는 테스트
public class ApplicationContextSameBeanFindTest {

    //SameBeanConfig라는 내부 정적 클래스를 포함
    AnnotationConfigApplicationContext ac = new AnnotationConfigApplicationContext(SameBeanConfig.class);


    @Test
    @DisplayName("타입으로 조회시 같은 타입으로 조회시 둘 이상 있으면, 중복 오류가 발생한다.")
    void findBeanByTypeDuplicate(){
        //assertThrows 예외를 검정하는 메소드
        //중복오류 조회
        assertThrows(NoSuchBeanDefinitionException.class,
                () -> ac.getBean(MemberRepository.class));

    }
    @Test
    @DisplayName("타입으로 조회시 같은 타입으로 조회시 둘 이상 있으면, 빈 이름을 지정하면 된다..")
    void findBeanByName(){
        // "memberRepository1"이라는 이름으로 MemberRepository 타입의 빈을 조회합니다. 해당 빈이 존재한다면
        // MemberRepository 인스턴스를 반환하고, 존재하지 않으면 예외가 발생합니다.
        MemberRepository memberRepository = ac.getBean("memberRepository1",MemberRepository.class);
        //memberRepository 객체가 MemberRepository 클래스의 인스턴스인지를 검증합니다.
        assertThat(memberRepository).isInstanceOf(MemberRepository.class);

    }

    @Test
    @DisplayName("특정타입을 모두 조회하기")
    void findAllBeanByName() {
        Map<String, MemberRepository> beansOfType = ac.getBeansOfType(MemberRepository.class);
        //iter
        //beansOfType 맵의 키를 순회하면서 각 빈의 정보를 출력합니다.
        for (String key : beansOfType.keySet()) {
            System.out.println("key = " + key + " value"+ beansOfType.get(key)) ;
        }
        System.out.println("beansAll" + beansOfType);

        //맵의 크기가 2인지 검증합니다.
        assertThat(beansOfType.size()).isEqualTo(2);
    }

    @Configuration
    static class SameBeanConfig{
//  클래스 안에 static을 사용하여 ApplicationContextSameBeanFindTest클래스 안에서만 사용하려고 함
        @Bean
        public MemberRepository memberRepository1(){
            return new MemoryMemberRepository();
        }
        @Bean
        public MemberRepository memberRepository2(){
            return new MemoryMemberRepository();
        }

    }
}
