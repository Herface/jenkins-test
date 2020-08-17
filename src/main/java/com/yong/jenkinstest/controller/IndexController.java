package com.yong.jenkinstest.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Hes
 */
@RestController
public class IndexController {

    @GetMapping("index")
    public String index(){
        return "index";
    }
}
