package yim.md.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface DragdropService {
	Map<String, List<Object>> getUpdateFileName();
	MultipartHttpServletRequest getMultipartRequest();
	void setMultipartRequest(MultipartHttpServletRequest multipartRequest);
	
}
