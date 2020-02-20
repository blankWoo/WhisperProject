package whisper.board.Web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import whisper.board.Service.BoardService;

import javax.annotation.Resource;

@Controller
public class BoardController {

    @RequestMapping(value="/board/boardMain.do")
    public String boardMain()throws Exception{
        //String title = boardService.getBoardMain();
        return "webs/board/boardMain";
    }
}
