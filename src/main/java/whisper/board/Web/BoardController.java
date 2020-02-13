package whisper.board.Web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

    @RequestMapping(value="/board/boardMain.do")
    public String boardMain(){
        return "webs/board/boardMain";
    }
}
