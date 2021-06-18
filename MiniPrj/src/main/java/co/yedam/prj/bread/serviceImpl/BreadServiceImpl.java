package co.yedam.prj.bread.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.bread.service.BreadService;
import co.yedam.prj.bread.vo.BreadVO;


@Repository("breadDao")
public class BreadServiceImpl implements BreadService {

	@Autowired
	private SqlSession sqlSession;

	// 빵 리스트

	@Override
	public List<BreadVO> breadSelectList(BreadVO vo) {
		return sqlSession.selectList("breadSelectList", vo);
	}

	// 빵 리스트 페이징

	@Override
	public List<BreadVO> breadSelectListPaging(BreadVO vo) {
		return sqlSession.selectList("breadSelectListPaging", vo);
	}

	// 빵 랭크 리스트

	@Override
	public List<BreadVO> breadRankList(BreadVO vo) {
		return sqlSession.selectList("breadRankList", vo);
	}

	// 빵 추가 삭제 수정

	@Override
	public int breadInsert(BreadVO vo) {
		return sqlSession.insert("breadInsert", vo);
	}

	

	@Override
	public int breadUpdate(BreadVO vo) {
		return sqlSession.update("breadUpdate", vo);
	}

	// 스토어 추가 삭제 수정

	@Override
	public int storeInsert(BreadVO vo) {
		return sqlSession.insert("storeInsert", vo);
	}

	@Override
	public int storeDelete(BreadVO vo) {
		return sqlSession.insert("storeDelete", vo);
	}

	@Override
	public int storeUpdate(BreadVO vo) {
		return sqlSession.insert("storeUpdate", vo);
	}

	// 스토어 셀렉트

	@Override
	public BreadVO storeSelect(BreadVO vo) {
		return sqlSession.selectOne("storeSelect", vo);
	}

	// 스토어 리스트

	@Override
	public List<BreadVO> storeSelectList(BreadVO vo) {
		return sqlSession.selectList("storeSelectList", vo);
	}
	
	
	// 스토어 랜덤 리스트 (Bbang-All)

		@Override
		public List<BreadVO> storeRandomList(BreadVO vo) {
			return sqlSession.selectList("storeRandomList", vo);
		}

	
		// 스토어 랭킹

		@Override
		public List<BreadVO> storeRankList(BreadVO vo) {
			return sqlSession.selectList("storeRankList", vo);
		}

	

	// 스토어 리스트 페이징
	@Override
	public List<BreadVO> storeSelectListPaging(BreadVO vo) {
		return sqlSession.selectList("storeSelectListPaging", vo);
	}

	
	// 스토어 신규 오픈

	@Override
	public List<BreadVO> storeOpenList(BreadVO vo) {
		return sqlSession.selectList("storeOpenList", vo);
	}

	// 지역별

	@Override
	public List<BreadVO> breadStoreList_1(BreadVO vo) {
		return sqlSession.selectList("breadStoreList_1", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_2(BreadVO vo) {
		return sqlSession.selectList("breadStoreList_2", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_3(BreadVO vo) {
		return sqlSession.selectList("breadStoreList_3", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_4(BreadVO vo) {
		return sqlSession.selectList("breadStoreList_4", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_5(BreadVO vo) {
		return sqlSession.selectList("breadStoreList_5", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_6(BreadVO vo) {
		return sqlSession.selectList("breadStoreList_6", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_7(BreadVO vo) {
		return sqlSession.selectList("breadStoreList_7", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_8(BreadVO vo) {
		return sqlSession.selectList("breadStoreList_8", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_9(BreadVO vo) {
		return sqlSession.selectList("breadStoreList_9", vo);
	}

	@Override
	public BreadVO storeAdr(BreadVO vo) {

		return sqlSession.selectOne("storeAdr", vo);
	}


	@Override
	public int storeInformUpdate(BreadVO vo) {

		return sqlSession.update("storeInformUpdate", vo);
	}

	
	
	
	@Override	
	public List<BreadVO> storeTopThree() {

		return sqlSession.selectList("storeTopThree");
	}

	@Override
	public BreadVO storeSelectAll(BreadVO vo) {

		return sqlSession.selectOne("storeSelectAll", vo);

	}

	@Override
	public int breadinsertMenu(BreadVO vo) {
		return sqlSession.insert("breadInsertMenu",vo);
	}

	@Override
	public BreadVO storeSelectMP(BreadVO vo) {
		
		return sqlSession.selectOne("storeSelectMP",vo);
	}

	@Override
	public BreadVO selectStoreId(BreadVO vo) {
		
		return sqlSession.selectOne("selectStoreId", vo);
	}

	@Override
	public int sImageUpload(BreadVO vo) {
		
		return sqlSession.update("sImageUpload", vo);
	}

	@Override
	public int breadMainUpload(BreadVO vo) {
		
		return sqlSession.update("breadMainUpload", vo);
	}

	@Override
	public List<BreadVO> storeRCode() {
		
		return sqlSession.selectList("storeRCode");
	}

	@Override
	public int storeInform(BreadVO vo) {
		
		return sqlSession.update("storeInform", vo);
	}

	@Override
	public int breadDeleteMenu(BreadVO vo) {
		
		return sqlSession.delete("breadDeleteMenu", vo);
	}

	@Override
	public int dummyBread(BreadVO vo) {
		
		return sqlSession.insert("dummyBread", vo);
	}

	@Override
	public int breadDeleteAll(BreadVO vo) {

		return sqlSession.delete("breadDeleteAll", vo);
	}

	@Override
	public List<BreadVO> storeRandomListT() {
		
		return sqlSession.selectList("storeRandomListT");
	}


}
