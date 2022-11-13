package inquery.dao;

import java.util.List;

import inquery.vo.InqueryVO;

public interface IInqueryDAO {
	
	public int insertInquery(InqueryVO iv);
	
	public List<InqueryVO> getAllInqueryList();
	
	public InqueryVO getInquery(int inNum);
	
	public int deleteInquery(int inNum);
	
	public int updateInquery(InqueryVO iv);
	
	public List<InqueryVO> getMyInqueryP(String partId);

	public List<InqueryVO> getMyInqueryC(String clId);

}
