package inquery.service;

import java.util.List;

import inquery.vo.InqueryVO;
import reply.vo.ReplyVO;

public interface IInqueryService {
	
	public int RegisterInquery(InqueryVO iv);
	
	public List<InqueryVO> getAllInqueryList();
	
	public InqueryVO getInquery(int inNum);
	
	public int removeInquery(int inNum);
	
	public int modifyInquery(InqueryVO iv);

	public List<InqueryVO> getMyInqueryP(String partId);
	
	public List<InqueryVO> getMyInqueryC(String clId);
	
}
