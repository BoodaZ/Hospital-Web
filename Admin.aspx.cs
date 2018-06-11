using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        wearable wear = new wearable();
        wear.Name = TxtWearableID.Text;
        wear.Password = TxtWearablePassword.Text;
        HospitalEntities2 Con = new HospitalEntities2();
        Con.wearables.Add(wear);
        Con.SaveChanges();
        if (Con.SaveChanges() == 0)
        {
            LblWarn.ForeColor = System.Drawing.Color.Green;

            LblWarn.Text = "Add Successfull";
            TxtWearableID.Text = "";
            TxtWearablePassword.Text = "";

        }
        else
        {
            LblWarn.ForeColor = System.Drawing.Color.Red;

            LblWarn.Text = "Adding Failed";
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        HospitalEntities2 Hos = new HospitalEntities2();
        string value = DDLType.SelectedValue.ToString();
        if (value=="Doctor")
        {
            Role type = new Role();
            Doctor Doc = new Doctor();
            Doc.Name = TxtName.Text;
            Doc.phone = TxtPhone.Text;
            Doc.National_id = TxtNationalID.Text;
            Doc.Email = TxtEmail.Text;
            Doc.Address = TxtAdress.Text;
            type.Username = TxtUserName.Text;
            type.Password = TxtPassword.Text;
            type.Type = value;
            if (TxtPassword.Text == TxtConfirmPassword.Text)
            {
                type.Password = TxtPassword.Text;
            }
            Hos.Doctors.Add(Doc);
            Hos.Roles.Add(type);
            Hos.SaveChanges();
            
            LblSuccessful.ForeColor=System.Drawing.Color.Green;
        LblSuccessful.Text="Adding Successfull";
        }
        else if (value=="Nurse")
        {
            Role type = new Role();
            Nurse nurse = new Nurse();
            nurse.Name = TxtName.Text;
            nurse.phone = TxtPhone.Text;
            nurse.National_id = TxtNationalID.Text;
            nurse.Email = TxtEmail.Text;
            nurse.Address = TxtAdress.Text;
            type.Username = TxtUserName.Text;
            if (TxtPassword.Text == TxtConfirmPassword.Text)
            {
                type.Password = TxtPassword.Text;
            }
            type.Type = value;
            Hos.Nurses.Add(nurse);
            Hos.Roles.Add(type);
            Hos.SaveChanges();
            
            LblSuccessful.ForeColor=System.Drawing.Color.Green;
        LblSuccessful.Text="Adding Successfull";

        }
        else if (value == "Receptionist")
        {
            Role type = new Role();
            Receptionist Recep = new Receptionist();
            Recep.Name = TxtName.Text;
            Recep.phone = TxtPhone.Text;
            Recep.National_ID = TxtNationalID.Text;
            Recep.Email = TxtEmail.Text;
            Recep.Address = TxtAdress.Text;
            if (TxtPassword.Text==TxtConfirmPassword.Text)
            {
                 type.Password = TxtPassword.Text;
            }
            type.Username = TxtUserName.Text;
           
            type.Type = value;
            Hos.Receptionists.Add(Recep);
            Hos.Roles.Add(type);
            Hos.SaveChanges();
            
            LblSuccessful.ForeColor=System.Drawing.Color.Green;
        LblSuccessful.Text="Adding Successfull";
        }
        else if (value=="Admin")
        {
             Role type = new Role();
             type.Username = TxtUserName.Text;
             if (TxtPassword.Text == TxtConfirmPassword.Text)
             {
                 type.Password = TxtPassword.Text;
             }
             type.Type = value;
             Hos.Roles.Add(type);
             Hos.SaveChanges();
            
            LblSuccessful.ForeColor=System.Drawing.Color.Green;
        LblSuccessful.Text="Adding Successfull";
        }
        else
	        {
            LblSuccessful.ForeColor=System.Drawing.Color.Red;
        LblSuccessful.Text="Adding Failed";
	        }
        TxtConfirmPassword.Text = "";
        TxtAdress.Text = "";
        TxtEmail.Text = "";
        TxtName.Text = "";
        TxtNationalID.Text = "";
        TxtPassword.Text = "";
        TxtPhone.Text = "";
        TxtUserName.Text = "";
       
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        TxtConfirmPassword.Text = "";
        TxtAdress.Text = "";
        TxtEmail.Text = "";
        TxtName.Text = "";
        TxtNationalID.Text = "";
        TxtPassword.Text = "";
        TxtPhone.Text = "";
        TxtUserName.Text = "";
        LblSuccessful.Text = "";
       

    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        TxtWearableID.Text = "";
        TxtWearablePassword.Text = "";
        LblWarn.Text = "";
    }
}