package job.beans;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;
public class EduReg {
	Connection con;
    CallableStatement csmt;
    ResultSet rs;
    private String userid,path,course,passingyr,university;
    private int eduID;

	private MultipartFile file;
    
    public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	private double percent;
    
    public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public EduReg(ResultSet rs)
    {
    	try
    	{
    	userid=rs.getString("userid").trim();
    	course=rs.getString("course").trim();
    	passingyr=rs.getString("passingYr").trim();
    	percent=Double.parseDouble(rs.getString("percent").trim());
    	university=rs.getString("university").trim();
    	path=rs.getString("fpath").trim();
    	eduID=Integer.parseInt(rs.getString("eduId").trim());
    	}
    	catch (Exception e) {
			// TODO: handle exception
		}
    }
	public int getEduID() {
		return eduID;
	}

	public void setEduID(int eduID) {
		this.eduID = eduID;
	}

	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getCourse() {
		return course;
	}


	public void setCourse(String course) {
		this.course = course;
	}


	public String getPassingyr() {
		return passingyr;
	}


	public void setPassingyr(String passingyr) {
		this.passingyr = passingyr;
	}


	public String getUniversity() {
		return university;
	}


	public void setUniversity(String university) {
		this.university = university;
	}


	public double getPercent() {
		return percent;
	}


	public void setPercent(double percent) {
		this.percent = percent;
	}
public EduReg() {
	
}
	 public List<EduReg> getEduDetails(String userid1)
	    {List<EduReg> lst = new ArrayList<EduReg>();
	        try
	        {
	             DBConnector obj=new  DBConnector();
	            con=obj.connect();
	            csmt=con.prepareCall("{call getEduDetails(?)}");
	            csmt.setString(1, userid1);
	             csmt.execute();
	             rs=csmt.getResultSet();
	                        
	            
	            	while (rs.next()) {
	            	    lst.add(new EduReg(rs));
	            	} 
	        }
	           
	         
	        catch(Exception ex)
	        {
	            System.out.println("err="+ex.getMessage());
	             
	        }
	        return lst;
	    }
	public boolean eduRegistration()
	    {
	        try
	        {
	             DBConnector obj=new  DBConnector();
	            con=obj.connect();
	            csmt=con.prepareCall("{call insertEdu(?,?,?,?,?,?)}");
	            csmt.setString(1, userid);
	            csmt.setString(2, course);
	            csmt.setString(3, passingyr);
	            csmt.setDouble(4, percent);
	            csmt.setString(5, university);
	            csmt.setString(6, path);
	             
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
