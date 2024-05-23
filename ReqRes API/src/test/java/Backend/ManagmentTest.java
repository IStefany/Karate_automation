package Backend;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


public class ManagmentTest {
    @Test
    void testParallel() {
        Results
                results = Runner
                .path(
                        "classpath:Backend"
                ).outputCucumberJson(true).tags(
                        "~@ignore"
                ).parallel(1);
        generateReport(results.getReportDir());
    }

    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles =
                FileUtils.listFiles(new File(karateOutputPath), new String[]{"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config;
        config = new Configuration(new File("build"),"ReqRes API");
        ReportBuilder
                reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }



}