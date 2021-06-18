package co.yedam.prj.bread.service;

import java.util.List;


import co.yedam.prj.bread.vo.BreadVO;



public interface BreadService {
	public List<BreadVO> breadSelectList(BreadVO vo); //빵 리스트(샵 내)
	public List<BreadVO> breadSelectListPaging(BreadVO vo); //빵 리스트(샵 내) 페이징 처리 해야하나?
	
	public List<BreadVO> breadRankList(BreadVO vo); // 빵 랭크 리스트
	
	public int breadInsert(BreadVO vo); // 빵 추가
	public int breadDeleteMenu(BreadVO vo); // 빵 삭제
	public int breadDeleteAll(BreadVO vo);
	public int breadUpdate(BreadVO vo); // 빵 수정
	public int breadMainUpload(BreadVO vo); // BBANG - 메인 빵 사진
	public int dummyBread(BreadVO vo); // 가입 승인 시 더미 데이터 삽입
	
	//VO를 스토어 / 빵으로 나눠야하는건지 고민 
	
	public int storeInsert(BreadVO vo); // 스토어 추가
	public int storeDelete(BreadVO vo); // 스토어 삭제
	public int storeUpdate(BreadVO vo); // 스토어 수정
	public int sImageUpload(BreadVO vo); // 스토어 메인사진
	public List<BreadVO> storeRCode(); // 지역분류코드
	public int storeInform(BreadVO vo); // 스토어 이름 / 매장 코멘트 / 매장 번호 수정

	public BreadVO storeSelectAll(BreadVO vo);


	public BreadVO storeAdr(BreadVO vo);	// 스토어 주소 가져오기
	public BreadVO selectStoreId(BreadVO vo);	// 스토어 아이디 가져오기

	public BreadVO storeSelect(BreadVO vo); //스토어 셀렉트(빵 페이지 하단 스토어)
	public BreadVO storeSelectMP(BreadVO vo);
	
	public List<BreadVO> storeTopThree();
	
	
	public int storeInformUpdate(BreadVO vo); // 스토어 INFORM 수정
	public int breadinsertMenu(BreadVO vo); //스토어 빵 추가
	
	
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
