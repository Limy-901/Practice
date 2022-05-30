package pet.mvc.service;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import lombok.extern.log4j.Log4j;
import pet.mvc.mapper.IndexMapper;
import pet.walk.vo.Walk;

@Service
@Log4j
public class IndexServiceImpl implements IndexService {
	@Autowired
	private IndexMapper indexMapper;
	
	@Override
	public ArrayList<Walk> getWalkList() {
		ArrayList<Walk> items = indexMapper.getWalkList();
		log.info(items);
		return items;
	}

}
