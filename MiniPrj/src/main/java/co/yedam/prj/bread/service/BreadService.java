package co.yedam.prj.bread.service;

import java.util.List;


import co.yedam.prj.bread.vo.BreadVO;


public interface BreadService {
	public List<BreadVO> breadSelectList(BreadVO vo); //빵 리스트(샵 내)
	public List<BreadVO> breadSelectListPaging(BreadVO vo); //빵 리스트(샵 내) 페이징 처리 해야하나?
	
	public List<BreadVO> breadRankList(BreadVO vo); // 빵 랭크 리스트
	
	public int breadInsert(BreadVO vo); // 빵 추가
	public int breadDelete(BreadVO vo); // 빵 삭제
	public int breadUpdate(BreadVO vo); // 빵 수정
	
	
	//VO를 스토어 / 빵으로 나눠야하는건지 고민 
	
	public int storeInsert(BreadVO vo); // 스토어 추가
	public int storeDelete(BreadVO vo); // 스토어 삭제
	public int storeUpdate(BreadVO vo); // 스토어 수정
	
<<<<<<< HEAD
	public BreadVO storeSelectAll(BreadVO vo);
=======
	
	public BreadVO storeAdr(BreadVO vo);	// 스토어 주소 가져오기
>>>>>>> branch 'master' of https://github.com/wkfahfkdy/202106MiniPrj.git
	public BreadVO storeSelect(BreadVO vo); //스토어 셀렉트(빵 페이지 하단 스토어)
	public List<BreadVO> storeTopThree();
	
	
	public int storeInformUpdate(BreadVO vo); // 스토어 INFORM 수정
	
	
	
	public List<BreadVO> storeSelectList(BreadVO vo); //스토어 리스트(메뉴 나옴)
	
	
	public List<BreadVO> storeSelectListPaging(BreadVO vo); //스토어 리스트 페이징
	
	
	public List<BreadVO> storeRankList(BreadVO vo); //좋아요 순위 스토어 리스트
	public List<BreadVO> storeOpenList(BreadVO vo); //신규 오픈 스토어 리스트 
	public List<BreadVO> breadStoreList_1(BreadVO vo); // 동구
	public List<BreadVO> breadStoreList_2(BreadVO vo); // 수성구
	public List<BreadVO> breadStoreList_3(BreadVO vo); // 중구
	public List<BreadVO> breadStoreList_4(BreadVO vo); // 서구
	public List<BreadVO> breadStoreList_5(BreadVO vo); // 달서구
	public List<BreadVO> breadStoreList_6(BreadVO vo); // 달성군
	public List<BreadVO> breadStoreList_7(BreadVO vo); // 북구
	public List<BreadVO> breadStoreList_8(BreadVO vo); // 칠곡
	public List<BreadVO> breadStoreList_9(BreadVO vo); // 남구
	
	
	
}
