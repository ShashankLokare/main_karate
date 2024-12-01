package examples.tests;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.BeforeAll;

class TestsRunner {

    @BeforeAll
    public static void beforeAll(){
        System.setProperty("web.url.base","https://www.google.com");
    }

    @Karate.Test
    Karate testUsers() {
        return Karate.run("tests").relativeTo(getClass());
    }    

}
