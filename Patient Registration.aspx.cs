using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preview_dotnet_templates_registration_Form_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Patient patient = new Patient();
        patient.Name = TxtName.Text;
        patient.Age = Convert.ToInt16(TxtAge.Text);
        patient.Adress = TxtAdress.Text;
        patient.Email = TxtEmail.Text;
        patient.National_Id = TxtNationalID.Text;
        string value = RBGemder.SelectedItem.Value.ToString();
        if (value == "Male")
        {
            patient.Gender = true;
        }
        else
        {
            patient.Gender = false;
        }
        HospitalEntities2 Hos = new HospitalEntities2();
        Hos.Patients.Add(patient);
        Hos.SaveChanges();
        if (Hos.SaveChanges() == 0)
        {
            LblSuccessful.ForeColor = System.Drawing.Color.Green;
            LblSuccessful.Text = "Saved Successfully !";

            TxtName.Text = "";
            TxtPhone.Text = "";
            TxtEmail.Text = "";
            TxtNationalID.Text = "";
            TxtAdress.Text = "";
            TxtAge.Text = "";
        }
        else
        {
            LblSuccessful.ForeColor = System.Drawing.Color.Red;
            LblSuccessful.Text = "Not saved !";

        }

    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        HospitalEntities2 Hos = new HospitalEntities2();
        foreach (var searchID in Hos.Patients)
        {
            if (searchID.National_Id == TxtSearch.Text)
            {
                BtnSearch.Enabled = false;
                BtnSearch.Text = "Founded";
                TxtName.Text = searchID.Name;
                TxtNationalID.Text = searchID.National_Id;
                TxtAdress.Text = searchID.Adress;
                TxtPhone.Text = searchID.Phone;
                TxtEmail.Text = searchID.Email;
                TxtAge.Text = searchID.Age.ToString();
                if (searchID.Gender==true )
                {
                    foreach (ListItem listed in RBGemder.Items)
                    {
                        if (listed.Text=="Male")
                        {
                            listed.Enabled=true;
                        }
                        
                    }

                }
                else if (searchID.Gender==false)
                {
                    foreach (ListItem listed in RBGemder.Items)
                    {
                        if (listed.Text=="Female")
                        {
                            listed.Enabled=false;
                        }
                        
                    }
                }
                break;
            }
            else
            {
               
                LblResult.ForeColor = System.Drawing.Color.Red;
                LblResult.Text = "Not Found ";
            }
        }
    }
    protected void BtnConnect_Click(object sender, EventArgs e)
    {
        HospitalEntities2 Hos = new HospitalEntities2();
        wearable wear = new wearable();
        foreach (var patient in Hos.Patients)   
        {
            if (patient.National_Id == TxtSearch.Text)
            {
                foreach (var Wear_patient in Hos.wearables)
                {
                    if (Wear_patient.ID.ToString() == TxtWearableID.Text && Wear_patient.Password==TxtWearablePassword.Text)
                    {
                        Wear_patient.patient_ID= patient.ID;
                        wear.patient_ID = patient.ID;
                        Hos.SaveChanges();
                    }
                }
             
              
               
            }
            else
            {

                LblResult.ForeColor = System.Drawing.Color.Red;
                LblResult.Text = "Not Connected";
            }
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        TxtSearch.Text = "";
        TxtWearableID.Text = "";
        TxtWearablePassword.Text = "";
        BtnSearch.Enabled = true;
        BtnSearch.Text = "Search";

        TxtName.Text = "";
        TxtPhone.Text = "";
        TxtEmail.Text = "";
        TxtNationalID.Text = "";
        TxtAdress.Text = "";
        TxtAge.Text = "";

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        TxtName.Text = "";
        TxtAdress.Text = "";
        TxtAge.Text = "";
        TxtNationalID.Text = "";
        TxtEmail.Text = "";
        TxtPhone.Text = "";
             

    }
}