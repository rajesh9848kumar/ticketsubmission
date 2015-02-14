        function validation(frm)
        {
            frm.vflag.value="yes";
            var email=frm.email.value;
            var password=frm.password.value;
            if(email=="")
            {
            alert("Enter Email ID");
            frm.email.focus();
            return false;
            }
            
            if(password=="")
            {
            alert("Enter password");
            frm.password.focus();
            return false;
            }
            return true;
    }