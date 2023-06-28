package hello.core.mytest;

public class CounterDemo {
    public static void main(String[] args) {

        //Counter클래스의 인스턴스 counter 생성
        Counter counter = new Counter();


        //increment() 메서드를 호출할 Thread객체인 thread1, thread2 생성
        Thread thread1 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });

        Thread thread2 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });

        //동시에 increment() 메서드를 호출
        //스레드시작 thread1, thread2를 시작시켜 동시에 increment() 메서드를 호출
        thread1.start();
        thread2.start();


        //스레드시작 thread1, thread2의 작업이 완료될 때까지 main()메서드의 실행을 일시정지
        try {
            thread1.join();
            thread2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        //counter의 최종 count 값 출력: thread1과 thread2의 작업이 완료된 후,
        // counter.getCount()를 호출하여 최종 count 값을 출력합니다.
        System.out.println("Final Count: " + counter.getCount());
    }
}
