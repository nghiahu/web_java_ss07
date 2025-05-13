package com.example.session07.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product")
public class ProductController {

//    @RequestMapping(value = "/product", method = RequestMethod.GET)
    @GetMapping("/findAll")
    public ModelAndView getAll() {
        //ModelAndView,ModelView,Model
        ModelAndView modelAndView = new ModelAndView("/product");
        return modelAndView;
    }
}
