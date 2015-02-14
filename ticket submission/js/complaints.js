        function validation(frm)
        {
            frm.vflag.value="yes";
            var complaint_name=frm.complaint_name.value;
            var complaint_sub=frm.complaint_sub.value;
			var complaint_details=frm.complaint_details.value;
		
            if(complaint_name=="")
            {
            alert("Enter Ticket Name");
            frm.complaint_name.focus();
            return false;
            }
            
            if(complaint_sub=="")
            {
            alert("Enter Ticket Subject");
            frm.complaint_sub.focus();
            return false;
            }
			if(complaint_details=="")
            {
            alert("Enter Ticket Details");
            frm.complaint_details.focus();
            return false;
            }
			
            return true;
    }