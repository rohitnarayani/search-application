package springmvcsearch.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

@Controller
public class FileUploadController {

    @RequestMapping("/fileupload")
    public String fileUpload(){
        return "fileform";
    }

    @RequestMapping(path="/uploadimage",method= RequestMethod.POST)
    public String uploadimage(@RequestParam("file")CommonsMultipartFile file, HttpSession s, Model model){
        System.out.println("File name: " + file.getOriginalFilename());
        System.out.println("File size: " + file.getSize());
        System.out.println("File content type: " + file.getContentType());
        System.out.println("=====================================");
        System.out.println(file.getStorageDescription());
        System.out.println(file.getName());
        System.out.println();
        System.out.println();
        byte[] data = file.getBytes();
        String path = s.getServletContext().getRealPath("/")+"WEB-INF"+ File.separator+"resources"+File.separator+"images"+File.separator+file.getOriginalFilename();
        System.out.println(path);

        try{
            FileOutputStream fos = new FileOutputStream(path);
            fos.write(data);
            fos.close();
            model.addAttribute("msg","File uploaded successfully: ");
            model.addAttribute("filename",file.getOriginalFilename());
        }
        catch(IOException e){
            e.printStackTrace();
            model.addAttribute("msg","File upload failed: "+e.getMessage());
        }
        return "filesuccess";
    }
}
