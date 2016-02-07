package venus.regression;

import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import venus.Env;

/**
 * Created by sriramangajala on 07/02/16.
 */
public class BaseTest {
    public static WebDriver driver;

    @BeforeClass
    public static void start()
    {
        System.out.println("Starting browser ......"+ Env.browser);
        driver = new FirefoxDriver();

        System.out.println("Opening the home page......"+Env.homeURL);

        driver.get(Env.homeURL);

        System.out.println("Checking the home page is shown......");
        Assert.assertTrue("Checking the welcome message shown ",driver.findElement(By.tagName("body")).getText().contains("Welcome to our store"));

    }

    @AfterClass
    public static void stop()
    {
        driver.close();
        driver.quit();
    }
}
