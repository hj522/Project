package projectfind.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import projectfind.vo.ProjectFindVO;
import util.MyBatisUtil;

public class ProjectFindDAO {
private static ProjectFindDAO instance;
	
	private SqlSession sqlSession;
	
	private ProjectFindDAO() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static ProjectFindDAO getInstance() {
		if(instance == null) {
			instance = new ProjectFindDAO();
		}
		return instance;
	}
	
	// 전체 출력 일반순
	public List<ProjectFindVO> select() {
		List<ProjectFindVO> pjList = sqlSession.selectList("pjfind.selectAll");
		return pjList;
	}
	// 전체 출력 금액 높은 순
	public List<ProjectFindVO> selectBud() {
		List<ProjectFindVO> pjList = sqlSession.selectList("pjfind.allBud");
		return pjList;
	}
	// 전체 출력 최근 등록 순
	public List<ProjectFindVO> selectRegDt() {
		List<ProjectFindVO> pjList = sqlSession.selectList("pjfind.allRegDt");
		return pjList;
	}
	// 외주(도급)만 출력
	public List<ProjectFindVO> checkedProg1() {
		List<ProjectFindVO> pjList = sqlSession.selectList("pjfind.checkProg1");
		return pjList;
	}
	// 기간제(상주)만 출력
	public List<ProjectFindVO> checkedProg2() {
		List<ProjectFindVO> pjList = sqlSession.selectList("pjfind.checkProg2");
		return pjList;
	}
	// 카테고리
	public List<ProjectFindVO> chkcate(String cate) {
		List<ProjectFindVO> list = sqlSession.selectList("pjfind.checkCate", cate);
		return list;
	}
	// 분야
	public List<ProjectFindVO> chkfi(String fi) {
		List<ProjectFindVO> list = sqlSession.selectList("pjfind.checkFi", fi);
		return list;
	}
	// 금액
	public List<ProjectFindVO> chkbud(HashMap<String, Integer> bud) {
		List<ProjectFindVO> list = sqlSession.selectList("pjfind.checkBud", bud);
		return list;
	}
	// 기간
	public List<ProjectFindVO> chkdat(HashMap<String, Integer> dat) {
		List<ProjectFindVO> list = sqlSession.selectList("pjfind.checkDat", dat);
		return list;
	}
	// 전체 검색
	public List<ProjectFindVO> searchAll(HashMap<String, String> search) {
		List<ProjectFindVO> list = sqlSession.selectList("pjfind.searchAll", search);
		return list;
	}
	// 제목 검색
	public List<ProjectFindVO> searchTit(String search) {
		List<ProjectFindVO> list = sqlSession.selectList("pjfind.searchTit", search);
		return list;
	}
	// 내용 검색
	public List<ProjectFindVO> searchWork(String search) {
		List<ProjectFindVO> list = sqlSession.selectList("pjfind.searchWork", search);
		return list;
	}
		
}
