package job.beans;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import org.springframework.web.multipart.MultipartFile;
public class UserReg {
	Connection con;
    CallableStatement csmt;
    ResultSet rs;
    private String name,mobile,email,city,addr,prefcity,prevEmp,prevDesig,bond,gender,resume,userid,pass,dob;
    private int age,experience,mxid;
    private double prevsal,sal;
    private MultipartFile file;
	 

	public MultipartFile getFile() {
		return file;
	}



	public void setFile(MultipartFile file) {
		this.file = file;
	}



	public int getMxid() {
		return mxid;
	}



	public void setMxid(int mxid) {
		this.mxid = mxid;
	}

 
	public String getDob() {
		return dob;
	} 
	public void setDob(String dob) {
		this.dob = dob;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getMobile() {
		return mobile;
	}



	public void setMobile(String mobile) {
		this.mobile = mobile;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getAddr() {
		return addr;
	}



	public void setAddr(String addr) {
		this.addr = addr;
	}



	public String getPrefcity() {
		return prefcity;
	}



	public void setPrefcity(String prefcity) {
		this.prefcity = prefcity;
	}



	public String getPrevEmp() {
		return prevEmp;
	}



	public void setPrevEmp(String prevEmp) {
		this.prevEmp = prevEmp;
	}



	public String getPrevDesig() {
		return prevDesig;
	}



	public void setPrevDesig(String prevDesig) {
		this.prevDesig = prevDesig;
	}



	public String getBond() {
		return bond;
	}



	public void setBond(String bond) {
		this.bond = bond;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getResume() {
		return resume;
	}



	public void setResume(String resume) {
		this.resume = resume;
	}



	public String getUserid() {
		return userid;
	}



	public void setUserid(String userid) {
		this.userid = userid;
	}



	public String getPass() {
		return pass;
	}



	public void setPass(String pass) {
		this.pass = pass;
	}



	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	public int getExperience() {
		return experience;
	}



	public void setExperience(int experience) {
		this.experience = experience;
	}



	public double getPrevsal() {
		return prevsal;
	}



	public void setPrevsal(double prevsal) {
		this.prevsal = prevsal;
	}



	public double getSal() {
		return sal;
	}



	public void setSal(double sal) {
		this.sal = sal;
	}


	 public void getId()
	    {
	        try
	        {
	             DBConnector obj=new  DBConnector();
	            con=obj.connect();
	            csmt=con.prepareCall("{call getMaxIdUsers()}");
	           
	             csmt.execute();
	             rs=csmt.getResultSet();
	                        
	            boolean auth=false;
	            while(rs.next())
	            { System.out.println("true");
	                auth=true;
	                
	                mxid=rs.getInt("mxid");
	                  
	            }
	        }
	           
	         
	        catch(Exception ex)
	        {
	            System.out.println("err="+ex.getMessage());
	             
	        }
	    }
	public boolean registration()
	    {
	        try
	        {
	             DBConnector obj=new  DBConnector();
	            con=obj.connect();
	            csmt=con.prepareCall("{call insertUser(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
	            csmt.setString(1, userid);
	            csmt.setString(2, pass);
	            csmt.setString(3, name);
	            csmt.setString(4, mobile);
	            csmt.setString(5, email);
	            csmt.setString(6, prefcity);
	            csmt.setString(7, city);
	            csmt.setString(8, addr);
	            csmt.setString(9, prevDesig);
	            csmt.setString(10, prevEmp);
	            csmt.setDouble(11,prevsal );
	            csmt.setDouble(12,sal );
	            csmt.setString(13, bond); 
	            csmt.setString(14, dob);
	            csmt.setInt(15, age);
	            csmt.setInt(16, experience);
	            csmt.setString(17, resume);
	            csmt.setString(18, gender);
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
