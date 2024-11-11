package resources.mobile;

import com.intuit.karate.junit5.Karate;

class MobileRunner {
    
    @Karate.Test
    Karate testMobile() {
        return Karate.run("mobile").relativeTo(getClass());
    }    

}
