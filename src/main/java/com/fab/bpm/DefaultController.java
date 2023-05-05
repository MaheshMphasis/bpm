package com.fab.bpm;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/")
public class DefaultController {

  @GetMapping("/")
  public String welcome() {
        return "welcome"+System.getenv();
  }

  @GetMapping("/user")
  public String getUser() {
    return "welcome to FAB Mahesh";
  }
}
