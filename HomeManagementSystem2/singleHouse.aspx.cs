using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class singleHouse : System.Web.UI.Page
    {
        house House = new house();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            if (Request.QueryString.Get("id") != null)
            {
                int house_id = int.Parse(Request.QueryString.Get("id"));
                House = dc.house.FirstOrDefault(a => a.house_id == house_id);
            }
        }

        protected void Txt_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Get("id") != null)
            {
                if (Request.QueryString.Get("type") == "1")
                {
                    priceTxt.Text = Server.HtmlEncode(House.renthouse.payment.ToString());
                    roomTxt.Text = Server.HtmlEncode(House.room.ToString());
                    WCTxt.Text = Server.HtmlEncode(House.toilet.ToString());
                    hallTxt.Text = Server.HtmlEncode(House.hall.ToString());
                    areaTxt.Text = Server.HtmlEncode(House.area.ToString());
                    int per = (int)House.renthouse.payment / (int)House.area;
                    perTxt.Text = Server.HtmlEncode(per.ToString());
                    floorTxt.Text = Server.HtmlEncode(House.levels);
                    dirTxt.Text = Server.HtmlEncode(House.orientation);
                    decoTxt.Text = Server.HtmlEncode(House.decoration);
                }
            }
        }
    }
}