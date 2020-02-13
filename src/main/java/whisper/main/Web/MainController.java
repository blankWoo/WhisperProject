package whisper.main.Web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping(value = "/main/main.do")
    public String mainView() throws Exception{
        return "/webs/main/MainView";
    }
}
