package springmvcsearch.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import springmvcsearch.model.FormFields;

@Controller
public class FormController {

    @RequestMapping("/complex")
    public String complexForm(){

        return "complex_form";
    }

    @RequestMapping(path="/formhandler",method= RequestMethod.POST)
    public String formHandler(@ModelAttribute("formdata") FormFields formFields , BindingResult bindingResult){

        if(bindingResult.hasErrors()){
            System.out.println("Error in form");
            return "complex_form";
        }

        System.out.println(formFields);
        System.out.println(formFields.getAddress());
        return "success";
    }
}
