package springmvcsearch.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {


    @RequestMapping("user/{name}")
    public String getUserId(@PathVariable("name") String name){
        System.out.println(name);
        Integer.parseInt(name);
        return "home";
    }


    @RequestMapping("/home")
    public String home(){
        System.out.println("Home view");
        int arr[] = {1,2};
        System.out.println(arr[19]);
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

//    @ExceptionHandler(value = NullPointerException.class)
//    public String nullExceptionHandler(Model m){
//        m.addAttribute("msg","Null Pointer exception occurred");
//        return "exception";
//    }
//
//    @ExceptionHandler(value = NumberFormatException.class)
//    public String formatExceptionHandler(Model m){
//        m.addAttribute("msg","Number Format Exception has occurred");
//        return "exception";
//    }
//
//    @ExceptionHandler(value = Exception.class)
//    public String exceptionHandler(Model m){
//        m.addAttribute("msg","Exception has occurred");
//        return "exception";
//    }
}
