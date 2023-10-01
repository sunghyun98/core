package hello.sqltest;

public class Test {
    void f(){
        System.out.println("1");
    }
    void f(int i){
        System.out.println("2");
    }
    public static void main(String[] args) {
        Test a = new Test();
        a.f();
    }
}
