package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("getAllUsers")
    public String getAll(Model model) {
        model.addAttribute("users", userRepository.findAll());
        return "users";
    }

    @GetMapping("showAddingNew")
    public String createNewUser(Model model) {
        model.addAttribute("newUser", new User());
        return "create-new";
    }

    @PostMapping("saveUser")
    public String saveUser(@ModelAttribute("newUser") User user) {
        userRepository.save(user);
        return "redirect:/user/getAllUsers";
    }

    @GetMapping("update")
    public String updateUser(@RequestParam("userId") Integer id, Model model) {
        model.addAttribute("newUser", userRepository.getOne(id));
        return "create-new";
    }

    @GetMapping("delete")
    public String deleteUser(@RequestParam("userId") Integer id) {
        userRepository.deleteById(id);
        return "redirect:/user/getAllUsers";
    }

}
