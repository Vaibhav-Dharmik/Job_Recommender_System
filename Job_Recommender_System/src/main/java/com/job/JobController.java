package com.job;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import job.beans.EduReg;
import job.beans.JavaFuns;
import job.beans.JobReg;
import job.beans.Login;
import job.beans.UserReg;
 
@Controller
public class JobController implements ErrorController{
	
	@RequestMapping("/fromPythonClust")
	public String fromPythonClust(HttpServletRequest request)
	{
		
		return "user2.jsp?userid="+request.getParameter("userid").toString().trim();
	}
	@RequestMapping("/home")
	public String index()
	{
		return "index.jsp";
	}
	@RequestMapping("/Registration")
	public String Registration(UserReg stu,HttpServletRequest request)
	{
		 try
		 {MultipartFile file=stu.getFile();
		 String filepath=request.getServletContext().getRealPath("/")+"/Resumes/";
		 
		 
		 System.out.println("path="+filepath);
		 File f=new File(filepath);
		 f.mkdir();
		  
		 try {
			  
			 String fileName=stu.getUserid()+"."+ file.getOriginalFilename().split("\\.")[1];
			 file.transferTo(new File(filepath+"/"+fileName));
			 stu.setResume(fileName);
			 
			 if(stu.registration())
             {
             	return("Success.jsp?type=Reg");
             }
             else
             {
             	return("Failure.jsp?type=Reg");
             }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 return("Failure.jsp?type=Reg");
		}}
		 catch (Exception e) {
				// TODO: handle exception
			 return("Failure.jsp?type=Reg");
			}
		    
			  
		}
	 
	@RequestMapping("/JobRegistration")
	public String JobRegistration(HttpServletRequest request)
	{
		try
		 {
			 JobReg obj=new JobReg();
			 HttpSession ses=request.getSession();
			 obj.setCompany(request.getParameter("txtcompany").toString());
			 obj.setSscpercent(Double.parseDouble(request.getParameter("txtssc").toString()));
			 obj.setHscpercent(Double.parseDouble(request.getParameter("txthsc").toString()));
			 obj.setOtherpercent(Double.parseDouble(request.getParameter("txtoverall").toString()));
			 obj.setAgelim(Integer.parseInt(request.getParameter("txtagelimit").toString()));
			 obj.setMinexp(Double.parseDouble(request.getParameter("txtminexp").toString()));
			 obj.setPrevdesig(request.getParameter("txtprevdesig").toString());
			 obj.setSal(Double.parseDouble(request.getParameter("txtsal").toString()));
			 obj.setWcity(request.getParameter("wcity").toString());
			 obj.setBond1(request.getParameter("txtbond").toString());
			 obj.setDesig(request.getParameter("txtdesig").toString());
			 String[] str=request.getParameterValues("txtcourse");
			 String reqcourse="";
			 for(int i=0;i<str.length;i++)
				 {
				 if(i==0)
					 reqcourse=str[i].trim();
				 else
					 reqcourse+=","+str[i].trim();
				 }
			 System.out.println("reqcourse="+reqcourse);
			 obj.setReqcourse(reqcourse);
			 obj.setIntdt(request.getParameter("txtdttm").toString());
			 obj.setInttm(request.getParameter("txtdttm").toString());
			 obj.setMobile(request.getParameter("txtmobile").toString());
			 obj.setContactper(request.getParameter("txtcontact").toString());
			 if(obj.JobRegistration())
			 {
				 int ssc=(int)Double.parseDouble(request.getParameter("txtssc").toString());
				 int hsc=(int)Double.parseDouble(request.getParameter("txthsc").toString());
				 int other=(int)Double.parseDouble(request.getParameter("txtoverall").toString());
				 int minage=(int)Double.parseDouble(request.getParameter("txtagelimit").toString());
				 int exp=(int)Double.parseDouble(request.getParameter("txtminexp").toString());
				 int cnt=1;
				 for(int i=ssc;i<100;i++)
				 {
					 obj.setSscpercent((double)i);
					 obj.setHscpercent(obj.getHscpercent()+cnt);
					 obj.setOtherpercent(obj.getOtherpercent()+cnt);
					 if(obj.getAgelim()-cnt<21)
					 {
						 obj.setAgelim(obj.getAgelim());
					 }
					 else
					 obj.setAgelim(obj.getAgelim()-cnt);
					 if((obj.getMinexp()+cnt)>60)
					 {
						 obj.setMinexp(obj.getMinexp());
					 }
					 else
					 obj.setMinexp(obj.getMinexp()+cnt);
					 obj.JobRegistration1();
				 }
				 
				 return("Success.jsp?type=Job");
			 }
			 else
			 {
				 return("Failure.jsp?type=Job");
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 return("Failure.jsp?type=Job");
		}
	}
	@RequestMapping("/EduRegistration")
	public String EduRegistration(EduReg obj, HttpServletRequest request)
	{
		 try
		 {
			 HttpSession ses=request.getSession();
			 obj.setUserid(ses.getAttribute("userid").toString().trim());
			 obj.setCourse(request.getParameter("txtcourse").toString());
			 obj.setUniversity(request.getParameter("txtuni").toString());
			 obj.setPassingyr(request.getParameter("txtpassingyr").toString());
			 obj.setPercent(Double.parseDouble(request.getParameter("txtpercent").toString()));
			
			 MultipartFile file=obj.getFile();
		  
		 String filepath=request.getServletContext().getRealPath("/")+"/Uploads/";
		 
		 
		 System.out.println("path="+filepath);
		 File f=new File(filepath);
		 f.mkdir();
		  
		 try {
			  JavaFuns jf=new JavaFuns();
			  int id=jf.FetchMax("eduId", "edudetails");
			 String fileName=id+"."+ file.getOriginalFilename().split("\\.")[1];
			 file.transferTo(new File(filepath+"/"+fileName));
			 obj.setPath(fileName);
			 
		 }
		 catch (Exception e) {
			// TODO: handle exception
		 }  
		 
			  
			  if(obj.eduRegistration())
			 {
				 return("Success.jsp?type=Edu");
			 }
			 else
			 {
				 return("Failure.jsp?type=Edu");
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 return("Failure.jsp?type=Edu");
		}
	}
	@RequestMapping("/Authenticator")
	public String Authenticator(HttpServletRequest request)
	{
		try
		 {
			 HttpSession ses=request.getSession(true);
			 Login obj=new Login();
			 if(obj.chkAuthentication(request.getParameter("txtuserid").trim(), request.getParameter("txtpass").trim()))
			 {
				 ses.setAttribute("userid", obj.getUserid());
				 System.out.println("userid="+obj.getUserid());
				 System.out.println("userid="+obj.getuType());
				 System.out.println("userid="+obj.getUserName());
				 ses.setAttribute("utype", obj.getuType());
				 ses.setAttribute("username", obj.getUserName());
				 return( obj.getuType()+".jsp");
			 }
			 else
			 { 
				 return("Failure.jsp?type=Auth");
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 return("Failure.jsp?type=Auth");
		}
	}
	 @RequestMapping("/error")
	    public String handleError() {
	        //do something like logging
			return "college";
	    }
	  
	    public String getErrorPath() {
	        return "/error";
	    }
			  
}
