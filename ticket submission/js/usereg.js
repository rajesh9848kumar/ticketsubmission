function validation(frm)
{
	frm.vflag.value="yes";

	var name=frm.name.value;
	var email=frm.email.value;
	var password=frm.password.value;
	var confirm=frm.confirm.value;
	var phno=frm.phno.value;
	var city=frm.city.value;
	var country=frm.country.value;

	if(name=="")
	{
		alert("Enter Name");
		frm.name.focus();
		return false;
	}
	if(email=="")
	{
		alert("Enter Email Id");
		frm.email.focus();
		return false;
	}
	if(password=="")
	{
		alert("Enter Password");
		frm.password.focus();
		return false;
	}
	if(confirm=="")
	{
		alert("Enter Confirm Password");
		frm.confirm.focus();
		return false;
	}
	if(password==confirm)
	{
		frm.confirm.focus();
	}
	else
	{
		alert("Enter Password & Confirm Password is Must Be Equal");
		frm.password.focus();
		return false;
	}

	if(phno=="")
            {
            alert("Enter Mobile Number");
            frm.phno.focus();
            return false;
            }
				else
            {
                if(isNaN(phno))
                   {
            alert("Mobile No.is must be in numerics value");
            frm.phno.focus();
                return false;
                   }
              }

			   if(phno.match(/^\d{10}$/))
				    { 						   
						 frm.phno.focus();
					}
					else
						{
            alert("Enter Valid Mobile Number");
            frm.phno.focus();
            return false;
            }
	if(city=="")
	{
		alert("Enter City");
		frm.city.focus();
		return false;
	}
	if(country=="")
	{
		alert("Enter Country");
		frm.country.focus();
		return false;
	}
	return true;
}