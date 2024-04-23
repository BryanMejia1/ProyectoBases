package hn.unah.bases.proyecto.drive.Controllers;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;


@RestController
@RequestMapping("/GoogleDrive")
public class HomeController {
    
    @GetMapping("/Principal")
    public ModelAndView vistaPrincipal(){
        return new ModelAndView("VistaPrincipal");
    }
    
}
