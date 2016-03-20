package venus.regression;

import cucumber.api.PendingException;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

import java.io.File;
import java.util.Random;

/**
 * Created by sriramangajala on 07/02/16.
 */
public class StepDef {
    static WebDriver driver = BaseTest.driver;

    @Before
    public void beforeStep()
    {
        System.out.println("I am starting pre condition checks ......");
        driver.findElement(By.className("header-logo")).click();
        Assert.assertTrue("Checking the welcome message shown ", driver.findElement(By.tagName("body")).getText().contains("Welcome to our store"));
    }

    @After
    public void afterStep()
    {
        System.out.println("Post condition checks ......");
    }

    @Given("^I am on a Registration Page blah$")
    public void nonsense() throws Throwable {

        driver.findElement(By.className("ico-register")).click();

    }


    @When("^I enter the personal details as \"(.*?)\", \"(.*?)\",\"(.*?)\" and \"(.*?)\"$")
    public void personalDetails(String First_Name, String Last_Name, String email, String Company_Name) throws Throwable {
        Random random = new Random();
        driver.findElement(By.id("FirstName")).sendKeys(First_Name);
        driver.findElement(By.id("LastName")).sendKeys(Last_Name);
        String emailId = random.nextInt()+email;
        System.out.println(emailId);
        driver.findElement(By.id("Email")).sendKeys(random.nextInt()+emailId);
        driver.findElement(By.id("Company")).sendKeys(Company_Name);

    }

    @When("^An active Newsletter \"(.*?)\"$")
    public void an_active_Newsletter(String status) throws Throwable {

       // if(driver.findElement(By.className("Newsletter")).getAttribute("checked")
    }

    @When("^Enter password as \"(.*?)\" and \"(.*?)\"$")
    public void enter_password_as_and(String password, String confirmPassword) throws Throwable {
        driver.findElement(By.id("Password")).sendKeys(password);
        driver.findElement(By.id("ConfirmPassword")).sendKeys(confirmPassword);
    }


    @When("^press Register$")
    public void press_Register() throws Throwable {

        driver.findElement(By.id("register-button")).click();

    }

    @Then("^I should be able to see a message \"(.*?)\"$")
    public void i_should_be_able_to_see_a_message(String message) throws Throwable {

        System.out.println(message);
        String expected = message;
        String actual = driver.findElement(By.className("result")).getText();

        Assert.assertEquals(expected,actual);

    }


    @After
    public void takeSceenShotMethod(Scenario scenario)
    {
//        if(scenario.isFailed())
//        {
//            System.out.println("Scenario failed");
////            File file = new Fil
//            ((TakesScreenshot)driver).getScreenshotAs()
//        }
    }

}
