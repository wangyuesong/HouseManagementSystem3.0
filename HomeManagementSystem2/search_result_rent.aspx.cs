using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeManagementSystem2.rent
{
    public partial class search_result_rent : System.Web.UI.Page
    {

        private String Search_Condition_Area = "不限";
        private String Search_Condition_Price = "不限";
        private String Search_Condition_RoomKind = "不限";
        private String Search_Condition_Type = "不限";
        private String Search_Result_Decoration = "不限";
        private String Search_Result_RentType = "全部房源";
        private String Order_Type = "默认排序";
       // private bool First_Load = true;
        private List<HouseInfo> Search_Result;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["first_load"]==null)
            {
                Session["first_load"]="true";
                Session["Search_Condition_Area"] = Search_Condition_Area;
                Session["Search_Condition_Price"] = Search_Condition_Price;
                Session["Search_Condition_RoomKind"] = Search_Condition_RoomKind;
                Session["Search_Condition_Tye"] = Search_Condition_Type;
                Session["Search_Result_Decoration"] = Search_Result_Decoration;
                Session["Search_Result_RentType"] = Search_Result_RentType;
                Session["Order_Type"] = Order_Type;
            }
            if (Session["first_load"].Equals("true"))
            {
                Search_Result = search_by_condition();
                HouseInfo houseInfo = new HouseInfo
                {
                    RentType = "整租",
                    RentPrice = 5000,
                    RentDescription = "临近十号线的房子，出行方便",
                    Area = "杨浦",
                    Street = "不知道街",
                    Community = "不知道小区",
                    Level = "5",
                    Decoration = "精装修",
                    PhotoCount = 3,
                    AgentName = "张三",
                    Room = 3,
                    Hall = 2
                };
               // content_result.InnerHtml = "";
               // content_result.InnerHtml += ConvToHtml(houseInfo);
              //  paging.InnerHtml = "";
              //  paging.InnerHtml += PagingHtml(8);
                Session["first_load"] = "false";
            }

            Search_Condition_Area=Session["Search_Condition_Area"].ToString();
            Search_Condition_Price = Session["Search_Condition_Price"].ToString();
            Search_Condition_RoomKind = Session["Search_Condition_RoomKind"].ToString();
            Search_Condition_Type = Session["Search_Condition_Tye"].ToString();
            Search_Result_Decoration = Session["Search_Result_Decoration"].ToString();
            Search_Result_RentType = Session["Search_Result_RentType"].ToString();
            Order_Type = Session["Order_Type"].ToString();
        }

        protected void Search_Area_Click(object sender, EventArgs e)
        {
            LinkButton link_button1 = (LinkButton)sender;
            TextBox1.Text = link_button1.Text;
            Search_Condition_Area = link_button1.Text;
            Session["Search_Conditin_Area"] = Search_Condition_Area;
            TextBox2.Text = Search_Condition_Area;

            String test = content_result.InnerHtml;
            show(search_by_condition(), Order_Type);
        }

        protected void search_price_click(object sender, EventArgs e)
        {
            LinkButton link_button1 = (LinkButton)sender;
            int[] price_range = new int[2];
            TextBox1.Text = link_button1.Text;
            Search_Condition_Price = link_button1.Text;
            Session["Search_Condition_Price"] = Search_Condition_Price;
            price_range = Price_Parse(Search_Condition_Price);
            TextBox2.Text = price_range[0].ToString();
            TextBox3.Text = price_range[1].ToString();

            show(search_by_condition(), Order_Type);
        }

        protected void search_roomkind_click(object sender, EventArgs e)
        {
            LinkButton link_button1 = (LinkButton)sender;
            TextBox1.Text = link_button1.Text;
            Search_Condition_RoomKind = link_button1.Text;
            Session["Search_Condition_RoomKind"] = Search_Condition_RoomKind;
            int roomKind = RoomKind_Parse(Search_Condition_RoomKind);
            TextBox2.Text = roomKind.ToString();
 
            show(search_by_condition(), Order_Type);
        }

        protected void search_type_click(object sender, EventArgs e)
        {
            LinkButton link_button1 = (LinkButton)sender;
            TextBox1.Text = link_button1.Text;
            Search_Condition_Type = link_button1.Text;
            Session["Search_Condition_Tye"] = Search_Condition_Type;
        
            TextBox2.Text = Search_Condition_Type;
            show(search_by_condition(), Order_Type);
        }



        protected void Button4_Click(object sender, EventArgs e)
        {
            content_result.InnerHtml = "";
            Expression condition=Expression.Constant(true);            
            Expression<Func<person,bool>> left1 = PredicateExtensions.True<person>();
            left1 = left1.And(n => n.agent.trade_number == 1);
            Expression<Func<person, bool>> right1 = PredicateExtensions.True<person>();
            right1 = right1.And(m => m.names == "wayne");
            left1 = left1.And(right1);
            DataClasses1DataContext dc = new DataClasses1DataContext();

            var result = dc.person.Where(left1);
            //var result = dc.person.Where(n=>n.agent.trade_number);
            foreach (var Items in result)
            {
                content_result.InnerHtml = Items.names+Items.agent.profession;
            }         
        }



        protected void reqult_rentTypr_Click(object sender, EventArgs e)
        {
            LinkButton link_button = (LinkButton)sender;
            Search_Result_RentType = link_button.Text;
            Session["Search_Result_RentType"] = Search_Result_RentType;
            show(search_by_condition(), Order_Type);
        }

        protected void OrderType_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList dropDownList = (DropDownList)sender;
            Order_Type = dropDownList.SelectedValue;
            TextBox1.Text = Order_Type;          
            Session["Order_Type"] = Order_Type;
            show(search_by_condition(), Order_Type);
            
        }

        protected void Decoration_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList dropDownList = (DropDownList)sender;
            Search_Result_Decoration = dropDownList.SelectedValue;
            TextBox1.Text = Search_Result_Decoration;
            Session["Search_Result_Decoration"] = Search_Result_Decoration;
            show(search_by_condition(), Order_Type);
        }

        private int[] Price_Parse(string search_condition_price)
        {
            int[] price_range = new int[2];
            if (search_condition_price.Equals("不限"))
            {
                price_range[0] = 0;
                price_range[1] = -1;
                return price_range;
            }

            if (search_condition_price.Equals("500以下"))
            {
                price_range[0] = 0;
                price_range[1] = 500;
                return price_range;
            }

            if (search_condition_price.Equals("8000以上"))
            {
                price_range[0] = 8000;
                price_range[1] = -1;
                return price_range;
            }

            String[] temp = new String[2];
            temp = search_condition_price.Split('-');

            try
            {
                price_range[0] = Int32.Parse(temp[0]);
                price_range[1] = Int32.Parse(temp[1]);
            }
            catch
            {
                price_range[0] = 0;
                price_range[1] = -1;
            }
            return price_range;

        }


        private int RoomKind_Parse(String search_condition_roomkind)
        {
            int roomKind = 0;
            if (search_condition_roomkind.Equals("不限"))
            {
                roomKind = 0;
            }
            if (search_condition_roomkind.Equals("一室"))
            {
                roomKind = 1;
            }
            if (search_condition_roomkind.Equals("二室"))
            {
                roomKind = 2;
            }
            if (search_condition_roomkind.Equals("三室"))
            {
                roomKind = 3;
            }
            if (search_condition_roomkind.Equals("四室"))
            {
                roomKind = 4;
            }
            if (search_condition_roomkind.Equals("五室及以上"))
            {
                roomKind = 5;
            }
            return roomKind;
        }


        private String ConvToHtml(HouseInfo houseInfo)
        {
            String Html = "";
            Html += "<dl class=\"dd_list_house\">";
            Html += "<dt class=\"dt_photo\">";
            Html += "<img width=\"100px\"  height=\"75px\" src=\"showimg.aspx?id=";
            Html += houseInfo.House_id;
            Html += "\" />";
            Html += "</dt> ";
            Html += "<dd class=\"dd_houseInfo\">";
            Html += " <a href=\"singleHouse.aspx?id=";
            Html += houseInfo.House_id;
            Html += "&type=1\" class=\"house_description\">";
            Html += houseInfo.RentDescription;
            Html += "</a>";
            Html += "<p></p>";
            Html += "<p class=\"p_tag\">";
            Html += houseInfo.Community + "&nbsp;&nbsp;" + houseInfo.Area + houseInfo.Street;
            Html += "</p>";
            Html += " <p class=\"p_tag\">";
            Html += houseInfo.Room + "室" + houseInfo.Hall + "厅," + houseInfo.RentType + "," + houseInfo.Decoration + ",楼层" + houseInfo.Level;
            Html += "</p>";
            Html += "<p class=\"p_name\">";
            Html += "经纪人"+houseInfo.AgentName;
            Html += "</p>";
            Html += "</dd>";
            Html += "<dd class=\"dd_price\">";
            Html += "<strong>";
            Html += houseInfo.RentPrice;
            Html += "</strong> 元/月";
            Html += "</dd>";
            Html += "</dl>";

            return Html;
        }

        private List<HouseInfo> search_by_condition()
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            List<HouseInfo> list = new List<HouseInfo>();

            var result = dc.house.Where(getSearchExpression());
            foreach (var Items in result)
            {
               // @delegate result1=dc.@delegate.FirstOrDefault(n=>n.house==Items.house_id);
                HouseInfo houseInfo = new HouseInfo
                {
                    House_id=Items.house_id,
                    RentType=Items.renthouse.types,
                    RentPrice=(int)Items.renthouse.payment,
                    RentDescription=Items.renthouse.description,
                    Area=Items.address1.area,
                    Street=Items.address1.street,
                    Community=Items.address1.community,
                    Level=Items.levels,
                    Decoration=Items.decoration,
                    PhotoCount=Items.photo.Count,
                   // AgentName=result1.agent1.person.names,
                    Room=(int)Items.room,
                    Hall=(int)Items.hall,
                };

                list.Add(houseInfo);
            }
            return list;
        }


        public Expression<Func<house, bool>> getSearchExpression()
        {
            Expression<Func<house, bool>> condition = PredicateExtensions.True<house>();
            //search_area
            if (!Search_Condition_Area.Equals("不限"))
            {
                condition = condition.And(m => m.address1.area == Search_Condition_Area);
            }

            int[] price_range = Price_Parse(Search_Condition_Price);
            if (price_range[1] == -1)
            {
                condition = condition.And(m => m.renthouse.payment >= price_range[0]);
            }

            if (price_range[1] != -1)
            {
                condition = condition.And(m => m.renthouse.payment >= price_range[0]);
                condition = condition.And(m => m.renthouse.payment < price_range[1]);
            }

            int RoomKind = RoomKind_Parse(Search_Condition_RoomKind);
            if (RoomKind!=0)
            {
                condition = condition.And(m => m.room == RoomKind);
            }

            if (!Search_Condition_Type.Equals("不限"))
            {
                condition = condition.And(m => m.types == Search_Condition_Type);
            }

            if (!Search_Result_RentType.Equals("全部房源"))
            {
                condition = condition.And(n => n.renthouse.types == Search_Result_RentType);
            }

            if (!Search_Result_Decoration.Equals("不限"))
            {
                condition = condition.And(n => n.decoration == Search_Result_Decoration);
            }
            return condition;
        }

        public void show(List<HouseInfo> list,String orderType)
        {
            content_result.InnerHtml = "";
            if (orderType.Equals("默认排序"))
            {

                if (list.Count <= 8)
                {
                    foreach (HouseInfo Items in list)
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }

                }

                else
                {
                    int count = list.Count / 8 + 1;
                    foreach (HouseInfo Items in list.Take(8))
                    {
                        String Html = ConvToHtml(Items);
                        content_result.InnerHtml += Html;
                    }
                    String PageHtml = PagingHtml(count);
                    content_result.InnerHtml += PageHtml;
                }
              
            }
            else if (orderType.Equals("租金从高到低"))
            {
                var result = list.OrderByDescending(n => n.RentPrice);
                foreach (HouseInfo Items in result)
                {
                    String Html = ConvToHtml(Items);
                    content_result.InnerHtml += Html;
                }
            }
            else if (orderType.Equals("租金从低到高"))
            {
                var result = list.OrderBy(n => n.RentPrice);
                foreach (HouseInfo Items in result)
                {
                    String Html = ConvToHtml(Items);
                    content_result.InnerHtml += Html;
                }
            }
            else
            {
                foreach (HouseInfo Items in list)
                {
                    String Html = ConvToHtml(Items);
                    content_result.InnerHtml += Html;
                }
            }
        }

        public String PagingHtml(int count)
        {

            String Html = "";
            Html += "<asp:LinkButton runat=\"server\"  hidefocus=\"true\"><span class=\"prepage\" OnClick=\"\"><i class=\"prepage_icon\">&nbsp;</i>&nbsp;上一页</span></asp:LinkButton>"; 
            for (int i=0;i<count;i++)
            {
                Html += "<asp:LinkButton runat=\"server\"  hidefocus=\"true\"><span>";
                Html += i;
                Html += "</span></asp:LinkButton>";
            }
            Html += "<asp:LinkButton runat=\"server\"  hidefocus=\"true\"><span class=\"nextpage\">下一页<i class=\"nextpage_icon\">&nbsp;</i></span></asp:LinkButton>";
            Html += " <asp:LinkButton runat=\"server\"  hidefocus=\"true\"><span class=\"no_border\">&gt;</span></asp:LinkButton>";
            return Html;
        }
    }






    public class HouseInfo
    {

        public int House_id
        {
            set;
            get;
        }
        public String RentType    //出租类型
        {
            get;
            set;
        }
        public int RentPrice    //出租价格
        {
            get;
            set;
        }
        public String RentDescription   //房屋描述
        {
            get;
            set;
        }

        public String Area  //地址，，，，区域
        {
            get;
            set;
        }
        public String Street   //地址      街道
        {
            get;
            set;
        }
        public String Community  // 地址      小区
        {
            get;
            set;
        }

        public String Level  //楼层
        {
            get;
            set;
        }

        public String Decoration   //装修
        {
            get;
            set;
        }

        public int PhotoCount    //房屋图片个数
        {
            get;
            set;
        }
        public String AgentName    //经纪人名字
        {
            get;
            set;
        }

        public int Room
        {
            set;
            get;
        }

        public int Hall
        {
            set;
            get;
        }

    }


    public static class PredicateExtensions
    {
        public static Expression<Func<T, bool>> True<T>() { return f => true; }

        public static Expression<Func<T, bool>> False<T>() { return f => false; }

        public static Expression<Func<T, bool>> Or<T>(this Expression<Func<T, bool>> expression1,
           Expression<Func<T, bool>> expression2)
        {
            var invokedExpression = Expression.Invoke(expression2, expression1.Parameters
                    .Cast<Expression>());

            return Expression.Lambda<Func<T, bool>>(Expression.Or(expression1.Body, invokedExpression),
            expression1.Parameters);
        }

        public static Expression<Func<T, bool>> And<T>(this Expression<Func<T, bool>> expression1,
              Expression<Func<T, bool>> expression2)
        {
            var invokedExpression = Expression.Invoke(expression2, expression1.Parameters
                 .Cast<Expression>());

            return Expression.Lambda<Func<T, bool>>(Expression.And(expression1.Body,
                   invokedExpression), expression1.Parameters);
        }
    }
}