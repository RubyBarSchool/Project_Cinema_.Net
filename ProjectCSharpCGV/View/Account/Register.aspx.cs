using ProjectCSharpCGV.App_Code;
using ProjectCSharpCGV.CheckValidate;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectCSharpCGV.CheckValidate;
namespace ProjectCSharpCGV.View.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.drRegion.DataSource = RegionDAO.getAllRegion();
                this.drRegion.DataTextField = "name";
                this.drRegion.DataValueField = "id";
                this.drRegion.SelectedIndex = 0;
                this.drRegion.DataBind();

                this.drSite.DataSource = SiteDAO.getAllSite();
                this.drSite.DataTextField = "name";
                this.drSite.DataValueField = "id";
                this.drSite.SelectedIndex = 0;
                this.drSite.DataBind();
            }
        }

        protected void btRegister_Click(object sender, EventArgs e)
        {
            string name = this.txtName.Text;
            string phone = this.txtPhone.Text;                  
                string email = this.txtEmail.Text;

                string pass = this.txtPass.Text;
                string username = this.txtUsername.Text;
                bool gender = true;
                if (this.rdFemale.Checked)
                {
                    gender = false;
                }
                int idRegion = Convert.ToInt32(this.drRegion.SelectedValue);
                int idSite = Convert.ToInt32(this.drSite.SelectedValue);
                string dob =  this.txtNgaySinh.Text;
            if(!string.IsNullOrEmpty(name)&& !string.IsNullOrEmpty(phone) && !string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(pass) && !string.IsNullOrEmpty(username))
            {
                if (Check.VerifyPhoneNumber(phone))
                {
                    if (Check.IsValidEmail(email))
                    {


                        if (Check.VerifyDOB(dob))
                        {
                            if (AccountDAO.getAccountByUsername(username))
                            {
                                if (!AccountDAO.insertAccount(name, phone, email, username, pass, Convert.ToDateTime(dob), gender, idRegion, idSite))
                                {
                                    this.txtThongBao.Text = "Login fail!";
                                }
                                else
                                {
                                    Response.Redirect("../../Default.aspx");

                                }
                            }
                            else
                            {
                                this.txtThongBao.Text = "Username is exited !";
                            }
                        }
                        else
                        {
                            this.txtThongBao.Text = "Error format DOB !";
                        }
                    }
                    else
                    {
                        this.txtThongBao.Text = "Error format Email (abc123@gmail.com) !";
                    }
                }
                else
                {
                    this.txtThongBao.Text = "Error format Phone number!";
                }
            }
            else
            {
                this.txtThongBao.Text = "Not Empty!";
            }
                
            
        }
    }
}