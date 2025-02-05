package test.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.servlet.tags.EscapeBodyTag;

import test.beans.Company;
import test.beans.Freelancer;

import test.beans.jobapplications;
import test.beans.postjob;
import test.beans.postproject;
import test.beans.projectapplication;
import test.beans.showjob;

public class CompanyDao {
	
	JdbcTemplate t1;

	

	public void setT1(JdbcTemplate t1) {
		this.t1 = t1;
	}

	//Register Company
	public void dataenter(Company c1) {
	
		t1.update("insert into company (name,email,number,website,password,confirmpassword,profileimg) values ('"+c1.getName()+"','"+c1.getEmail()+"','"+c1.getNumber()+"','"+c1.getWebsite()+"','"+c1.getPassword()+"','"+c1.getConfirmpassword()+"','"+c1.getProfileimg()+"') ");
		
	}

	//Retrive profile data
	public List<Company> loginauthecation(String email, String password) {
		
		return t1.query("select *from company where email='"+email+"' and password='"+password+"' " , new RowMapper<Company>() {

			@Override
			public Company mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Company c1= new Company();
				c1.setId(rs.getInt(1));
				c1.setName(rs.getString(2));
				c1.setEmail(rs.getString(3));
				c1.setNumber(rs.getString(4));
				c1.setWebsite(rs.getString(5));
				c1.setPassword(rs.getString(6));
				c1.setConfirmpassword(rs.getString(7));
				c1.setProfileimg(rs.getString(8));
				c1.setAbout(rs.getString(9));
				
				return c1;
			}
			
			
			
			
		});
	}

	//Update Profile
	public void updatedata(Company c2) {
		
		t1.update("update company set name='"+c2.getName()+"',email='"+c2.getEmail()+"',number='"+c2.getNumber()+"',website='"+c2.getWebsite()+"',about='"+c2.getAbout()+"' where id='"+c2.getId()+"'");
		
	}

	//Post job
	public void postjobdetails(postjob c1) {
		
		t1.update("insert into postjob (jobd,jtittle,jskills,jtype,jsalary,jcname,jcemail) values ('"+c1.getJobd()+"','"+c1.getJtittle()+"','"+c1.getJskills()+"','"+c1.getJtype()+"','"+c1.getJsalary()+"','"+c1.getJcname()+"','"+c1.getJcemail()+"')");
		
	}
	


	//Post Project
	public void postprojectdetails(postproject c2) {

		t1.update("insert into postproject (projectd,projectf,projectb,projectt,projects,projectc,projecte) values ('"+c2.getProjectd()+"','"+c2.getProjectf()+"','"+c2.getProjectb()+"','"+c2.getProjectt()+"','"+c2.getProjects()+"','"+c2.getProjectc()+"','"+c2.getProjecte()+"')");
		
	}
	
  
	
	
    public void datasave(Freelancer c1) {
		
		t1.update("insert into freelancer (fname,femail,fphone,fdate,fpfile,flinkedin,feducation,fcharge,gender,skills,password,cpassword) values('"+c1.getFname()+"','"+c1.getFemail()+"','"+c1.getFphone()+"','"+c1.getFdate()+"','"+c1.getFpfile()+"','"+c1.getFlinkedin()+"','"+c1.getFeducation()+"','"+c1.getFcharge()+"','"+c1.getGender()+"', '"+c1.getSkills()+"' , '"+c1.getPassword()+"','"+c1.getCpassword()+"')");
	  
		
	}

	public List<Freelancer> checkdata(String email, String password) {
		
		return t1.query("select *from freelancer where femail='"+email+"' and password= '"+password+"'", new RowMapper<Freelancer>() {

			@Override
			public Freelancer mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				
				Freelancer f1= new Freelancer();
				f1.setId(rs.getInt(1));
				f1.setFname(rs.getString(2));
				f1.setFemail(rs.getString(3));
				f1.setFphone(rs.getString(4));
				f1.setFdate(rs.getDate(5));
				f1.setFlinkedin(rs.getString(6));
				f1.setFeducation(rs.getString(7));
				f1.setFpfile(rs.getString(8));
				f1.setFcharge(rs.getString(9));
				f1.setGender(rs.getString(10));
				f1.setSkills(rs.getString(11));
				f1.setPassword(rs.getString(12));
				f1.setCpassword(rs.getString(13));
				
				return f1;
			}
			
			
			
		});
		
	}

	public void updateprofile(Freelancer c1) {
		
		t1.update("update freelancer set  fname='"+c1.getFname()+"',femail='"+c1.getFemail()+"',fphone='"+c1.getFphone()+"',flinkedin='"+c1.getFlinkedin()+"',feducation='"+c1.getFeducation()+"',fcharge='"+c1.getFcharge()+"',skills='"+c1.getSkills()+"' where id='"+c1.getId()+"'");
		
	}

	public List<showjob> showalljobs() {
		
		return t1.query("SELECT * FROM postjob RIGHT JOIN company ON postjob.jcname = company.name WHERE postjob.jcname IS NOT NULL AND company.name IS NOT NULL AND postjob.id IS NOT NULL ORDER BY RAND()", new RowMapper<showjob>() {

			@Override
			public showjob mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				showjob p = new showjob();
				p.setId(rs.getInt(1));
				p.setJobd(rs.getString(2));
				p.setJtittle(rs.getString(3));
				p.setJskills(rs.getString(4));
				p.setJtype(rs.getString(5));
				p.setJsalary(rs.getString(6));
				p.setJcname(rs.getString(7));
				p.setJcemail(rs.getString(8));
				p.setAbout(rs.getString(17));
				p.setProfileimg(rs.getString(16));
				
				
				return p;
			}
			
			
			
			
			
			
		});
		

		
	}

	public List<postjob> showallinfo(int id) {
		
		return t1.query("select *from postjob where id='"+id+"'", new RowMapper<postjob>() {

			@Override
			public postjob mapRow(ResultSet rs, int rowNum) throws SQLException {
			
				 postjob p1= new postjob();
				 
				 p1.setId(rs.getInt(1));
				 p1.setJobd(rs.getString(2));
				 p1.setJtittle(rs.getString(3));
				 p1.setJskills(rs.getString(4));
				 p1.setJtype(rs.getString(5));
				 p1.setJsalary(rs.getString(6));
				 p1.setJcname(rs.getString(7));
				 p1.setJcemail(rs.getString(8));
				 
				return p1;
			}
			
			
			
		});
		
	}

	public void applyforjob(jobapplications c1) {
	
		t1.update("insert into jobapplications (companyname,position,candidatename,candidateemail,candidateresume,cid,companyemail,status) values ('"+c1.getCompanyname()+"','"+c1.getPosition()+"','"+c1.getCandidatename()+"','"+c1.getCandidateemail()+"','"+c1.getCandidateresume()+"','"+c1.getCid()+"','"+c1.getCompanyemail()+"','"+c1.getStatus()+"')");
		
	}

	public List<postproject> showallprojectlist() {
		
		return t1.query("select *from postproject ORDER BY RAND()", new RowMapper<postproject>() {

			@Override
			public postproject mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				postproject pp= new postproject();
				pp.setId(rs.getInt(1));
				pp.setProjectd(rs.getString(2));
				pp.setProjectf(rs.getString(3));
				pp.setProjectb(rs.getString(4));
				pp.setProjectt(rs.getString(5));
				pp.setProjects(rs.getString(6));
				pp.setProjectc(rs.getString(7));
				pp.setProjecte(rs.getString(8));
				
		       
				
				return pp;
			}
			
			
			
			
			
		});
	}

	public List<postproject> getprojectdetails(int id) {
		
		return t1.query("select *from postproject where id='"+id+"'", new RowMapper<postproject>() {

			@Override
			public postproject mapRow(ResultSet rs, int rowNum) throws SQLException {
				

				postproject ppp= new postproject();
				
				ppp.setId(rs.getInt(1));
				ppp.setProjectd(rs.getString(2));
				ppp.setProjectf(rs.getString(3));
				ppp.setProjectb(rs.getString(4));
				ppp.setProjectt(rs.getString(5));
				ppp.setProjects(rs.getString(6));
				ppp.setProjectc(rs.getString(7));
				ppp.setProjecte(rs.getString(8));
				
		       
				
				return ppp;

               
				
				
			}
			
			
			
		});
		
	}

	public void postprojectapplication(projectapplication c2) {
		
	  t1.update("insert into projectapplication (projectname,projectcompany,candidatename,candidateemail,candidateresume,cdid,companyemail,status) values ('"+c2.getProjectname()+"','"+c2.getProjectcompany()+"','"+c2.getCandidatename()+"','"+c2.getCandidateemail()+"','"+c2.getCandidateresume()+"','"+c2.getCdid()+"','"+c2.getProjectcompanyemail()+"','"+c2.getStatus()+"')");
		
	}

	public List<jobapplications> trackapplication(String femail) {
	
		return t1.query("select *from jobapplications where candidateemail LIKE '%"+femail+"%' and companyemail IS NOT NULL", new RowMapper<jobapplications>() {

			@Override
			public jobapplications mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				jobapplications j1= new jobapplications();
				
				j1.setId(rs.getInt(1));
				j1.setCompanyname(rs.getString(2));
				j1.setPosition(rs.getString(3));
				j1.setCandidatename(rs.getString(4));
				j1.setCandidateemail(rs.getString(5));
				j1.setCandidateresume(rs.getString(6));
				j1.setCid(rs.getInt(7));
				j1.setStatus(rs.getString(9));
				
				return j1;
			}
			
			
			
		});
		
	}

	public List<projectapplication> trackprojectapplications(String femail) {
		
		return t1.query("select *from projectapplication where candidateemail LIKE '%"+femail+"%' and companyemail IS NOT NULL", new RowMapper<projectapplication>() {

			@Override
			public projectapplication mapRow(ResultSet rs, int rowNum) throws SQLException {
			
				 projectapplication p1= new projectapplication();
				 
				 p1.setId(rs.getInt(1));
				 p1.setProjectname(rs.getString(2));
				 p1.setProjectcompany(rs.getString(3));
				 p1.setCandidatename(rs.getString(4));
				 p1.setCandidateemail(rs.getString(5));
				 p1.setCandidateresume(rs.getString(6));
				 p1.setCdid(rs.getInt(7));
				 p1.setStatus(rs.getString(9));
				return p1;
			}
			
			
			
			
		});
	}

	public int withdrawjobapplication(int cid) {
		
		return t1.update("delete from jobapplications where id='"+cid+"'");
	}

	public List<Company> showallcompaniesdata() {
		
		return t1.query("select *from company", new RowMapper<Company>() {

			@Override
			public Company mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Company c1= new Company();
				c1.setId(rs.getInt(1));
				c1.setName(rs.getString(2));
				c1.setEmail(rs.getString(3));
				c1.setNumber(rs.getString(4));
				c1.setWebsite(rs.getString(5));
				c1.setPassword(rs.getString(6));
				c1.setConfirmpassword(rs.getString(7));
				c1.setProfileimg(rs.getString(8));
				c1.setAbout(rs.getString(9));
			
				return c1;
			}
			
			
			
			
		});
	}

	public List<Freelancer> showafreelancer() {
		
		return t1.query("select *from freelancer ORDER BY RAND() LIMIT 3", new RowMapper<Freelancer>() {

			@Override
			public Freelancer mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				
				Freelancer f1= new Freelancer();
				f1.setId(rs.getInt(1));
				f1.setFname(rs.getString(2));
				f1.setFemail(rs.getString(3));
				f1.setFphone(rs.getString(4));
				f1.setFdate(rs.getDate(5));
				f1.setFlinkedin(rs.getString(6));
				f1.setFeducation(rs.getString(7));
				f1.setFpfile(rs.getString(8));
				f1.setFcharge(rs.getString(9));
				f1.setGender(rs.getString(10));
				f1.setSkills(rs.getString(11));
				f1.setPassword(rs.getString(12));
				f1.setCpassword(rs.getString(13));
				
				return f1;
			}
			
			
			
			
			
		});
	}

	public List<Freelancer> showallfreelancer() {
		
		return t1.query("select *from freelancer ORDER BY RAND()", new RowMapper<Freelancer>() {

			@Override
			public Freelancer mapRow(ResultSet rs, int rowNum) throws SQLException {
			 
				Freelancer f1= new Freelancer();
				f1.setId(rs.getInt(1));
				f1.setFname(rs.getString(2));
				f1.setFemail(rs.getString(3));
				f1.setFphone(rs.getString(4));
				f1.setFdate(rs.getDate(5));
				f1.setFlinkedin(rs.getString(6));
				f1.setFeducation(rs.getString(7));
				f1.setFpfile(rs.getString(8));
				f1.setFcharge(rs.getString(9));
				f1.setGender(rs.getString(10));
				f1.setSkills(rs.getString(11));
				f1.setPassword(rs.getString(12));
				f1.setCpassword(rs.getString(13));
				
				return f1;
				
			}
			
			
			
			
			
		});
	}

	
	
	

	public List<postjob> findbyemail(String email) {
		
		return t1.query("select *from postjob where jcemail='"+email+"'", new RowMapper<postjob>() {
			
			
			@Override
			public postjob mapRow(ResultSet rs, int rowNum) throws SQLException {
				
                 postjob p1= new postjob();
				 
				 p1.setId(rs.getInt(1));
				 p1.setJobd(rs.getString(2));
				 p1.setJtittle(rs.getString(3));
				 p1.setJskills(rs.getString(4));
				 p1.setJtype(rs.getString(5));
				 p1.setJsalary(rs.getString(6));
				 p1.setJcname(rs.getString(7));
				 p1.setJcemail(rs.getString(8));
				 
				return p1;
			}
			 
			 
			
		});
	}

	public List<postproject> findbyemailproject(String email) {
		
		return t1.query("select *from postproject where projecte='"+email+"'", new RowMapper<postproject> () {

			@Override
			public postproject mapRow(ResultSet rs, int rowNum) throws SQLException {
				
                postproject ppp= new postproject();
				
				ppp.setId(rs.getInt(1));
				ppp.setProjectd(rs.getString(2));
				ppp.setProjectf(rs.getString(3));
				ppp.setProjectb(rs.getString(4));
				ppp.setProjectt(rs.getString(5));
				ppp.setProjects(rs.getString(6));
				ppp.setProjectc(rs.getString(7));
				ppp.setProjecte(rs.getString(8));
				
		       
				
				return ppp;

               
			}
			
			
			
			
			
		});
		
	}

	public List<postjob> editjobdetails(int id) {
		
		return t1.query("select *from postjob where id='"+id+"'", new RowMapper<postjob>() {

			@Override
			public postjob mapRow(ResultSet rs, int rowNum) throws SQLException {
				
                postjob p1= new postjob();
				 
				 p1.setId(rs.getInt(1));
				 p1.setJobd(rs.getString(2));
				 p1.setJtittle(rs.getString(3));
				 p1.setJskills(rs.getString(4));
				 p1.setJtype(rs.getString(5));
				 p1.setJsalary(rs.getString(6));
				 p1.setJcname(rs.getString(7));
				 p1.setJcemail(rs.getString(8));
				return p1;
			}
			
			
			
			
			
		});
	}

	
    public void updatejobdata(postjob c1) {
		
		t1.update("update postjob set jobd='"+c1.getJobd()+"',jtittle='"+c1.getJtittle()+"',jskills='"+c1.getJskills()+"',jtype='"+c1.getJtype()+"',jsalary='"+c1.getJsalary()+"',jcname='"+c1.getJcname()+"',jcemail='"+c1.getJcemail()+"' where id='"+c1.getId()+"'");
		
	}

	public int deletebyid(int id) {
		
		return t1.update("delete from postjob where id='"+id+"'");
	}

	public int removeprojectbyid(int id) {
		
		return t1.update("delete from postproject where id='"+id+"'");
	}

	public List<jobapplications> getapplications(String email) {
		
		return t1.query("select *from jobapplications where companyemail='"+email+"' and status='send'", new RowMapper<jobapplications>() {

			@Override
			public jobapplications mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				
                jobapplications j1= new jobapplications();
				
				j1.setId(rs.getInt(1));
				j1.setCompanyname(rs.getString(2));
				j1.setPosition(rs.getString(3));
				j1.setCandidatename(rs.getString(4));
				j1.setCandidateemail(rs.getString(5));
				j1.setCandidateresume(rs.getString(6));
				j1.setCid(rs.getInt(7));
				j1.setCompanyemail(rs.getString(8));
				j1.setStatus(rs.getString(9));
				
				
				
				return j1;
				
			}
			
			
			
			
		});
	}

	public List<projectapplication> getprojectapplications(String email) {
		
		return t1.query("select *from projectapplication where companyemail='"+email+"' and status='send'", new RowMapper<projectapplication>() {

			@Override
			public projectapplication mapRow(ResultSet rs, int rowNum) throws SQLException {
				
                 projectapplication p1= new projectapplication();
				 
				 p1.setId(rs.getInt(1));
				 p1.setProjectname(rs.getString(2));
				 p1.setProjectcompany(rs.getString(3));
				 p1.setCandidatename(rs.getString(4));
				 p1.setCandidateemail(rs.getString(5));
				 p1.setCandidateresume(rs.getString(6));
				 p1.setCdid(rs.getInt(7));
				 p1.setProjectcompanyemail(rs.getString(8));
				 p1.setStatus(rs.getString(9));
				return p1;
			}
			
			
			
		});		
	}

	public void updatejobstatus(jobapplications c1) {
		
		t1.update("update jobapplications set status='"+c1.getStatus()+"' where id='"+c1.getId()+"'");
		
	}

	public void updateprojectstatus(projectapplication c1) {
		
		t1.update("update projectapplication set status='"+c1.getStatus()+"' where id='"+c1.getId()+"'");
		
	}

	 public List<jobapplications> getAcceptedApplications(String companyEmail) {
	        
	        
	        return t1.query("SELECT * FROM jobapplications WHERE companyemail LIKE '%"+companyEmail+"%' AND status = 'Accepted'", new RowMapper<jobapplications>() {
	            @Override
	            public jobapplications mapRow(ResultSet rs, int rowNum) throws SQLException {
	                jobapplications application = new jobapplications();
	                
	                application.setId(rs.getInt(1));
	                application.setCompanyname(rs.getString(2));
	                application.setPosition(rs.getString(3));
	                application.setCandidatename(rs.getString(4));
					application.setCandidateemail(rs.getString(5));
					application.setCandidateresume(rs.getString(6));
					application.setCid(rs.getInt(7));
					application.setCompanyemail(rs.getString(8));
					application.setStatus(rs.getString(9));
	                
	                
	                return application;
	            }
	        });
	    }

	

	public List<jobapplications> rejectedjobapplication(String companyemail) {
		
		return t1.query("SELECT * FROM jobapplications WHERE companyemail LIKE '%"+companyemail+"%' AND status = 'Rejected'", new RowMapper<jobapplications>() {

			@Override
			public jobapplications mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				jobapplications application = new jobapplications();
                
                application.setId(rs.getInt(1));
                application.setCompanyname(rs.getString(2));
                application.setPosition(rs.getString(3));
                application.setCandidatename(rs.getString(4));
				application.setCandidateemail(rs.getString(5));
				application.setCandidateresume(rs.getString(6));
				application.setCid(rs.getInt(7));
				application.setCompanyemail(rs.getString(8));
				application.setStatus(rs.getString(9));
                
                
                return application;
			}
			
			
			
			
			
		});
		
	}

	public List<projectapplication> getacceptedprojectapplications(String companyemail) {
	
		return t1.query("select *from projectapplication where  companyemail  LIKE '%"+companyemail+"%' AND status = 'Accepted'" ,new RowMapper<projectapplication>() {

			@Override
			public projectapplication mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				projectapplication p1= new projectapplication();
				 
				 p1.setId(rs.getInt(1));
				 p1.setProjectname(rs.getString(2));
				 p1.setProjectcompany(rs.getString(3));
				 p1.setCandidatename(rs.getString(4));
				 p1.setCandidateemail(rs.getString(5));
				 p1.setCandidateresume(rs.getString(6));
				 p1.setCdid(rs.getInt(7));
				 p1.setProjectcompanyemail(rs.getString(8));
				 p1.setStatus(rs.getString(9));
				 
				return p1;
			}
			
			
			
			
		});
	}

	public List<projectapplication> rejectedprojectapplication(String companyemail) {
		
		return t1.query("select *from projectapplication where companyemail LIKE '%"+companyemail+"%' AND status='Rejected'", new RowMapper<projectapplication>() {

			@Override
			public projectapplication mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				 projectapplication p1= new projectapplication();
				 
				 p1.setId(rs.getInt(1));
				 p1.setProjectname(rs.getString(2));
				 p1.setProjectcompany(rs.getString(3));
				 p1.setCandidatename(rs.getString(4));
				 p1.setCandidateemail(rs.getString(5));
				 p1.setCandidateresume(rs.getString(6));
				 p1.setCdid(rs.getInt(7));
				 p1.setProjectcompanyemail(rs.getString(8));
				 p1.setStatus(rs.getString(9));
				 
				 return p1;
				
			}
			
			
			
			
			
			
			
		});
		
		
		
		
		
		
	}

	public List<showjob> getjobdataofcompany() {
		
		return t1.query("SELECT * FROM postjob RIGHT JOIN company ON postjob.jcname = company.name WHERE postjob.jcname IS NOT NULL AND company.name IS NOT NULL AND postjob.id IS NOT NULL ORDER BY RAND() LIMIT 3", new RowMapper<showjob>() {

			@Override
			public showjob mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				showjob p = new showjob();
				p.setId(rs.getInt(1));
				p.setJobd(rs.getString(2));
				p.setJtittle(rs.getString(3));
				p.setJskills(rs.getString(4));
				p.setJtype(rs.getString(5));
				p.setJsalary(rs.getString(6));
				p.setJcname(rs.getString(7));
				p.setJcemail(rs.getString(8));
				p.setAbout(rs.getString(17));
				p.setProfileimg(rs.getString(16));
				
				
				return p;
			}
			
			
			
			
			
			
		});
		

		
	}

	public List<postproject> getprojectdataofcompany() {
		
		return t1.query("select *from postproject ORDER BY RAND() LIMIT 3", new RowMapper<postproject>() {

			@Override
			public postproject mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				postproject pp= new postproject();
				pp.setId(rs.getInt(1));
				pp.setProjectd(rs.getString(2));
				pp.setProjectf(rs.getString(3));
				pp.setProjectb(rs.getString(4));
				pp.setProjectt(rs.getString(5));
				pp.setProjects(rs.getString(6));
				pp.setProjectc(rs.getString(7));
				pp.setProjecte(rs.getString(8));
				
		       
				
				return pp;
			}
			
			
			
			
			
		});
	}

	
	//count freelancer
	public int getcountoffrrlancer() {
		
		
		return t1.queryForObject("SELECT COUNT(*) FROM freelancer", Integer.class);

	}

	//count jobs
	public int getcountjobs() {
		
		return t1.queryForObject("select COUNT(*) from postjob", Integer.class);
		
	}

	public int getcountproject() {
		
		return t1.queryForObject("select COUNT(*) FROM postproject", Integer.class);
		
	}

	public int getcountcompany() {
		
		return t1.queryForObject("select COUNT(*) FROM company", Integer.class);
		
	}
	
	

	
	


	
	

	

}
