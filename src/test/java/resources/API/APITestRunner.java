package resources.API;

import com.intuit.karate.junit5.Karate;

public class APITestRunner {
    @Karate.Test
    Karate testAPI() {
        return Karate.run("apitest").relativeTo(getClass());
    }
}
