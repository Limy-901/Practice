package yim.md.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j;
import yim.md.fileSetting.path;

@Log4j
@Service
public class DragdropServiceImpl implements DragdropService {
	private Map<String, List<Object>> map; 
	private MultipartHttpServletRequest multipartRequest;
	private String fileStore = path.FILE_STORE;

	@Override
	public Map<String, List<Object>> getUpdateFileName() {
		upload(); //파일 로딩해서 이름,경로 등을 맵에 셋팅하는 함수
		//saveToDb(map) // 만약 디비에 저장을 한다면.
		return map;
	}

	@Override
	public MultipartHttpServletRequest getMultipartRequest() {
		return multipartRequest;
	}

	@Override
	public void setMultipartRequest(MultipartHttpServletRequest multipartRequest) {
		this.multipartRequest = multipartRequest;
	}
	
	private void upload() {
		map = new Hashtable<String, List<Object>>();
		Iterator<String> itr =  multipartRequest.getFileNames();
		List<Object> ofnames = new ArrayList<Object>();
		List<Object> saveFileNames = new ArrayList<Object>();
		List<Object> fsizes = new ArrayList<Object>();
		StringBuilder sb = null;
		while(itr.hasNext()) {
			sb = new StringBuilder();
			MultipartFile mpf = multipartRequest.getFile(itr.next());// 이터 다음객체 리턴
			String ofname = mpf.getOriginalFilename();
			String saveFileName = sb.append(new SimpleDateFormat("yyyyMMddhhmmss") // 이걸 current타이븡로 바꾸고
					.format(System.currentTimeMillis()))
					.append(UUID.randomUUID().toString()) // UUID라는 고유한 숫자로 (겹치지않는) 포함해주고
					.append(ofname.substring(ofname.lastIndexOf("."))).toString(); // 확장자 붙여주고
			long fsize = mpf.getSize();
			log.info("## Drag&drop upload()"+ofname+", savefname : "+saveFileName+", fsize: "+fsize);
			String fileFullPath = fileStore+saveFileName;
			// FILE_STORE = "C:/LYM/upload/tmp/ + saveFileName
			try {
				mpf.transferTo(new File(fileFullPath));
				ofnames.add(ofname);
				saveFileNames.add(saveFileName);
			}catch(IOException ie) {
				log.info("upload() 에러발생"+ie);
			}
		}
		// 파일 리스트들 셋팅
		map.put("ofnames", ofnames); 
		map.put("saveFileNames",saveFileNames);  
		map.put("fsizes",fsizes);
		
	}

}
