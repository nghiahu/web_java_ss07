package com.example.session07.controller;

import com.example.session07.model.Feedback;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class FormController {
    private List<Feedback> feedbackList = new ArrayList<>();

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("feedback", new Feedback());
        return "form";
    }

    @RequestMapping(value = "/submit", method = RequestMethod.POST, produces = "text/html; charset=UTF-8")
    public String submitForm(@ModelAttribute("feedback") Feedback feedback, Model model) {
        List<String> errors = new ArrayList<>();
        if (feedback.getFullName() == null || feedback.getFullName().trim().isEmpty()) {
            errors.add("Họ và tên không được để trống.");
        }
        if (feedback.getPhone() != null && !feedback.getPhone().matches("\\d{9,11}")) {
            errors.add("Số điện thoại phải là số và có độ dài từ 9 đến 11 chữ số.");
        }
        if (feedback.getContent() == null || feedback.getContent().trim().isEmpty()) {
            errors.add("Nội dung góp ý không được để trống.");
        }

        if (!errors.isEmpty()) {
            model.addAttribute("errors", errors);
            return "form";
        }
        feedbackList.add(feedback);
        model.addAttribute("feedback", feedback);
        return "result";
    }

    @GetMapping("/list")
    public String listFeedback(Model model) {
        model.addAttribute("feedbackList", feedbackList);
        return "list";
    }
}
