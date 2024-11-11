package resources.WebApp;

import com.intuit.karate.junit5.Karate;

class WebAppRunner {
    
    @Karate.Test
    Karate testWeb() {
        return Karate.run("UItest").relativeTo(getClass());
    }    

}
