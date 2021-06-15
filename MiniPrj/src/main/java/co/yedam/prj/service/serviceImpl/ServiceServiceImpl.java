package co.yedam.prj.service.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import co.yedam.prj.service.service.ServiceService;
import co.yedam.prj.service.vo.ServiceVO;

@Repository("serviceDao")
public class ServiceServiceImpl implements ServiceService {

	@Override
	public List<ServiceVO> serviceSelectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ServiceVO serviceSelect(ServiceVO vo) {
		// TODO Auto-generated method stub
		return null;
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

}
