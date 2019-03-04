package com.coderbd.thymeleaflayoutok;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/bd")
public class HomeControler {
    @GetMapping(value = "/")
    public String displayHome(){
        return "index";
    }

    @GetMapping(value = "/about")
    public String displayAbout(){
        return "about";
    }
}
