package hello.core.mytest;

public class Person{
    String name;
    int age;

    public Person() {
        this.name = "사람";
        this.age = 1;
    }

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public void toPrint() {
        System.out.println(this.name + "님의 나이는 " + this.age + "살 입니다");
    }

    }
class Person1 extends Person{
    public Person1(){
        super();
        setPerson();
    }
    public void setPerson() {
        this.name = "사람1";
        this.age = 2;
    }
    public static void main(String[] args) {
        Person p1 = new Person();
        p1.toPrint();

        Person p2 = new Person("엄준식", 30);
        p2.toPrint();

        Person1 p3 = new Person1();
        p3.toPrint(); p1.toPrint();


    }
}
