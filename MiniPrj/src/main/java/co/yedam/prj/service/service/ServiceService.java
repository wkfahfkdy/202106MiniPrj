package co.yedam.prj.service.service;

import java.util.List;

import co.yedam.prj.service.vo.ServiceVO;

public interface ServiceService {
	public List<ServiceVO> serviceSelectList();
	public List<ServiceVO> serviceSelectList(ServiceVO vo);
	public ServiceVO serviceSelect(ServiceVO vo);
	public int insertService(ServiceVO vo);
	public int updateService(ServiceVO vo);
	public int deleteService(ServiceVO vo);
}
