package com.docker.backend.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.io.IOException;

@RestController
@RequestMapping("api")
public class UserController {

    @GetMapping("user")
    public String getUser() {
        return "Anand Is Tested On Aws hahahaha";
    }

    @GetMapping("webhook")
    public void executeWebHook() throws IOException {
        Runtime.getRuntime().exec(new String[]{"sh", "./src/redeploy.sh"});
    }
    
}
