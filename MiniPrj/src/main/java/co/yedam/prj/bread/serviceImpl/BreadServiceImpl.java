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
		// TODO Auto-generated method stub
		return SqlSession.selectList("breadList");
	}

	@Override
	public List<BreadVO> breadRankList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int BreadInsert(BreadVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int BreadDelete(BreadVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int BreadUpdate(BreadVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BreadVO> storeSelectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> storeRankList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> storeOpenList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> breadStoreList_1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> breadStoreList_2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> breadStoreList_3() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> breadStoreList_4() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> breadStoreList_5() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> breadStoreList_6() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> breadStoreList_7() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> breadStoreList_8() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BreadVO> breadStoreList_9() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int StoreInsert(BreadVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int StoreDelete(BreadVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int StoreUpdate(BreadVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	


}
