package whisper.login.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @RequestMapping(value="/login/loginMain.do")
    public String loginMain(){
        return "/webs/login/Login";
    }
}
