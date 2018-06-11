using System;
using System.Linq;

public partial class DoctorPage : System.Web.UI.Page
{   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void BtnWearInformation_Click(object sender, EventArgs e)
    {
       
        HospitalEntities2 Hos = new HospitalEntities2();
        string value = DDLWID.SelectedValue.ToString();
        string PatientID="";
        foreach (var Wear in Hos.wearables)
        {
            if (Wear.ID.ToString()==value)
            {
              PatientID = Wear.patient_ID.ToString();
            }
       
        }
        foreach (var patient in Hos.Patients)
        {
            if (patient.ID.ToString()==PatientID)
            {
                TxtPatientName.Text = patient.Name;
                TxtAge.Text = patient.Age.ToString();
                TxtLastDiag.Text = patient.Patient_State;
            }
        }
        Hos.SaveChanges();
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        TxtLastDiag.ReadOnly = false;
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        HospitalEntities2 Hos = new HospitalEntities2();
        string value = DDLWID.SelectedValue.ToString();
        string PatId ="";
        foreach (var Wear in Hos.wearables)
        {
            if (Wear.ID.ToString() == value)
            {
                PatId = Wear.patient_ID.ToString();
            }

        }
                //pa.Patient_State = TxtLastDiag.Text;
        foreach (var patient in Hos.Patients)
        {
            if (patient.ID.ToString() == PatId )
            {
                var stud= Hos.Patients.FirstOrDefault(c => c.ID ==patient.ID );
               stud.Patient_State = TxtLastDiag.Text;
               Hos.SaveChanges();
                TxtLastDiag.ReadOnly = true;
                
                
            }
           
        }
               
            
    }
}