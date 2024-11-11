package resources.Performance;


import com.intuit.karate.gatling.javaapi.KarateProtocolBuilder;
import io.gatling.javaapi.core.Simulation;
import io.gatling.javaapi.core.ScenarioBuilder;

import static com.intuit.karate.gatling.javaapi.KarateDsl.*;
import static io.gatling.javaapi.core.CoreDsl.rampUsers;
import static io.gatling.javaapi.core.CoreDsl.scenario;



public class PerformanceSimulator extends Simulation {


    KarateProtocolBuilder protocol = karateProtocol();


    public PerformanceSimulator() {


        ScenarioBuilder main = scenario("Verify API Status").exec(karateFeature("classpath:resources/api/apitest.feature"));




        setUp(main.injectOpen(rampUsers(10).during(5)).protocols(protocol));


    }

}
