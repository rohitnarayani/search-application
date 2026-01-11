package springmvcsearch.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {

    @RequestMapping("/home")
    public String home(){
        System.out.println("Home view");
        return "home";
    }

    @RequestMapping(path="/search",method = RequestMethod.POST)
    public RedirectView search(@RequestParam("querybox") String query){

        if(query.isEmpty()){
            return new RedirectView("home");
        }
        String url = "https://www.google.com/search?q=" + query;
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(url);
        return redirectView;
    }
}
