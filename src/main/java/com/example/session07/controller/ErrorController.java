package com.example.session07.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {
    public String handleError(HttpServletRequest request) {
        Object statusCode = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        if (statusCode != null) {
            int status = Integer.parseInt(statusCode.toString());
            if (status == 404) {
                return "error";
            }
        }
        return "error";
    }
}
