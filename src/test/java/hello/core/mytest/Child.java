package hello.core.mytest;

class Child extends Parent {
    public Child(int age, String name){
        System.out.println("자식 생성자");
    }

    public Child(){
        this.print();
        this.age = 1;
        this.name = "SD";
        int age = 1;
        String name = "dsd";
        System.out.println("fdfdfd");
    }
}

