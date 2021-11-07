using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform1
{
    public partial class _Default : Page
        
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Authd;
            Authd = "ApplicationCode executed using: ";
            Authd += System.Security.Principal.WindowsIdentity.GetCurrent().Name + "<br/>";
            Authd += "Is user Authenticated:";
            Authd += User.Identity.IsAuthenticated.ToString() + "<br/>";
            Authd += "Authentication Type,If Authenticted : ";
            Authd += User.Identity.AuthenticationType + "<br/>";
            Authd += "User Name, If Authenticated:";
            Authd += User.Identity.Name + "<br/>";
            Label6.Text = Authd;
            if (!IsPostBack)
            {
                if (ViewState["Clicks"] == null)
                {
                    Label3.Text = "View State: New Tasks - 0";
                }
                else
                {
                    Label3.Text = "View State: New Tasks - " + ViewState["Clicks"].ToString();
                }
                if (Session["Clicks"] == null)
                {
                    Label4.Text = "Session State: New Tasks - 0";
                }
                else
                {
                    Label4.Text = "Session State: New Tasks - " + Session["Clicks"].ToString();
                }
                if (Application["Clicks"] == null)
                {
                    Label5.Text = "Application State: New Tasks - 0";
                }
                else
                {
                    Label5.Text = "Application State: New Tasks - " + Application["Clicks"].ToString();
                }

            }
            TextBox1.Focus();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            int Clicks;
            CheckBoxList1.Items.Add(TextBox1.Text.Trim());
            TextBox1.Text = string.Empty;
            if (ViewState["Clicks"] == null)
                {
                    ViewState["Clicks"] = 0;
            }
            if (Session["Clicks"] == null)
            {
                Session["Clicks"] = 0;
            }
            if (Application["Clicks"] == null)
            {
                Application["Clicks"] = 0;
            }
            Clicks = (int)ViewState["Clicks"] + 1;
            ViewState["Clicks"] = Clicks;
            Label3.Text = "View State: New Tasks -" + ViewState["Clicks"].ToString();
            Clicks = (int)Session["Clicks"] + 1;
            Session["Clicks"] = Clicks;
            Label4.Text = "Session State: New Tasks -" + Session["Clicks"].ToString();
            Clicks = (int)Application["Clicks"] + 1;
            Application["Clicks"] = Clicks;
            Label5.Text = "Application State: New Tasks -" + Application["Clicks"].ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Label1.Text = string.Empty;
            for (int chkcount = 0; chkcount < CheckBoxList1.Items.Count; chkcount++)
            {
                if (CheckBoxList1.Items[chkcount].Selected)
                    Label1.Text += "," + CheckBoxList1.Items[chkcount].Text;

            }
            Label1.Text = Label1.Text.TrimStart(',');

        }
    }
}