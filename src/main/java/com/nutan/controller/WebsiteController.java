package com.nutan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/website")
public class WebsiteController {
    @GetMapping("/home")
    public String home(){

        return "/website/home";
    }

    @GetMapping("/login")
    public String login() {
        return "/website/login";
    }

    @GetMapping("/service")
    public String service() {
        return "/website/service";  // This returns the forgot-password.html page
    }

    @GetMapping("/career")
    public String career() {
        return "/website/career";  // This returns the forgot-password.html page
    }

    @GetMapping("/about-us")
    public String about(){

        return "/website/about-us";
    }

    @GetMapping("/contact")
    public String contact(){

        return "/website/contact";
    }



    @GetMapping("/forgotPassword")
    public String forgotPasswordPage() {
        return "/admission/forgot-password";  // This returns the forgot-password.html page
    }
    @GetMapping("/forgotApplication")
    public String forgotApplicationPage() {
        return "/admission/forgot-application-number";  // This returns the forgot-Application-number.html page
    }
    @GetMapping("/basicInformation")
    public String basicInformation() {
        return "/admission/basic-information";  // This returns the forgot-Application-number.html page
    }
  
    @GetMapping("/basicDetails")
    public String basicDetails() {
        return "/admission/basic-details";
    }
    @GetMapping("/qualificationDetails")
    public String qualificationDetails() {
        return "/admission/qualification-details";
    }
    @GetMapping("/signPhoto")
    public String signPhoto() {
        return "/admission/sign-photo";
    }
    @GetMapping("/previewPage")
    public String previewPage() {
        return "/admission/preview";
    }
    @GetMapping("/paymentPage")
    public String paymentPage() {
        return "/admission/payment";
    }
    @GetMapping("/paymentPreview")
    public String paymentPreview() {
        return "/admission/preview-after-payment";
    }
    @GetMapping("/printApplication")
    public String printApplication() {
        return "/admission/print-application-form";
    }


}
