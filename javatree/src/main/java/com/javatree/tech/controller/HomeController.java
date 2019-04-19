package com.javatree.tech.controller;

import com.javatree.tech.model.Post;
import com.javatree.tech.service.PostService;
import com.javatree.tech.util.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    private final PostService postService;
 

  
    
   /* @Autowired
    private PostSearch postSearch;*/

    @Autowired
    public HomeController(PostService postService ) {
        this.postService = postService;
    }

    @GetMapping("/home")
    public String home(@RequestParam(defaultValue = "0") int page,
                       Model model) {

        Page<Post> posts = postService.findAllOrderedByDatePageable(page);
        Pager pager = new Pager(posts);

        model.addAttribute("pager", pager);

        return "/home";
    }
    
//    @RequestMapping("/home/search")
//    public String search(String q, Model model) {
//      List<Post> searchResults = null;
//      try {
//       // searchResults = search.search(q);
//      }
//      catch (Exception ex) {
//        // here you should handle unexpected errors
//        // ...
//        // throw ex;
//      }
//      model.addAttribute("pager", searchResults);
//      return "search";
//    }
    
    
}
