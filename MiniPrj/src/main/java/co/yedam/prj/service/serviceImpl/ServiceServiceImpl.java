package co.yedam.prj.service.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.service.service.ServiceService;
import co.yedam.prj.service.vo.ServiceVO;

@Repository("serviceDao")
public class ServiceServiceImpl implements ServiceService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ServiceVO> serviceSelectList() {

		return sqlSession.selectList("serviceSelectList");
	}

	@Override
	public ServiceVO serviceSelect(ServiceVO vo) {

		return sqlSession.selectOne("serviceSelect", vo);
	}

	@Override
	public int insertService(ServiceVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateService(ServiceVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteService(ServiceVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ServiceVO> serviceSelectList(ServiceVO vo) {

		return sqlSession.selectList("ceoServiceList", vo);
	}

}
