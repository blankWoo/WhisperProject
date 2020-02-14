package whisper.board.Service.Impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

//@Repository(value = "boardDAO")
public class BoardDAO{

    private SqlSessionFactory sqlSessionFactory;
//    SqlSession sqlsession = sqlSessionFactory.openSession();

    public String getBoardMain(){
            return "";
//        return sqlsession.selectOne("boardDAO.getBoardMain");
    }




}
