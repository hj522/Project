package projectfind.service;

import java.util.HashMap;
import java.util.List;

import projectfind.dao.ProjectFindDAO;
import projectfind.vo.ProjectFindVO;

public class ProjectFindService {
	private static ProjectFindService instance;
	private ProjectFindDAO pjDao;

	private ProjectFindService() {
		pjDao = ProjectFindDAO.getInstance();
	}

	public static ProjectFindService getInstance() {
		if (instance == null) {
			instance = new ProjectFindService();
		}
		return instance;
	}
	
	// 전체 출력 일반순
	public List<ProjectFindVO> Allprint() {
		List<ProjectFindVO> pjList = pjDao.select();
		return pjList;
	}
	// 전체 출력 금액 높은 순
	public List<ProjectFindVO> AllBud() {
		List<ProjectFindVO> pjList = pjDao.selectBud();
		return pjList;
	}
	// 전체 출력 최근 등록 순
	public List<ProjectFindVO> AllRegDt() {
		List<ProjectFindVO> pjList = pjDao.selectRegDt();
		return pjList;
	}
	// 외주(도급)만 출력
	public List<ProjectFindVO> prog1() {
		List<ProjectFindVO> pjList = pjDao.checkedProg1();
		return pjList;
	}
	// 외주(도급)만 출력
	public List<ProjectFindVO> prog2() {
		List<ProjectFindVO> pjList = pjDao.checkedProg2();
		return pjList;
	}
	// 카테고리
	public List<ProjectFindVO> checkCate(String cate) {
		List<ProjectFindVO> list = pjDao.chkcate(cate);
		return list;
	}
	// 분야
	public List<ProjectFindVO> checkFi(String fi) {
		List<ProjectFindVO> list = pjDao.chkfi(fi);
		return list;
	}
	// 금액
	public List<ProjectFindVO> checkBud(HashMap<String, Integer> bud) {
		List<ProjectFindVO> list = pjDao.chkbud(bud);
		return list;
	}
	// 기간
	public List<ProjectFindVO> checkDat(HashMap<String, Integer> dat) {
		List<ProjectFindVO> list = pjDao.chkdat(dat);
		return list;
	}
	// 전체 검색
	public List<ProjectFindVO> pjSearchAll(HashMap<String, String> search) {
		List<ProjectFindVO> list = pjDao.searchAll(search);
		return list;
	}
	// 제목 검색
	public List<ProjectFindVO> pjSearchTit(String search) {
		List<ProjectFindVO> list = pjDao.searchTit(search);
		return list;
	}
	// 내용 검색
	public List<ProjectFindVO> pjSearchWork(String search) {
		List<ProjectFindVO> list = pjDao.searchWork(search);
		return list;
	}
}
