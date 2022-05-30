package yim.md.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import lombok.extern.log4j.Log4j;
import yim.md.fileSetting.path;

@Log4j
@Service
public class FileUploadServiceImpl implements FileUploadService {

	@Override
	public String saveStore(MultipartFile file) {
		//파일이름에 _ 붙이고 확장자 붙이자. ex) a.jpg > a_시간.jpg 이런식으로 (시간이 있어서 겹치지 않음)
		
		String ofname = file.getOriginalFilename(); // 파일 본명을 가져오고
		int idx = ofname.lastIndexOf(".");// 본명에서 . 의 인덱스 위치 파악
		String ofheader = ofname.substring(0,idx); // 0 이상 idx 미만 > 미만의 모든것 (확장자를 제외한 파일명)
		String ext = ofname.substring(idx); // . 을 포함한 모든것 (.부터 확장자까지)
		long ms = System.currentTimeMillis(); // 1970년도 1월1일부터 현재까지의 시간이 1/1000 초 단위로 가져옴.
		StringBuilder sb = new StringBuilder(); //스트링 버퍼나 빌더를 쓰면 좋움 (문자열을 합칠때). + 연산자는 기호는 간단하지만 속도가 느림. 그래서 더 빠른것 사용.
		sb.append(ofheader);
		sb.append("_");
		sb.append(ms);
		sb.append(ext);
		String saveFileName = sb.toString();// sb가 모여있던 내용물이 String 형태로 바뀜.
		
		long fsize = file.getSize(); //가져온 파일의 사이즈 측정.
		log.info("## ofname: "+ofname+", saveFileName: "+saveFileName+" fsize: "+fsize);
		boolean flag = writeFile(file,saveFileName);
		//saveFileName 은 상수로 정의하는게 좋음.
		//yim.md.fileSetting
		if(flag) { // 업로드 성공이면.
			log.info("업로드 성공!");
		}else {
			log.info("업로드 실패!");
		}
		return path.FILE_STORE+saveFileName;
	}

	@Override
	public boolean writeFile(MultipartFile file, String saveFileName) { // 기능을 분리하기위해 나눔. 업로딩기능 특화
		File rDir = new File(path.FILE_STORE);
		if(!rDir.exists()) rDir.mkdirs();
		FileOutputStream fos = null;
		try {
			byte data[] = file.getBytes();// 파일 객체의 바이트를 가져옴. 바이트 배열이 나옴.
			fos = new FileOutputStream(path.FILE_STORE+saveFileName);
			fos.write(data);// 읽었던 데이터를 해당 경로에 쓴다. 
			fos.flush();
			return true;
		}catch(IOException ie) {
			return false;
		}finally {
			try {
				if(fos != null) fos.close(); 
			}catch(IOException ie) {}
		}
	}
}
