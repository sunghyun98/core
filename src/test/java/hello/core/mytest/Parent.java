package hello.core.mytest;

class Parent {
    int age = 40;
    String name = "윤성현";

    public Parent(){
        System.out.println("부모 디폴트 생성자");
    }
    public Parent(int age , String name){
        this.age = age;
        this.name = name;
        System.out.println("부모 인자 있는 생성자");
    }
    public void print(){
        System.out.println(name+","+age);
    }


}

