package com.springmvc.fileupload.controller;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {
	
	@RequestMapping("/fileform")
	public String showUploadForm()
	{
		return "fileform";
	}
	
	@RequestMapping(value="/uploadfile",method = RequestMethod.POST)
	public String fileupload(@RequestParam("profile") CommonsMultipartFile file, HttpSession s, Model m)
	{		
		System.out.println("File upload handler");
		
		System.out.println(file.getSize());
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getContentType());
		System.out.println(file.getStorageDescription());
		
		byte[] data = file.getBytes();
		
		//Have to save the file on server.
		
		//Getting the path on server
		String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator +"resources" + File.separator + file.getOriginalFilename();
		System.out.println(path);
		
		//Writing the data at above path.
		try {			
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
			System.out.println("file uploaded");
			
			//To idsplay the file in filesuccess.jsp
			m.addAttribute("msg", "File uploaded successfully");
			m.addAttribute("filename", file.getOriginalFilename());
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error in uploading file");
			m.addAttribute("msg", "File uploaded successfully");
		}

		return "filesuccess";
	}
	
}
