package steps;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import utils.CommonMethods;

public class Hooks extends CommonMethods {

    @Before
    public void start(){
        openBrowserAndLaunchApplication();

    }

    @After
    // this executes always at the end irrespective of the result
    public void end(Scenario scenario){
        byte[]pic;
        // here we can take the screenshot before closing the browser
        // Scenario class in cucumber which will give me the information of
        //the execution. it holds the complete information of the execution
        // getName is hte method which returns the name of the scenario being executed
        if (scenario.isFailed()){
            pic = takeScreenshot("failed/"+scenario.getName());
        }else{
            pic = takeScreenshot("passed/"+scenario.getName());
        }
        // pic is array of byte, image/png is media type, getName is name of scenario
        scenario.attach(pic,"image/png", scenario.getName());

        closeBrowser();
    }
}
