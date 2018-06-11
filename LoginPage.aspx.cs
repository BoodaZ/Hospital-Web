using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        HospitalEntities2 Hos = new HospitalEntities2();
        
        foreach (var role in Hos.Roles)
        {
            if (role.Username == TxtID.Text && role.Password == TxtPassword.Text&&role.Type=="Doctor")
            {
               
                    Server.Transfer("DoctorPage.aspx");
                    break;
            }
            else if (role.Username == TxtID.Text && role.Password == TxtPassword.Text&&role.Type == "Nurse")
                {
                    Server.Transfer("Nurse.aspx");
                    break;
                }
            else if (role.Username == TxtID.Text && role.Password == TxtPassword.Text && role.Type == "Receptionist")
                {
                    Server.Transfer("Patient Registration.aspx");
                    break;
                }
            else if (role.Username == TxtID.Text && role.Password == TxtPassword.Text && role.Type == "Admin")
            {
                Server.Transfer("Admin.aspx");
                break;
            }

           
         
        }
      
      

    }
}