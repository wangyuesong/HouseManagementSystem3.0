using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2
{
    public partial class showimg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            if(Request.QueryString.Get("id") != null)
            {
                int house_id = int.Parse(Request.QueryString.Get("id"));
                house House = dc.house.FirstOrDefault(a => a.house_id == house_id);
                Response.ContentType = "image/jpg";
                Response.BinaryWrite(House.thumbnails.ToArray());
                Response.End();
            }
        }
    }
}