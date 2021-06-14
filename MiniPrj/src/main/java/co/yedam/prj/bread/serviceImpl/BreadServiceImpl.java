package co.yedam.prj.bread.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.bread.service.BreadService;
import co.yedam.prj.bread.vo.BreadVO;

@Repository("breadDao")
public class BreadServiceImpl implements BreadService{

	@Autowired
	private SqlSession SqlSession;

	@Override
	public List<BreadVO> breadSelectList() {
		return SqlSession.selectList("breadList");
	}

	@Override
	public List<BreadVO> breadRankList() {
		
		return SqlSession.selectList("breadRankList");
	}

	@Override
	public int breadInsert(BreadVO vo) {
		return SqlSession.insert("breadInsert", vo);
	}

	@Override
	public int breadDelete(BreadVO vo) {
	return SqlSession.insert("breadDelete", vo);
	}

	@Override
	public int breadUpdate(BreadVO vo) {
		return SqlSession.update("breadUpdate", vo);
	}

	@Override
	public int storeInsert(BreadVO vo) {
		return SqlSession.insert("storeInsert", vo);
	}

	@Override
	public int storeDelete(BreadVO vo) {
		return SqlSession.delete("storeDelete", vo);
	}

	@Override
	public int storeUpdate(BreadVO vo) {
		return SqlSession.update("storeUpdate", vo);
	}

	@Override
	public List<BreadVO> storeSelectList() {
	return SqlSession.selectList("storeList");
	}

	@Override
	public List<BreadVO> storeRankList() {
	return SqlSession.selectList("storeRankList");
	}

	@Override
	public List<BreadVO> storeOpenList() {
		return SqlSession.selectList("storeOpenList");
	}

	@Override
	public List<BreadVO> breadStoreList_1() {
		return SqlSession.selectList("breadStoreList_1");
	}

	@Override
	public List<BreadVO> breadStoreList_2() {
		return SqlSession.selectList("breadStoreList_2");
	}

	@Override
	public List<BreadVO> breadStoreList_3() {
		return SqlSession.selectList("breadStoreList_3");
	}

	@Override
	public List<BreadVO> breadStoreList_4() {
		return SqlSession.selectList("breadStoreList_4");
	}

	@Override
	public List<BreadVO> breadStoreList_5() {
		return SqlSession.selectList("breadStoreList_5");
		}

	@Override
	public List<BreadVO> breadStoreList_6() {
		return SqlSession.selectList("breadStoreList_6");
	}

	@Override
	public List<BreadVO> breadStoreList_7() {
		return SqlSession.selectList("breadStoreList_7");
	}

	@Override
	public List<BreadVO> breadStoreList_8() {
		return SqlSession.selectList("breadStoreList_8");
	}

	@Override
	public List<BreadVO> breadStoreList_9() {
		return SqlSession.selectList("breadStoreList_9");
	}



}
