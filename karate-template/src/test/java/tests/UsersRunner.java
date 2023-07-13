package tests;

import com.intuit.karate.junit5.Karate;
import org.junit.BeforeClass;

class UsersRunner {
    @BeforeClass
    public static  void before(){
        System.setProperty("karate.env","qa");
    }
    @Karate.Test
    Karate testUsers() {
        return Karate.run("ConfigDemo").relativeTo(getClass());
    }    

}
