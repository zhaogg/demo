package maven.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Hello world!
 *
 */
@Controller
public class App 
{
   @RequestMapping("/index")
   public String index(){
	   return "index";
   }
}
