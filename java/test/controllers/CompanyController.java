package test.controllers;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import test.beans.Company;
import test.beans.Freelancer;
import test.beans.jobapplications;
import test.beans.postjob;
import test.beans.postproject;
import test.beans.projectapplication;
import test.dao.CompanyDao;

@Controller
public class CompanyController {
	
	
	@Autowired
	CompanyDao cd;
	
	
	
	
	
	
	//Mapping for Register
	@RequestMapping(value = "/regdata",method = RequestMethod.POST)
	public String registerdata(@ModelAttribute ("c1") Company c1,@RequestParam("filename") MultipartFile filename) throws IOException 
	{
		
		if(c1.getPassword().equals(c1.getConfirmpassword()))
		{
		
		String f=filename.getOriginalFilename();
		
		String path="D:\\New folder (6)\\MvcProject\\src\\main\\webapp\\files\\webimages";
		
		BufferedOutputStream bf = new BufferedOutputStream(new FileOutputStream(path+"/"+f));
		
		byte b []=filename.getBytes();
		
		bf.write(b);
		
		bf.close();
		
		
		c1.setProfileimg(f);
		
		
		
		
		cd.dataenter(c1);
		
		
		return "redirect:/loginc";
		}
		
		return "redirect:/registercompany";
		
	}
	
	
	
	//Mapping for Login
	@RequestMapping(value = "/logindata",method = RequestMethod.POST)
	public String loginmapping(@RequestParam("email")String email,@RequestParam("password") String password,HttpSession h1)
	{
		
		
	List<Company> Company = cd.loginauthecation(email,password);

	
	
	
	if(Company.isEmpty())
	{
		return "redirect:/loginc";
		
	}
	
	h1.setAttribute("email", email);
	h1.setAttribute("company", Company);
	
     return "redirect:/homec";	
	}
	
	
	
	//Mapping for Homepage
	@RequestMapping("/homec")
	public String home(HttpSession h1,ModelMap mm)
	{
	String data=(String) h1.getAttribute("email");
	
	//List having all data of Company
	List<Company> companies = (List<Company>)h1.getAttribute("company");
    
	
	if(data==null)
	{
		return "redirect:/loginc";
	}
		
	List<Freelancer> freelancerdata=	cd.showafreelancer();
	mm.addAttribute("freelancerdta",freelancerdata);
	
	
	    //count freelancer   
		int freelancerdatacount =   cd.getcountoffrrlancer();
		System.out.println(data);
		mm.addAttribute("countfreelancer",freelancerdatacount);
		
		//jobs count
		int jobdatacount = cd.getcountjobs();
		System.out.println(jobdatacount);
		mm.addAttribute("countjobs",jobdatacount);
		
		//project count
	    int projectdatacount= cd.getcountproject();
	    System.out.println(projectdatacount);
	    mm.addAttribute("countproject",projectdatacount);
	    
	    //company count
		int companydatacount=cd.getcountcompany();
		System.out.println(companydatacount);
		mm.addAttribute("countcompany",companydatacount);
	
	
	
		
		mm.addAttribute("kk",companies);
		return "homec";
	}
	
	@RequestMapping("/viewallfreelancer")
	public String viewallfreelancer(ModelMap mm) {
		
	List<Freelancer> allfreelancerdata=	cd.showallfreelancer();
	
	mm.addAttribute("datafreelancer",allfreelancerdata);
		
		return "viewallfreelancer";
	}
	
	@RequestMapping("view-history")
	public String viewHistory() {
		
		
	
	
	return "historyjobandproject";
		
	}
	
	@RequestMapping(value = "/getjobdata",method = RequestMethod.POST)
	public String getjobdata(@RequestParam("email") String email,ModelMap mm) {
		
	//project	
    List<postproject>  projectdatacompany =  cd.findbyemailproject(email);
    
    mm.addAttribute("projectdata",projectdatacompany);
		
	//jobs
	List<postjob> jobdataofcompany=	cd.findbyemail(email);
	
	mm.addAttribute("jobdata",jobdataofcompany);
	
	return "historyjobandproject";
	
		
	}
	
	
	
	
	
	//Profile Of Comapany
	@RequestMapping("/profilec")
	public String profilcompany(HttpSession h1,ModelMap mm)
	{
		
		//Reuse the Method List having all data of Company
		List<Company> companies = (List<Company>)h1.getAttribute("company");
		
		mm.addAttribute("kk",companies);
		
		return "profilec";
	}
	
	
	
	//Update profile Mapping
	@RequestMapping(value = "/updateinfoc",method = RequestMethod.POST)
	public String updateprofile(@ModelAttribute ("c2") Company c2) 
	{
		cd.updatedata(c2);
		
		return "redirect:/loginc";
	}
	
	                                  //Job Post,Update Delete Start
	
	//Post Job data Mapping
	@RequestMapping(value = "/postjobdata",method = RequestMethod.POST)
	public String postjob(@ModelAttribute("c1") postjob c1,HttpSession h1)
	{
		
		cd.postjobdetails(c1);
		
		
		
		return "redirect:/homec";
		
	}
	
	@RequestMapping(value = "/editjob/{id}",method = RequestMethod.GET)
	public String editjob(@PathVariable int id,ModelMap mm) {
		
		List<postjob> editjob= cd.editjobdetails(id);
		
		mm.addAttribute("jobdata",editjob);
		
		return "editjobdetails";
	}
	
	@RequestMapping(value = "/updatejobdata",method = RequestMethod.POST)
	public String updatejobdata(@ModelAttribute ("c1") postjob c1,ModelMap mm)
	{
		cd.updatejobdata(c1);
		
		mm.addAttribute("messaageupdatejob","Job updated successfully");
		
		return "messagepagecompany";
		
		
	}
	
	@RequestMapping(value = "/Delete/{id}",method = RequestMethod.GET)
	public String removejob(@PathVariable int id,ModelMap mm) {
		
		cd.deletebyid(id);
		
        mm.addAttribute("messaagedeletejob","Jobdetails Deleted successfully");
		   
		return "redirect:/messagepagecompany";
		
	}
	
	                           //Job Post,Update Delete End
	
	
	
	
	                           //Project Post,Update Delete Start
	
	
	//Post Project Mapping
	@RequestMapping(value = "/postprojectdata",method = RequestMethod.POST)
	public String postproject(@ModelAttribute ("c2") postproject c2,@RequestParam("projectfile") MultipartFile filename) throws IOException
	{
		String f=filename.getOriginalFilename();
		
		String path="D:\\New folder (6)\\MvcProject\\src\\main\\webapp\\files\\webimages";
		
		BufferedOutputStream bf= new BufferedOutputStream(new FileOutputStream(path+"/"+f));
		
		byte [] b=filename.getBytes();
		
		bf.write(b);
		bf.close();
		
		c2.setProjectf(f);
		
		cd.postprojectdetails(c2);
		
		return "redirect:/homec";
	}
	
	
	
	
	
	@RequestMapping(value = "/deleteproject/{id}",method = RequestMethod.GET)
	public String reomveproject(@PathVariable int id,ModelMap mm)
	{
		
		cd.removeprojectbyid(id);
		
		mm.addAttribute("messagedeleteproject","Project removed successfully");
		
		return "redirect:/messagepagecompany";
		
	}
	
	
	
	
	                                               //Application Showing to Company Start
	
	
	@RequestMapping(value = "/getcandidatedata",method = RequestMethod.POST)
	public String showcandidateapplication(@RequestParam("email") String email,ModelMap mm,HttpSession h1)
	{
	
		
    //jobs
	List<jobapplications> jobapplicationsdata	=cd.getapplications(email);
	
	mm.addAttribute("jobapplicationdetails",jobapplicationsdata);
	
	
	
	List<projectapplication>  projectapplicationdata=    cd.getprojectapplications(email);
	
	mm.addAttribute("projectapplicationdetails",projectapplicationdata);
	
	
	//Reuse the Method List having all data of Company
			List<Company> companies = (List<Company>)h1.getAttribute("company");
			
			mm.addAttribute("email",companies);
	
	return "applications";
		
	}
	
	@RequestMapping("/applications")
	public String candidateapplicationpage() {
		
		
		return "applications";
	}
	                             
	
	                          //Application Showing to Company End
	
	
	
	
	
	                              //Job and Project Action 
	                                      // Start
	@RequestMapping(value = "/updatestatus",method = RequestMethod.POST)
	public String updatejobstatus(@ModelAttribute("c1") jobapplications c1,ModelMap mm) {
		
		cd.updatejobstatus(c1);
		
		mm.addAttribute("statusmessage","Mark As Read successfully");
		
		return "messagepagecompany";
	}
	
	
	@RequestMapping(value = "/updatestatusproject",method = RequestMethod.POST)
	public String updateproject(@ModelAttribute("c1") projectapplication c1,ModelMap mm)
	{
		cd.updateprojectstatus(c1);
		
		
      mm.addAttribute("statusmessageproject","Project status update successfully");
		
		return "messagepagecompany";
	}
	
	
	@RequestMapping(value = "/accptedjobapplications/{companyemail}",method = RequestMethod.GET)
	public String getacceptedapplications(@PathVariable String companyemail,ModelMap mm)
	{
	//job
	List<jobapplications> getalldata	=cd.getAcceptedApplications(companyemail);
	
	mm.addAttribute("getallapplicationdata",getalldata);
	
	//Project
	List<projectapplication>  getallprojectdata =   cd.getacceptedprojectapplications(companyemail);
	
	mm.addAttribute("getapplicationdataproject",getallprojectdata);
	 
	return "accptedjobapplications";
		
	}
	
	
	@RequestMapping(value = "/rejectedcandidate/{companyemail}")
	public String rejectedcandidate(@PathVariable String companyemail,ModelMap mm)
	{
		
	 //job
	  List<jobapplications> getalldatacandidate=	cd.rejectedjobapplication(companyemail);
		
	  mm.addAttribute("getallrejectedcandidatedata",getalldatacandidate);
	  
	  
	  //project
	  List<projectapplication>  getprojectcandidatedata =  cd.rejectedprojectapplication(companyemail);
	  
	  mm.addAttribute("getallrejecteddata",getprojectcandidatedata);
	  
	  
	  return "rejectedcandidate";
		
	}
	
	
	                                  
	
	
	
	
	
	@RequestMapping("/messagepagecompany")
	public String messagepage() {
		
		
		
		return "messagepagecompany";
		
	}
	
	
	//Post job webpage
	@RequestMapping("/postjob")
	public String postjobpage(HttpSession h1,ModelMap m)
	{
		
		//Reuse the Method List having all data of Company
				List<Company> companies = (List<Company>)h1.getAttribute("company");
				m.addAttribute("kk",companies);
		
		return "postjob";
	}
	
	//Post Project Page
	@RequestMapping("/postproject")
	public String postprojectpage(HttpSession h1,ModelMap m)
	{
		
		//Reuse the Method List having all data of Company
		List<Company> companies = (List<Company>)h1.getAttribute("company");
		m.addAttribute("kk",companies);
		
		
		
		return "postproject";
	}
	
	
	
	
	
	
	
	
	
	//Mappig for Logout
	@RequestMapping("/logutc")
	public String logout(HttpSession h1)
	{
		
		
		return "redirect:/loginc";
	}
	
	
	
	
	
	
	//Mapping for Footer
	@RequestMapping("/footer")
	public String footerpage()
	{
		
		return "footerfile";
	}
	
	//Mapping for Header
	@RequestMapping("/header")
	public String headerfile()
	{
		
		return "headerfile";
	}
	
	
	//Mapping for Login page
	@RequestMapping("/loginc")
	public String loginpage()
	{
		
		
		return "loginc";
	}
	
	
	//Mapping for Register Page
	@RequestMapping("/registercompany")
	public String registercompany()
	{
		
		
		return "registerc";
	}
	
	

}
