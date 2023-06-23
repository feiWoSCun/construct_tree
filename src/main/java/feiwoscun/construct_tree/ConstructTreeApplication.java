package feiwoscun.construct_tree;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * @author feiwoscun
 */
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@MapperScan("feiwoscun.construct_tree.mapper")
public class ConstructTreeApplication {

    public static void main(String[] args) {
        SpringApplication.run(ConstructTreeApplication.class, args);
    }

}
