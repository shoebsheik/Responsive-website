using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
using BusinessObject;

namespace shoebsheikh_finaltest
{
    public partial class Studentinfo : System.Web.UI.Page
    {
        StudentBO sbo = new StudentBO();
        StudentBL sbl = new StudentBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //insert data
            if (string.IsNullOrEmpty(txtname.Text) || string.IsNullOrEmpty(txtdob.Text) ||
              string.IsNullOrEmpty(radiogender.Text) || string.IsNullOrEmpty(dddegree.Text) ||
              string.IsNullOrEmpty(ddbranch.Text) || string.IsNullOrEmpty(txtemail.Text) ||
              string.IsNullOrEmpty(txtmobile.Text) || string.IsNullOrEmpty(Label1.Text) ||
              string.IsNullOrEmpty(cbstatus.Text))
            {
                Response.Write("<script language='JavaScript'>alert('Please fill all feilds');</script>");
                return;
            }

            else
            {

                int retvalue = 0;

                sbo.Name = txtname.Text;
                sbo.Dob = txtdob.Text;
                sbo.Gender = radiogender.Text;

                sbo.Degree = dddegree.Text;
                sbo.Branch = ddbranch.Text;
                sbo.Email = txtemail.Text;
                sbo.Mobile = txtmobile.Text;
                sbo.Upload = Label1.Text;
                if (cbstatus.Checked)
                {
                    sbo.Status = "Active";
                }
                else
                {
                    sbo.Status = "Deactive";

                }
                


                retvalue = sbl.insert(sbo);
                Response.Write("<script language='JavaScript'>alert('Record insert Sucessfully')</script>");

                display();
            }
            }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // edit
            Button editButton = (Button)sender;
            GridViewRow row = (GridViewRow)editButton.NamingContainer;
            int rowIndex = row.RowIndex; 

            TextBox textBox = (TextBox)row.FindControl("TextBox7");
            string studentEmail = textBox.Text;

            StudentBO updatedStudent = new StudentBO();
            updatedStudent.Email = studentEmail;

            StudentBL sbl = new StudentBL();
            int retValue = sbl.Update(updatedStudent);
            if (retValue > 0)
            {
                GridView1.EditIndex = -1;
                display();
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // delete
            GridViewRow row = ((Button)sender).NamingContainer as GridViewRow;
            TextBox textBox = (TextBox)row.FindControl("TextBox7"); 
            string studentName = textBox.Text;
            Response.Write("<script language='JavaScript'>alert('Data Delete  Sucessfully')</script>");

        }
        protected void imageupload_Click(object sender, EventArgs e)
        {
            imageupload.SaveAs(Server.MapPath("~") + "//upload//" + imageupload.FileName);
            Label1.Text = imageupload.FileName;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            // clear code
           txtname.Text = "";
             txtdob.Text="";
             radiogender.Text="";

            dddegree.Text ="";
           ddbranch.Text ="";
             txtemail.Text ="";
             txtmobile.Text ="";
             Label1.Text ="";
             cbstatus.Text="";
        }
        protected void display()
        {
            GridView1.DataSource = GridView1;
            GridView1.DataBind();

            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];

            string studentEmail = ((TextBox)row.FindControl("TextBox7")).Text;
           
            StudentBO updatedStudent = new StudentBO();
            updatedStudent.Email = studentEmail;
            
            StudentBL sbl = new StudentBL();
            int retValue = sbl.Update(updatedStudent); 
            if (retValue > 0)
            {
                GridView1.EditIndex = -1; 
                display();
            }
        }

    }
}