﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace HomeManagementSystem2
{
    public partial class hirePage_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public Byte[] getphoto(string photopath)
        {
            string str = photopath;
            FileStream file = new FileStream(str, FileMode.Open, FileAccess.Read);
            Byte[] bytBLOBData = new Byte[file.Length];
            file.Read(bytBLOBData, 0, bytBLOBData.Length);
            file.Close();
            return bytBLOBData;
        }

        protected void Button_post_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                DataClasses1DataContext dc = new DataClasses1DataContext();
                Application.Lock();
                house House = (house)Application["house"];
                int hireCost = (int)Application["hireCost"];
                string hireType = (string)Application["hireType"];
                if (FileUpload1.HasFile)
                    House.thumbnails = FileUpload1.FileBytes;
                renthouse rentHouse = new renthouse
                {
                    house = House,
                    types = hireType,
                    payment = hireCost,
                    description = TextBox2.Text,
                };
                dc.renthouse.InsertOnSubmit(rentHouse);
                dc.SubmitChanges();
                Server.Transfer("Index.aspx");
            }
        }
    }
}