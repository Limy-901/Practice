package yim.md.controller;

import java.io.File;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import yim.md.fileSetting.path;
import yim.md.service.FileUploadService;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/file")
public class FileController {
	private FileUploadService service; //오토인젝션 by @AllArgsConstructor
	
	@GetMapping("form.do")
	public String formFu() { //파일 폼으로 이동만 함.
		return "file/form";
	}
	
	@PostMapping("upload.do")
	public String upload(@RequestParam String name, @RequestParam MultipartFile file) {
		String ofname = file.getOriginalFilename();
		if(ofname != null) ofname = ofname.trim();
		if(ofname.length() != 0) { // 이름이 존재하면 서비스 통해 파일 업로드 하자.
			String url = service.saveStore(file); // 절대경로리턴.
		}
		return "redirect:list.do";
	}
	@PostMapping("upload_mt.do")
	public String uploadMt(@RequestParam ArrayList<MultipartFile> files) {
		for(MultipartFile file : files) {
			String ofname = file.getOriginalFilename();
			if(ofname != null) ofname = ofname.trim();
			if(ofname.length() != 0) service.saveStore(file); // 절대경로리턴.
		}
		return "redirect:list.do";
	}
	
	@GetMapping("list.do")
	public ModelAndView fileList() {
		File fStore = new File(path.FILE_STORE);
		if(!fStore.exists()) fStore.mkdirs();
		File files[] = fStore.listFiles();//파일스토어의 자식들을 가져옴.
		return new ModelAndView("file/list","files",files);
	}
	
	@GetMapping("del.do")
	public String del(@RequestParam String fname) {
	    File file = new File(path.FILE_STORE, fname);
	    if(file.exists()) file.delete(); // 존재하면 delete.
		return "redirect:list.do";
	}
	
	@GetMapping("form_mt.do")
	public String formFuMt() {
		return "file/form_mt";
	}
	
	@GetMapping("download.do")
	public ModelAndView download(@RequestParam String fname) {
		File file = new File(path.FILE_STORE, fname);
		if(file.exists()) {
			return new ModelAndView("fileDownloadView","downloadFile", file);
		}else {
			return new ModelAndView("redirect:list.do");
		}
	}
}
