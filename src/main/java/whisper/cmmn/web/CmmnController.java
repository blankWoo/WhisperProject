package whisper.cmmn.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CmmnController {
    @RequestMapping(value="/cmmn/header.do")
    public String header(){
        return "webs/cmmn/header";
    }

    @RequestMapping(value="/cmmn/footer.do")
    public String footer(){
        return"webs/cmmn/footer";
    }

    @RequestMapping(value="/cmmn/menu.do")
    public String menu(){
        return"webs/cmmn/menu";
    }



}
