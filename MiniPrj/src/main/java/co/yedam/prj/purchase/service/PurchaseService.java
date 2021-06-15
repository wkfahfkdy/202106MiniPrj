package co.yedam.prj.purchase.service;

import java.util.List;

import co.yedam.prj.purchase.vo.PurchaseVO;

public interface PurchaseService {
	public List<PurchaseVO> purchaseSelectList();
	public PurchaseVO purchaseSelect(PurchaseVO vo);
	public int insertPurchase(PurchaseVO vo);
	public int updatePurchase(PurchaseVO vo);
	public int deletePurchase(PurchaseVO vo);
}
