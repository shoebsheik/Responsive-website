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
    public partial class Default : System.Web.UI.Page
    {
        UserBO bo = new UserBO();
        UserBL bl = new UserBL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtemail.Text) || string.IsNullOrEmpty(txtpassword.Text))
                {
                    Response.Write("<script language='JavaScript'>alert('Please fill all feilds');</script>");
                    return;
                }

                else
                {
                    bo.UserName = txtemail.Text;
                    bo.Password = txtpassword.Text;
                    int retvalue = bl.Selectdata(bo);

                    if (retvalue == 1)
                    {
                        Response.Redirect("studentinfo.aspx");
                    }
                    else
                    {
                        Response.Write("<script language='JavaScript'>alert('Invalid Credential')</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                
                Response.Write("<script language='JavaScript'>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
}