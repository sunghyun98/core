package hello.sqltest;
import  java.util.*;

class  Student  {
    int  id;
    char  name;
    static  int  count=0;
    Student()  {
count++;
    }
}
public  class  Test  {
    public  static  void  main(String[]  args)  {
 Student  man1  =  new  Student();
        Student  man2  =  new  Student();
        Student  man3  =  new  Student();
        Student  man4  =  new  Student();
        System.out.println(man2.count);

        System.out.println(3+4+"d"+3+4);

        String  a[][]  =  {  {"1"},  {"1"}  };
        String b[][] = new String[2][2]; // 2x2 크기의 2차원 문자열 배열 생성
        b[0][0] = "1";
        b[0][1] = "2";
        b[1][0] = "3";
        b[1][1] = "4";
        System.out.println(a[0][0] == b[0][0]);

        String str2 = "Programming"; // 큰 따옴표로 문자열을 묶습니다.
        String str3 = new String("Programming");
        System.out.println(str2 == str3); // false
        System.out.println(str2.equals(str3)); // true

    }
}

