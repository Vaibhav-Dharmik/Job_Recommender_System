package job.beans;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;
 
 
public class JobReg {
	Connection con;
    CallableStatement csmt;
    PreparedStatement psmt;
    ResultSet rs;
    private String company,prevdesig,wcity,bond1,desig,reqcourse,intdt,inttm,mobile,contactper;
    private int agelim;
    private double hscpercent,sscpercent,otherpercent,minexp,sal;
     
    
    public JobReg(ResultSet rs)
    {
    	try
    	{
    	company=rs.getString("company").trim();
    	sscpercent=Double.parseDouble(rs.getString("sscMinPercent").trim());
    	hscpercent=Double.parseDouble(rs.getString("hscMinPercent").trim());
    	otherpercent=Double.parseDouble(rs.getString("otherPercent").trim());
    	minexp=Double.parseDouble(rs.getString("minexperience").trim());
    	prevdesig=rs.getString("prevdesig").trim();
    	sal=Double.parseDouble(rs.getString("salary").trim()); 
    	wcity=rs.getString("workingCity").trim();
    	bond1=rs.getString("bond").trim();
    	agelim=Integer.parseInt(rs.getString("agelimit").trim());
    	desig=rs.getString("designation").trim();
    	reqcourse=rs.getString("requiredCourses").trim();
    	intdt=rs.getString("interviewDt").trim();
    	inttm=rs.getString("interviewTime").trim();
    	mobile=rs.getString("contactNo").trim();
    	contactper=rs.getString("contactPersonName").trim();
    	}
    	catch (Exception e) {
			// TODO: handle exception
		}
    }
	 
public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPrevdesig() {
		return prevdesig;
	}

	public void setPrevdesig(String prevdesig) {
		this.prevdesig = prevdesig;
	}

	public String getWcity() {
		return wcity;
	}

	public void setWcity(String wcity) {
		this.wcity = wcity;
	}

	public String getBond1() {
		return bond1;
	}

	public void setBond1(String bond1) {
		this.bond1 = bond1;
	}

	public String getDesig() {
		return desig;
	}

	public void setDesig(String desig) {
		this.desig = desig;
	}

	public String getReqcourse() {
		return reqcourse;
	}

	public void setReqcourse(String reqcourse) {
		this.reqcourse = reqcourse;
	}

	public String getIntdt() {
		return intdt;
	}

	public void setIntdt(String intdt) {
		this.intdt = intdt;
	}

	public String getInttm() {
		return inttm;
	}

	public void setInttm(String inttm) {
		this.inttm = inttm;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getContactper() {
		return contactper;
	}

	public void setContactper(String contactper) {
		this.contactper = contactper;
	}

	public int getAgelim() {
		return agelim;
	}

	public void setAgelim(int agelim) {
		this.agelim = agelim;
	}

	public double getHscpercent() {
		return hscpercent;
	}

	public void setHscpercent(double hscpercent) {
		this.hscpercent = hscpercent;
	}

	public double getSscpercent() {
		return sscpercent;
	}

	public void setSscpercent(double sscpercent) {
		this.sscpercent = sscpercent;
	}

	public double getOtherpercent() {
		return otherpercent;
	}

	public void setOtherpercent(double otherpercent) {
		this.otherpercent = otherpercent;
	}

	public double getMinexp() {
		return minexp;
	}

	public void setMinexp(double minexp) {
		this.minexp = minexp;
	}

	public double getSal() {
		return sal;
	}

	public void setSal(double sal) {
		this.sal = sal;
	}

public JobReg() {
	
}
public Vector getValue(String qr,int nocol)
{    
    Vector v=new Vector();
    Connection con=null;
    Statement st;
    ResultSet rs;
    v.clear();
     try{ 
          DBConnector obj=new  DBConnector();
         con=obj.connect();
       st=con.createStatement();
       System.out.println("query="+qr);
       rs=st.executeQuery(qr);
      
       while(rs.next())
       {
           for(int i=1;i<=nocol;i++)
           {
           v.addElement(rs.getString(i));
           System.out.println(rs.getString(i));
           }              
       }
     }
     catch(Exception e)
    {
        System.out.println("Error in processing due to "+e.getMessage());
    }   
      finally
     {
         try{
         con.close();}catch(Exception ex){}
     }
    return(v);        
}
public List<JobReg> getJobDetails2(String userid)
{List<JobReg> lst = new ArrayList<JobReg>();
    try
    {
    	double sminpercent=0;
    	double hminpercent=0;
    	double overallpercent=0;
    	double age=0;
    	double exp=0;
    	String wcity="NA";
    	String cond="NA";
    	Vector vct=getValue("select percent from edudetails where course='SSC' and userid='"+userid+"'" , 1);
    	if(vct.size()>0)
    	{
    		sminpercent=Double.parseDouble(vct.elementAt(0).toString().trim());
    		 
    	}
      vct=getValue("select percent from edudetails where course='HSC' and userid='"+userid+"'" , 1);
    	if(vct.size()>0)
    	{
    		hminpercent=Double.parseDouble(vct.elementAt(0).toString().trim());
    		 
    	}
      vct=getValue("select avg(percent) from edudetails where  userid='"+userid+"'" , 1);
    	if(vct.size()>0)
    	{
    		overallpercent=Double.parseDouble(vct.elementAt(0).toString().trim());
    		 
    	}
    	 vct=getValue("select course from edudetails where userid='"+userid+"'" , 1);
    	if(vct.size()>0)
    	{
    		 for(int i=0;i<vct.size();i++)
    		 {
    			 if(cond=="NA")
    			 {
    				 cond="(find_in_set('"+vct.elementAt(i).toString().trim()+"',requiredCourses)"; 
    			 }
    			 else
    				 cond+=" or find_in_set('"+vct.elementAt(i).toString().trim()+"',requiredCourses) ";
    		 }
    		 cond+=")";
    		 
    	}
    	vct=getValue("select dob,experience,prefcity from userdetails where userid='"+userid+"'" , 3);
    	if(vct.size()>0)
    	{
    		String[]str=vct.elementAt(0).toString().trim().split("\\-");
    		Date dt=new Date();
    		age=(dt.getYear()+1900)-Integer.parseInt(str[0]);
    		minexp=Double.parseDouble(vct.elementAt(1).toString().trim());
    		wcity=(vct.elementAt(2).toString().trim());
    	}
         DBConnector obj=new  DBConnector();
        con=obj.connect();
        String qr="select * from jobs where sscMinPercent<="+sminpercent+" and hscMinPercent<="+hminpercent+" and otherPercent<="+overallpercent+" and agelimit>="+age+" and minexperience<="+exp+" and workingCity='"+wcity+"' and "+cond;
      System.out.println("qr="+qr);
        psmt=con.prepareStatement(qr);
        
         psmt.execute();
         rs=psmt.getResultSet();
                    
        
        	while (rs.next()) {
        	    lst.add(new JobReg(rs));
        	} 
    }
       
     
    catch(Exception ex)
    {
        System.out.println("err="+ex.getMessage());
         
    }
    return lst;
}
public List<JobReg> getJobDetails3(String userid)
{List<JobReg> lst = new ArrayList<JobReg>();
    try
    {
    	double sminpercent=0;
    	double hminpercent=0;
    	double overallpercent=0;
    	double age=0;
    	double exp=0;
    	String wcity="NA";
    	String cond="NA";
    	Vector vct=getValue("select percent from edudetails where course='SSC' and userid='"+userid+"'" , 1);
    	if(vct.size()>0)
    	{
    		sminpercent=Double.parseDouble(vct.elementAt(0).toString().trim());
    		 
    	}
      vct=getValue("select percent from edudetails where course='HSC' and userid='"+userid+"'" , 1);
    	if(vct.size()>0)
    	{
    		hminpercent=Double.parseDouble(vct.elementAt(0).toString().trim());
    		 
    	}
      vct=getValue("select avg(percent) from edudetails where  userid='"+userid+"'" , 1);
    	if(vct.size()>0)
    	{
    		overallpercent=Double.parseDouble(vct.elementAt(0).toString().trim());
    		 
    	}
    	 vct=getValue("select course from edudetails where userid='"+userid+"'" , 1);
    	if(vct.size()>0)
    	{
    		 for(int i=0;i<vct.size();i++)
    		 {
    			 if(cond=="NA")
    			 {
    				 cond="(find_in_set('"+vct.elementAt(i).toString().trim()+"',requiredCourses)"; 
    			 }
    			 else
    				 cond+=" or find_in_set('"+vct.elementAt(i).toString().trim()+"',requiredCourses) ";
    		 }
    		 cond+=")";
    		 
    	}
    	vct=getValue("select dob,experience,prefcity from userdetails where userid='"+userid+"'" , 3);
    	if(vct.size()>0)
    	{
    		String[]str=vct.elementAt(0).toString().trim().split("\\-");
    		Date dt=new Date();
    		age=(dt.getYear()+1900)-Integer.parseInt(str[0]);
    		minexp=Double.parseDouble(vct.elementAt(1).toString().trim());
    		wcity=(vct.elementAt(2).toString().trim());
    	}
         DBConnector obj=new  DBConnector();
        con=obj.connect();
        String qr="select * from jobs where jobid in (select jobid from clusters where cluster=(select cluster from clusters where userid='"+userid+"'))";
      System.out.println("qr="+qr);
        psmt=con.prepareStatement(qr);
        
         psmt.execute();
         rs=psmt.getResultSet();
                    
        
        	while (rs.next()) {
        	    lst.add(new JobReg(rs));
        	} 
    }
       
     
    catch(Exception ex)
    {
        System.out.println("err="+ex.getMessage());
         
    }
    return lst;
}
public List<JobReg> getJobDetails1(double sminpercent,double hminpercent,double overallpercent,double age,double exp,String wcity,String cond)
{List<JobReg> lst = new ArrayList<JobReg>();
    try
    {
         DBConnector obj=new  DBConnector();
        con=obj.connect();
        String qr="select * from jobs where sscMinPercent<="+sminpercent+" and hscMinPercent<="+hminpercent+" and otherPercent<="+overallpercent+" and agelimit>="+age+" and minexperience<="+exp+" and workingCity='"+wcity+"' and "+cond;
        psmt=con.prepareStatement(qr);
        
         psmt.execute();
         rs=psmt.getResultSet();
                    
        
        	while (rs.next()) {
        	    lst.add(new JobReg(rs));
        	} 
    }
       
     
    catch(Exception ex)
    {
        System.out.println("err="+ex.getMessage());
         
    }
    return lst;
}
	 public List<JobReg> getJobDetails()
	    {List<JobReg> lst = new ArrayList<JobReg>();
	        try
	        {
	             DBConnector obj=new  DBConnector();
	            con=obj.connect();
	            csmt=con.prepareCall("{call getJobDetails()}");
	            
	             csmt.execute();
	             rs=csmt.getResultSet();
	                        
	            
	            	while (rs.next()) {
	            	    lst.add(new JobReg(rs));
	            	} 
	        }
	           
	         
	        catch(Exception ex)
	        {
	            System.out.println("err="+ex.getMessage());
	             
	        }
	        return lst;
	    }
	public boolean JobRegistration()
	    {
	        try
	        {
	             DBConnector obj=new  DBConnector();
	            con=obj.connect();
	            csmt=con.prepareCall("{call insertJobs(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
	            csmt.setString(1, company);
	            csmt.setDouble(2, sscpercent);
	            csmt.setDouble(3, hscpercent);
	            csmt.setDouble(4, otherpercent);
	            csmt.setInt(5, agelim);
	            csmt.setDouble(6, minexp);
	            csmt.setString(7, prevdesig);
	            csmt.setDouble(8, sal);
	            csmt.setString(9, wcity);
	            csmt.setString(10, bond1);
	            csmt.setString(11, desig);
	            csmt.setString(12, reqcourse);
	            csmt.setString(13, intdt);
	            csmt.setString(14, inttm);
	            csmt.setString(15, mobile);
	            csmt.setString(16, contactper);
	             
	             int n=csmt.executeUpdate();
	             
	                        
	            
	            if(n>0)
	            {
	                try{con.close();}catch(Exception ex){}
	                System.out.println("true");
	                return true;
	            }
	            else
	                return false;

	            }
	           
	         
	        catch(Exception ex)
	        {
	            System.out.println("err="+ex.getMessage());
	            return false;
	        }
	    }
	public boolean JobRegistration1()
    {
        try
        {
             DBConnector obj=new  DBConnector();
            con=obj.connect();
            csmt=con.prepareCall("{call insertJobs1(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
            csmt.setString(1, company);
            csmt.setDouble(2, sscpercent);
            csmt.setDouble(3, hscpercent);
            csmt.setDouble(4, otherpercent);
            csmt.setInt(5, agelim);
            csmt.setDouble(6, minexp);
            csmt.setString(7, prevdesig);
            csmt.setDouble(8, sal);
            csmt.setString(9, wcity);
            csmt.setString(10, bond1);
            csmt.setString(11, desig);
            csmt.setString(12, reqcourse);
            csmt.setString(13, intdt);
            csmt.setString(14, inttm);
            csmt.setString(15, mobile);
            csmt.setString(16, contactper);
             
             int n=csmt.executeUpdate();
             
                        
            
            if(n>0)
            {
                try{con.close();}catch(Exception ex){}
                System.out.println("true");
                return true;
            }
            else
                return false;

            }
           
         
        catch(Exception ex)
        {
            System.out.println("err="+ex.getMessage());
            return false;
        }
    }
}
