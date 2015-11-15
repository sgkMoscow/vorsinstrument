using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Net.Mail;

namespace vorsinstrument
{
    public partial class sverlo_bur_po_betonu_hagwert_SDS_10x460mm : System.Web.UI.Page
    {

        private SqlDataReader reader;
        private SqlConnection connection;

        private string SeriesIdGlobal;
        private string SendError;
        private string ImageGlobal;

        private string str = "Data Source=sql08-8-rus.corp.parking.ru;Initial Catalog=sgk111263_13;Persist Security Info=True;User ID=sgk111263_13;Password=1sHcxQ6r/.";
        
        
          
        protected void Page_Load(object sender, EventArgs e)
        {

                       //Загрузка цены:
              load_price();
         
          
                //Если пользовать нажал кнопку КУПИТЬ, после перезагрузки страницы выводим сообщение:
               // buy_yes();
         
            //Заполняет imageurl и lbltext в всплывающем окне:
            PhotoZakaz.ImageUrl = photo.ImageUrl;
            lblNameWindow.Text = lblName.Text;
            
            
           
          

        }

        protected void buy_yes()
        {
            //if (Request.QueryString["buy"] != null)
            //{
            //    string reqResult = Request.QueryString["buy"].ToString();
            //    if (reqResult == "true")
            //    {
            //        string clientScript = "javascript:myFunction()";
            //        //string clientScript = "alert('Privet');";
            //        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "MyClientScript", clientScript);
            //        //Page.ClientScript.RegisterStartupScript(this.GetType(), "js_ret_events", "<script language='javascript'>document.getElementById('popup').style.display='block';document.getElementById('parent_popup').style.display='block';document.getElementById('catSearch_main').style.display='none';document.getElementById('rightContacts').style.display='none';document.getElementById('leftSearch').style.display='none';document.getElementById('nav').style.display='none';return false;</script>");
            //    }
            //}
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            try
            {
                MailMessage m = new MailMessage();
                m.From = new System.Net.Mail.MailAddress("info@vorsinstrument.ru");
                m.To.Add(new MailAddress("info@vorsinstrument.ru"));
                m.Subject = "Письмо с сайта vorsinstrument.ru";
                m.Body = "Заказ: " + lblNameWindow.Text + "   " +
                        "Сообщение/Контакты: " + tbCoordinates.Text;


                System.Net.Mail.SmtpClient Smtp = new SmtpClient("smtp.yandex.ru", 25);
                Smtp.EnableSsl = true;
                Smtp.Credentials = new System.Net.NetworkCredential("info@vorsinstrument.ru", "k7335915");
                Smtp.Send(m);
                Response.Redirect("buyOK.aspx");

            }

            catch { }



        }

       

        protected void load_price() 
        {
            string price_name = null;
            string article = null;
            price_name = Request.QueryString["price_name"];
            article = Request.QueryString["article"];

            if (article != null)
            {
                if (price_name != null)
                {

                    SqlConnection con = new SqlConnection(str);
                    string sql = "SELECT id, article, ROUND([price]*(SELECT course FROM Course_USD WHERE id = 1),2) AS [price] FROM " + price_name + " WHERE article=" + article + ";";
                    SqlDataAdapter da = new SqlDataAdapter(sql, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds, price_name);
                    DataRow dr;
                    dr = ds.Tables[price_name].Rows[0];

                    //Заполняем стоимость товара:
                    lblprice.Text = dr["price"].ToString();
                }
                else {Response.Redirect("Error.aspx");}

            }
            else {Response.Redirect("Error.aspx"); }
        }
    }
}