package yim.md.fileSetting;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import lombok.extern.log4j.Log4j;

@Log4j
public class FileDownloadView extends AbstractView { // 클래스로 만든 뷰!! jsp가 아니어도 된다.

	public FileDownloadView() {
		setContentType("application/download;charset=utf-8"); //브라우저에게 알려줌. 내가 이런 형식으로 쓸꺼야!
		//application/download; = mime type. 이미 정해져 있는 것.
		
	}
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		File file = (File) model.get("downloadFile"); //다운로드 파일이 넘어옴. 컨트롤러에서 넘겨준 것. 모델 > 파일로 형변환. 
		
		response.setContentType(getContentType());//response는 브라우저에게 대답을 해줄때 쓰는 것. 요청에 대한 응답을 다시 보내줄 때.
		// 우리가 위에서 셋팅한 것을 얘가 가지고 온 것.
		response.setContentLength((int)file.length());
		String value = "attachment; filename="+java.net.URLEncoder.encode(file.getName(), "utf-8")+";";
		response.setHeader("Content-Disposition", value);
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		OutputStream os = response.getOutputStream();
		FileInputStream fis = null; //로컬에 저장된 파일을 읽어서, os로 쓰는 것. 읽기 위해 생성.
		try {
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, os); // fis에 맞물린 파일을 os통해 브라우저에 한방에 쓰는 것.
			//한방에 파일을 쓸 수 있는 좋은 메소드!
			os.flush();
		}catch(IOException ie) {
			log.info("fileDownloadivew ie:"+ie);
		}finally {
			if(fis != null) fis.close();
			if(os != null) os.close();
		}
		
		
	}

}
