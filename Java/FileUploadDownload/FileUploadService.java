package yim.md.service;

import org.springframework.web.multipart.MultipartFile;

public interface FileUploadService {
	String saveStore(MultipartFile file); //경로까지 리턴해주려고 String으로 함.
	boolean writeFile(MultipartFile file, String saveFileName); //세이브 스토어를 도와줄 친구. 그 안에서 호출할 예정.
}
