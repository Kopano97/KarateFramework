
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;


public class UIRegressionPack {


    @Test
    void testParallel() {
        Results results = Runner.path("classpath:resources/API").tags("@test", "~@setup").parallel(5);
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }


}
