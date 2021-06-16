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
	private SqlSession SqlSession;

	// 빵 리스트

	@Override
	public List<BreadVO> breadSelectList(BreadVO vo) {
		return SqlSession.selectList("breadSelectList", vo);
	}

	// 빵 리스트 페이징

	@Override
	public List<BreadVO> breadSelectListPaging(BreadVO vo) {
		return SqlSession.selectList("breadSelectListPaging", vo);
	}

	// 빵 랭크 리스트

	@Override
	public List<BreadVO> breadRankList(BreadVO vo) {
		return SqlSession.selectList("breadRankList", vo);
	}

	// 빵 추가 삭제 수정

	@Override
	public int breadInsert(BreadVO vo) {
		return SqlSession.insert("breadInsert", vo);
	}

	@Override
	public int breadDelete(BreadVO vo) {
		return SqlSession.delete("breadDelete", vo);
	}

	@Override
	public int breadUpdate(BreadVO vo) {
		return SqlSession.update("breadUpdate", vo);
	}

	// 스토어 추가 삭제 수정

	@Override
	public int storeInsert(BreadVO vo) {
		return SqlSession.insert("storeInsert", vo);
	}

	@Override
	public int storeDelete(BreadVO vo) {
		return SqlSession.insert("storeDelete", vo);
	}

	@Override
	public int storeUpdate(BreadVO vo) {
		return SqlSession.insert("storeUpdate", vo);
	}

	// 스토어 셀렉트

	@Override
	public BreadVO storeSelect(BreadVO vo) {
		return SqlSession.selectOne("storeSelect", vo);
	}

	// 스토어 리스트

	@Override
	public List<BreadVO> storeSelectList(BreadVO vo) {
		return SqlSession.selectList("storeSelectList", vo);
	}

	// 스토어 리스트 페이징
	@Override
	public List<BreadVO> storeSelectListPaging(BreadVO vo) {
		return SqlSession.selectList("storeSelectListPaging", vo);
	}

	// 스토어 랭킹

	@Override
	public List<BreadVO> storeRankList(BreadVO vo) {
		return SqlSession.selectList("storeSelectListPaging", vo);
	}

	// 스토어 신규 오픈

	@Override
	public List<BreadVO> storeOpenList(BreadVO vo) {
		return SqlSession.selectList("storeOpenList", vo);
	}

	// 지역별

	@Override
	public List<BreadVO> breadStoreList_1(BreadVO vo) {
		return SqlSession.selectList("breadStoreList_1", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_2(BreadVO vo) {
		return SqlSession.selectList("breadStoreList_2", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_3(BreadVO vo) {
		return SqlSession.selectList("breadStoreList_3", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_4(BreadVO vo) {
		return SqlSession.selectList("breadStoreList_4", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_5(BreadVO vo) {
		return SqlSession.selectList("breadStoreList_5", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_6(BreadVO vo) {
		return SqlSession.selectList("breadStoreList_6", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_7(BreadVO vo) {
		return SqlSession.selectList("breadStoreList_7", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_8(BreadVO vo) {
		return SqlSession.selectList("breadStoreList_8", vo);
	}

	@Override
	public List<BreadVO> breadStoreList_9(BreadVO vo) {
		return SqlSession.selectList("breadStoreList_9", vo);
	}

	@Override
	public BreadVO storeAdr(BreadVO vo) {
		
		return SqlSession.selectOne("storeAdr", vo);
	}

	@Override
	public List<BreadVO> storeTopThree() {
		
		return SqlSession.selectList("storeTopThree");
	}

	@Override
	public BreadVO storeSelectAll(BreadVO vo) {
		
		return SqlSession.selectOne("storeSelectAll", vo);
	}

}
