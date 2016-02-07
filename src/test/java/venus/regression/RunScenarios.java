package venus.regression;

import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

/**
 * Created by sriramangajala on 07/02/16.
 */
@RunWith(Cucumber.class)
@Cucumber.Options(format = {"pretty", "html:target/eurostar-html-report", "json:target/eurostar_report.json"},
        tags="@reg"
)
public class RunScenarios extends BaseTest{


}
