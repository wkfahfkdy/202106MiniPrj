package co.yedam.prj.bread.service;

import java.util.List;


import co.yedam.prj.bread.vo.BreadVO;


public interface BreadService {
	public List<BreadVO> breadSelectList(); //빵 리스트(샵 내)
	public List<BreadVO> breadRankList(); // 빵 랭크 리스트
	
	public int BreadInsert(BreadVO vo); // 빵 추가
	public int BreadDelete(BreadVO vo); // 빵 삭제
	public int BreadUpdate(BreadVO vo); // 빵 수정
	
	
	//VO를 스토어 / 빵으로 나눠야하는건지 고민 
	public List<BreadVO> storeSelectList(); //스토어 리스트
	public List<BreadVO> storeRankList(); //좋아요 순위 스토어 리스트
	public List<BreadVO> storeOpenList(); //신규 오픈 스토어 리스트 
	public List<BreadVO> breadStoreList_1(); // 동구
	public List<BreadVO> breadStoreList_2(); // 수성구
	public List<BreadVO> breadStoreList_3(); // 중구
	public List<BreadVO> breadStoreList_4(); // 서구
	public List<BreadVO> breadStoreList_5(); // 달서구
	public List<BreadVO> breadStoreList_6(); // 달성군
	public List<BreadVO> breadStoreList_7(); // 북구
	public List<BreadVO> breadStoreList_8(); // 칠곡
	public List<BreadVO> breadStoreList_9(); // 남구
	
	public int StoreInsert(BreadVO vo); // 스토어 추가
	public int StoreDelete(BreadVO vo); // 스토어 삭제
	public int StoreUpdate(BreadVO vo); // 스토어 수정
	
	
}
