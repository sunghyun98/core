package hello.core;

public class sqld {
/*
# 데이터 모델링의 이해

# **1-1. 데이터 모델링의 이해**

## 1-1-1. 데이터 모델링의 이해

*모델링의 특징 3가지

- 추상화 : **일정한 형식**에 맞추어 표현
- 단순화 : **제한된 표기법, 언어**로 표현해서 쉽게 이해하도록 표현
- 명확화 : **누구나 쉽게 이해하도**록 애매모호함을 제거하여 정확하게 현상을 기술한다

*정보시스템 구축에서 모델링 활용

- **계획/ 분석/ 설계**할 때 업무를 분석하고 설계하는데 이용
- **구축/운영** 단계에서는 변경과 관리의 목적으로 이용

*모델링의 3가지 관점

- 데이터 관점(Data, what) : “업무”와 데이터 //데이터와 데이터간의 관계
- 프로세스 관점(Process, How) : “업무 프로세스” 가 실제 하는 일 or 무엇을 해야하는지
- 상관 관점(Interaction) : “업무”가 처리하는 일의 “방법”에 따른 “데이터가 받는 영향”

*데이터 모델링 정의

- 정보시스템 구축을 위한 데이터 관점 업무 분석기법
- 현실세계의 데이터를 약속된 표기법에 의해 표현
- 데이터베이스 구축을 위한 분석/설계 과정

*데이터 모델링 기능

- 시스템 가시화 도움
- 시스템 구조와 행동 명세화 가능
- 시스템 구축 구조화된 틀 제공
- 시스템 구축 구조화된 틀 제공
- 시스템 구축 과정에서 결정한 것 문서화
- 다양한 영역 집중 위해 다른 영역 세부사항 숨김 (다양한 관점 제공)
- 특정 목표에 따라 구체화된 상세 수준의 표현방법을 제공

*데이터 모델링의 중요성

- **파급효과가** 크다(Leverage) : 데이터 구조 변경으로 인한 일련의 변경작업 위험요소 해결
- 복잡한 정보 요구사항의 **간결**한 표현(Conciseness) : 요구사항, 한계 명확하고 간결하게
- **데이터 품질을 유지**(Data Quality) : 오래된 데이터의 정확성, 신뢰성 해결

*데이터 모델링 유의점 3가지

- **중복**(Duplication) : 데이터베이스가 여러 장소에 같은 정보를 저장하는 것 주의
- **비유연성** : (Inflexibility) : 사소한 업무변화에 데이터모델이 수시로 변경되면 유지보수가 어려움 → 데이터의 정의를 데이터의 사용 **프로세스와 분리**
- **비일관성**(Inconsistency) : 데이터의 중복이 없더라도 비일관성 발생 가능

                                        →모델링 할 때 데이터간 **상호 연관관계 명확히 정의**


*데이터 모델링의 진행 3단계

개념적 → 논리적 → 물리적

추상적        →          구체적

- **개념**(계획,분석) : 추상화, 업무중심, 포괄, 전사적, EA수립
- **논리**(분석) : [KEY, 속성, 관계] 표현, 재사용성, 정규화
- **물리**(설계) : 데이터베이스 이식, 성능/저장 등 물리적 성격 고려

*프로젝트 생명주기에서 데이터 모델링

- 폭포수 모형 : 분석과 설계로 구분되어 명확하게 정의
- 정보공학/구조적 방법론 : 분석단계 - 업무중심 논리적 모델링

                                          설계단계 - 하드웨어 및 성능을 고려한 물리적 모델링

- 나선형 모델(RUP, 마루미) : 업무크기에 따라 논리적/물리적 모델링이 분석/              설계 양쪽 수행 비중은 분석단계에서 논리적 모델이 더 많이 수행 데이터/ 애플리케이션 축 구분 진행, 상호검증, 단계별 완성도

일반적으로 [계획/분석 : 개념] [분석 : 논리] [설계 : 물리] but 현실에서 보통 개념 생략 객체지향 개념은 데이터/프로세스 모델링 구분 X 일체형으로 진행

*독립성 필요성

- 유지보수 비용 절감
- 중복된 데이터 줄이기
- 데이터 복잡도 낮추기
- 요구사항 대응을 높히고자

*데이터 독립성 효과

- 각 View의 독립성 유지, 계층별 View에 영향을 주지 않고 변경가능
- 단계별 Schema에 따라 DDL과 DML의 다름을 제공

- 구조/ 독립성/ 사상(Mapping)

*ANSI / SPARC 데이터베이스 3단계 구조 및 독립성

외부단계/ 개념단계/ 내부적 단계(서로 간섭X)

논리적 독립성 (외부- 개념) : 개념스키마 변경 → 외부스키마 영향 x

                                          (사용자 특성에 맞는 변경 가능, 통합 구조 변경가능)

물리적 독립성(개념 - 내부) : 내부스키마 변경 → 외부/개념스키마 영향 x

                                   (물리적 구조, 개념 구조 상호간 영향 없이 서로 변경가능)

데이터 모델링은 통합관점 뷰를 가지는 개념 스키마를 만들어가는 과정!!

*사상 (Mapping)
상호 독립적인 개념을 연결시켜주는 다리

**논리적 사상** : 외부화면 및 사용자 인터페이스 스키마 구조는 개념스키마와 연결됨
**물리적 사상** : 개념스키마 구조와 물리적 저장된 구조(테이블스페이스)와 연결됨

*좋은 데이터 모델의 요소 6가지

완전성 / 중복배제 / 업무규칙 / 데이터 재사용 / 의사소통 / 통합성

@
 */
}
