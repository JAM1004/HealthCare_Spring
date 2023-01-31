package edu.study.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import edu.study.service.ReplyService;
import edu.study.vo.ReplyVO;

@Controller
@RequestMapping("/medicalTalk/medicalView/reply")
public class ReplyController {
 
	@Autowired
	private ReplyService replyService;
    
	
    @RequestMapping("/list") 
    @ResponseBody
    public List<ReplyVO> replyList(Model model, int bidx) throws Exception{
        
        return replyService.replyList(bidx);
    }
    
    @RequestMapping("/insert") //��� �ۼ� 
    @ResponseBody
    public int replyInsert(@RequestParam int bidx, @RequestParam String pcontent) throws Exception{
        
        ReplyVO ro = new ReplyVO();
        ro.setBidx(bidx);
        ro.setPcontent(pcontent);
        //�α��� ����� �����߰ų� ���� ��� �ۼ��ڸ� �Է¹޴� ���� �ִٸ� �Է� �޾ƿ� ������ ����ϸ� �˴ϴ�. ���� ���� ���� �������� �ʾұ⶧���� �ӽ÷� "test"��� ���� �Է��س����ϴ�.
        ro.setPwriter("test");  
        
        return replyService.replyInsert(ro);
    }
    
    @RequestMapping("/update") //��� ����  
    @ResponseBody
    public int replyUpdate(@RequestParam int pidx, @RequestParam String pcontent) throws Exception{
        
    	ReplyVO ro = new ReplyVO();
        ro.setPidx(pidx);
        ro.setPcontent(pcontent);
        ro.setPwriter("test");  
        
        return replyService.replyUpdate(ro);
    }
    
    
    @RequestMapping("/delete/{pidx}") //��� ����  
    @ResponseBody
    private int replyDelete(@PathVariable int pidx) throws Exception{
        
        return replyService.replyDelete(pidx);
    }
    
}
 
