package yim.md.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import yim.md.domain.Address;
import yim.md.mapper.AddressAjaxMapper;

@Service
@AllArgsConstructor 
//@NoArgsConstructor 를 쓸 경우에는 Autowired 를 함께 써줘야 함 
@Log4j
public class AddressAjaxServiceImpl implements AddressAjaxService {
    private AddressAjaxMapper mapper; 
    
	@Override
	public List<Address> listS() {
		return mapper.list();
	}
	@Override
	public void insertS(Address address) {
		mapper.insert(address);
	}
	@Override
	public void deleteS(long seq) {
		mapper.delete(seq);
	}
	
	@Override
	public Address selectBySeqS(long seq) {	
		return mapper.selectBySeq(seq);
	}
	@Override
	public List<Address> selectByNameS(String name) {
		return mapper.selectByName(name);
	}
}
