function validateForm()  
{  
	var uname= document.register.fullname;
	var uemail= document.register.email;
	var passid= document.register.password;
	  
	if(first_name(uname))  
	{  
		if(email(uemail))
		{
			if(pwd(passid,8,20))   
			{   
				return true;	
			}   	  
		}
	}
	return false;  
}

function first_name(uname)  
{   
	var letters = /^[A-Za-z]+$/;  
	if(uname.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert('Name must have alphabet characters only');  
		uname.focus();  
		return false;  
	}  
}
function gender(gen)
{
	if (gen.value === "Default")
	{
		alert("Please select gender from list");
		gen.focus();
		return false;
	}
	else
	{
		return true;
	}
}
function email(uemail)  
{  
	//w=[A-Za-z0-9]
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
	if(uemail.value.match(mailformat))  
	{  
		return true;  
	}  
	else  
	{  
		alert("You have entered an invalid email address!");  
		uemail.focus();  
		return false;  
	}  
}
function address(uadd)  
{   
	var letters =/^[A-Za-z0-9_\.\-\&\ \/]+$/;
	if(uadd.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert('User address must have alphanumeric characters only');  
		uadd.focus();  
		return false;  
	}  
}  
function aadharc(aadhar,m)  
{   
	var letters =/^[0-9]+$/;
	var aadhar_len = aadhar.value.length;  
	if(aadhar.value.match(letters))  
	{  
		if(aadhar_len==12)
			{
		return true;
			}
	}  
	else
	{  
		alert("Aadhar Number must be in a proper format / length should be "+m+ " digits");  
		aadhar.focus();  
		return false;  
	}  
}
function electionc(election)  
{   
	var letters =/^[A-Za-z0-9]+$/;
	if(election.value.match(letters))  
	{  
		return true;  
	}  
	else  
	{  
		alert('Election Card No. must have alphanumeric characters only');  
		election.focus();  
		return false;  
	}  
}
function pwd(passid,mx,my)  
{   
	var passid_len = passid.value.length;  
	if (passid_len === 0 ||passid_len >= my || passid_len < mx)  
	{  
		alert("Password should not be empty / length be between "+mx+" to "+my);  
		passid.focus();  
		return false;  
	}  
	else
	{
		return true;  
	}
	
}
function confirm_pwd(cpass,pass, my, mx)
{
	var cp = cpass.value.length;
	
	if ( cp > my && cp <= mx) 
	{
		return true;
	} else {
		alert("Must be between " + my + " to " + mx);
		cpass.focus();
		return false;
	}
}

	/*
	if (passid.search(/[0-9]/) == -1)  
	{  
		document.getElementById('password2').innerHTML = "**Password must have atleast 1 Numeric digit;
		passid.focus();  
		return false;  
	}
	if (passid.search(/[A-Z]/) == -1)  
	{  
		document.getElementById('password2').innerHTML = "**Password must have atleast 1 Uppercase character ;
		passid.focus();  
		return false;  
	}
	if (passid.search(/[a-z]/) == -1)  
	{  
		document.getElementById('password2').innerHTML = "**Password must have atleast 1 Lowercase character ;
		passid.focus();  
		return false;  
	}
	if (passid.search(/[!\@\#\$\%\^\&\*\_\.]/) == -1)  
	{  
		document.getElementById('password2').innerHTML = "**Password must have atleast 1 Special character ;
		passid.focus();  
		return false;  
	}
	*/