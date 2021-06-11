package co.yedam.prj.bread.service;

import java.util.List;

import co.yedam.prj.bread.vo.breadVO;

public interface breadService {
	public List<breadVO> breadSelectList(); //빵 리스트(샵 내)
	
	public List<breadVO> breadRankList(); // 빵 랭크 리스트
	
	
	public int insertBread(breadVO vo); // 빵 추가
	public int deleteBread(breadVO vo); // 빵 삭제
	public int updateBread(breadVO vo); // 빵 수정
	
	
	//VO를 스토어 / 빵으로 나눠야하는건지 고민 
	public List<breadVO> storeSelectList(); //스토어 
	
	
	public int insertStore(breadVO vo); // 스토어 추가
	public int deleteStore(breadVO vo); // 스토어 삭제
	public int updateStore(breadVO vo); // 스토어 수정
	
	
}
