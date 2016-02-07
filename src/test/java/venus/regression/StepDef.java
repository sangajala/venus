package venus.regression;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

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

    @Given("^I am on a Registration Page$")
    public void i_am_on_a_Registration_Page() throws Throwable {
        driver.findElement(By.className("ico-register")).click();

    }

    @When("^I enter the personal details as \"(.*?)\", \"(.*?)\",\"(.*?)\" and \"(.*?)\"$")
    public void i_enter_the_personal_details_as_and(String arg1, String arg2, String arg3, String arg4) throws Throwable {

    }

    @When("^An active Newsletter \"(.*?)\"$")
    public void an_active_Newsletter(String arg1) throws Throwable {

    }

    @When("^Enter password as \"(.*?)\" and \"(.*?)\"$")
    public void enter_password_as_and(String arg1, String arg2) throws Throwable {

    }

    @When("^press Register$")
    public void press_Register() throws Throwable {

    }

    @Then("^I should be able to see a message \"(.*?)\"$")
    public void i_should_be_able_to_see_a_message(String arg1) throws Throwable {

    }

    @Given("^consumer has an account$")
    public void consumer_has_an_account() throws Throwable {

    }

    @When("^he tries to login to his account$")
    public void he_tries_to_login_to_his_account() throws Throwable {

    }

    @Then("^should be able to login successfully$")
    public void should_be_able_to_login_successfully() throws Throwable {

    }

    @Then("^his name should be see the first name$")
    public void his_name_should_be_see_the_first_name() throws Throwable {

    }

    @Given("^I am on a Login Page$")
    public void i_am_on_a_Login_Page() throws Throwable {

    }

    @When("^I enter details as \"(.*?)\" and \"(.*?)\"$")
    public void i_enter_details_as_and(String arg1, String arg2) throws Throwable {

    }

    @When("^An active Remember me \"(.*?)\"$")
    public void an_active_Remember_me(String arg1) throws Throwable {

    }

    @When("^press Login$")
    public void press_Login() throws Throwable {

    }






}
