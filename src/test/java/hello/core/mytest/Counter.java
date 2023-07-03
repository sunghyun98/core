package hello.core.mytest;

import java.util.concurrent.atomic.AtomicInteger;

public class Counter {
    private AtomicInteger count;
    public Counter() {
        count = new AtomicInteger(0);
    }

    public void increment() {
        count.incrementAndGet();
    }

    public int getCount() {
        return count.get();
    }
}
