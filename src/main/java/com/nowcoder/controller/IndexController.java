package com.nowcoder.controller;


import com.nowcoder.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * created by nowcoder on 2016/6/26
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    @ResponseBody
    public String index(String msg){
        return "Hello,"+msg;
    }

    @RequestMapping(value={"/profile/{groupId}/{userId}"})
    @ResponseBody
    public String profile(@PathVariable("groupId") String groupId,
                          @PathVariable("userId")int userId,
                          @RequestParam(value="type", defaultValue="1") int type,
                          @RequestParam(value="key",defaultValue="nowcoder")String key){
        return String.format("GID{%s},UID{%d},TYPE{%d},KEY{%s}",groupId,userId,type,key);
    }
    @RequestMapping(value={"/news"})
    public String news(Model model){
       model.addAttribute("value1","vv1");
       List<String> colors= Arrays.asList(new String[] {"RED","GREEN","BLUE"});
       Map<String,String> map=new HashMap<String,String>();
       for(int i=0;i<4;i++){
           map.put(String.valueOf(i),String.valueOf(i*i));
       }
        model.addAttribute("colors",colors);
        model.addAttribute("map",map);
        model.addAttribute("user",new User("jim"));
        return "news";
    }

    @RequestMapping(value={"/request"})
    @ResponseBody
    public String request(HttpServletRequest request,
                          HttpServletResponse response,
                          HttpSession session){
    StringBuilder sb=new StringBuilder();
    Enumeration<String> headerNames=request.getHeaderNames();
    while(headerNames.hasMoreElements()){
        String name=headerNames.nextElement();
        sb.append(name+":"+request.getHeader(name)+"<br>");
    }
    for(Cookie cookie:request.getCookies()){
        sb.append(("Cookie:"));
        sb.append(cookie.getValue());
        sb.append(":");
        sb.append(cookie.getValue());
        sb.append("<br>");
    }

    sb.append("getMethod:"+request.getMethod()+"<br>");
    return sb.toString();
    }
}
