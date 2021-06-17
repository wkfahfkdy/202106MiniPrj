package co.yedam.prj.purchase.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.purchase.service.PurchaseService;
import co.yedam.prj.purchase.vo.PurchaseVO;

@Repository("purchaseDao")
public class PurchaseServiceImpl implements PurchaseService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<PurchaseVO> purchaseSelectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PurchaseVO purchaseSelect(PurchaseVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertPurchase(PurchaseVO vo) {
		
		return sqlSession.insert("insertPurchase", vo);
	}

	@Override
	public int updatePurchase(PurchaseVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.update("updatePurchase", vo);
	}

	@Override
	public int deletePurchase(PurchaseVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertPurchaseT(PurchaseVO vo) {
		
		return sqlSession.insert("insertPurchaseT", vo);
	}

	@Override
	public List<PurchaseVO> purchaseSelectList(PurchaseVO vo) {
		
		return sqlSession.selectList("purchaseSelectList", vo);
	}


}
