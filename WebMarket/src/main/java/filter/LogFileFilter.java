package filter;

import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.IOException;

public class LogFileFilter implements Filter{
	PrintWriter writer;
	
	public void init(FilterConfig config) throws ServletException{
		String filename = config.getInitParameter("filename");
		
		if(filename == null) {
			throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
		}
		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);
			
		}catch(IOException e) {
			
		}
	}
}
