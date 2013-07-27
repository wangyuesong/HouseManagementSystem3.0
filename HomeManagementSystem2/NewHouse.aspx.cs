using System;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HomeManagementSystem2
{
    public partial class NewHouse : System.Web.UI.Page
    {
        public String myhtnl="";
        public String price_search = "全部";
        public String area_search = "全部";
        public String house_search = "全部";
        protected void Page_Load(object sender, EventArgs e)
        {
            List<HouseInfo> hou_list = search_by_condition();
            list.InnerHtml = sethtml(hou_list);
            //search_by_money( sender,  e);
           // search_by_area(sender, e);
           // search_by_house(sender, e);
            
        }

        protected void search_by_money(object sender, EventArgs e)
        {
            LinkButton a1 = (LinkButton)sender;
            int[] price = new int[2];
            price_search = a1.Text;
            price = Price_Parse(price_search);
            Session["money_low"] = price[0];
            Session["money_high"] = price[1];


            list.InnerHtml = sethtml(search_by_condition());
            //show.InnerText += Session["money_low"].ToString() + "到" + Session["money_high"].ToString();
            show_total.InnerText = " " + search_by_condition().Count + " ";
        }
        

        protected void search_by_area(object sender, EventArgs e)
        {
            LinkButton a = (LinkButton)sender;
            area_search = a.Text;
            Session["area"] = area_search;

            list.InnerHtml = sethtml(search_by_condition());
            //show.InnerText += Session["area"].ToString();
            list.InnerHtml = sethtml(search_by_condition());
        }

        protected void search_by_house(object sender, EventArgs e)
        {
            LinkButton a = (LinkButton)sender;
           // house_search = a.Text;
            house_search = RoomKind_Parse(a.Text).ToString();
            Session["house"] = house_search;
            list.InnerHtml = sethtml(search_by_condition());
            //show.InnerText += Session["house"].ToString();
        }

        protected String  sethtml(List<HouseInfo> hou_list)
        {
            String html = "";
            //hou_list = search_by_condition();
            for (int i = 0; i < hou_list.Count; i++)
            {

                html += "<dl class=\"dd_list_house\">";
                html += "<dt class=\"dt_photo\">";
                html += "<img width=\"100px\"  height=\"75px\" src=\"showimg.aspx?id=";
                html += hou_list.ElementAt(i).photoId;
                html += "\" />";
                html += "</dt>";
                html += "<dd class=\"dd_houseInfo\">";
                html += "<a href=\"#\" class=\"house_description\">";
                //html += "wwwww";
                html += hou_list.ElementAt(i).Description;
                html += "</a>";
                
                html += "<p class=\"p_tag\">";
                html += hou_list.ElementAt(i).Community + "," + hou_list.ElementAt(i).Street+","+hou_list.ElementAt(i).Level;;
                //html += "地址：嘉定家园,";
                html += "</p>";
                html += "<p class=\"p_tag\">";
                html += hou_list.ElementAt(i).Room+"室"+hou_list.ElementAt(i).Hall+"厅"+hou_list.ElementAt(i).Toilet+"卫"+"  面积"+ hou_list.ElementAt(i).Area;
                //html += "户型：一室一厅";
                html += "</p>";
                //html += "<p>";
               // html += "超实惠";
               // html += "</p>";
                html += "<p>";
                //html += "电话：18817593214";
                html += hou_list.ElementAt(i).phoneNum;
                html += "</p>";
                html += "</dd>";
                html += "<dd class=\"dd_price\">";
                html += "<strong>";
                html += hou_list.ElementAt(i).Price;
                //html += "100万";
                html += "</strong>";
                html += "</dd>";
                html+="<div class=\"info_bot\">";
                html+="<i class=\"b\" style=\"float:left\">"+"活动";
                html+="</i>";
                html+="<div class=\"bot_R\" style=\"float:left\">";
                html+="<a href=\"http://www.baidu.com\" target=\"_blank\">";
                html+="优质商品房大甩卖，买一送一，买二送三";
                html+="</a></br></div></div>";
                html += "</dl>";
            }
            return html;
        }
        private List<HouseInfo> search_by_condition()
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            List<HouseInfo> list = new List<HouseInfo>();

            var result = dc.house.Where(n => n.salehouse.price > 0);
            foreach (var Items in result)
            {
                HouseInfo houseInfo = new HouseInfo
                {
                    photoId=Items.house_id,
                    Price = (int)Items.salehouse.price,
                    Description = Items.salehouse.description,
                    Area = Items.address1.area,
                    Street = Items.address1.street,
                    Community = Items.address1.community,
                    Level = Items.levels,
                    Decoration = Items.decoration,
                    phoneNum=Items.member1.person.phone,
                    Room=Items.room.ToString(),
                    Hall=Items.hall.ToString(),
                    Toilet=Items.toilet.ToString(),

                };
                list.Add(houseInfo);
                //show.InnerText = "price_search";
            }
           // show.InnerText = "price_search";
            return list;
        }

         public Expression<Func<house, bool>> getExpression()
        {
            Expression<Func<house, bool>> condition = PredicateExtensions.True<house>();
            //search_area
            String my_area = area_search;
             //String my_area= Convert.ToString(Session["area"]);
             if (!my_area.Equals("全部"))
            {
                condition = condition.And(m => m.address1.area == area_search);
            }
             //根据价格搜索
             int[] price_range = Price_Parse(price_search);
            //price_range[0] = Convert.ToInt32(Session["price_low"]);
            //price_range[1] = Convert.ToInt32(Session["price_high"]);
            if (price_range[1] == -1)
            {
                condition = condition.And(m => m.salehouse.price >= price_range[0]);
            }

            if (price_range[1] != -1)
            {
                condition = condition.And(m => m.salehouse.price >= price_range[0]);
                condition = condition.And(m => m.salehouse.price < price_range[1]);
            }
             //根据房型搜索
           // int RoomKind = Convert.ToInt32(Session["house"]);
            int RoomKind = RoomKind_Parse(house_search);
            if (RoomKind!=0)
            {
                condition = condition.And(m => m.room == RoomKind);
            }

            return condition;
        }
    


        public class HouseInfo
        {
            public int photoId
            {
                get;
                set;
            }
            public int Price    //房屋价格
            {
                get;
                set;
            }
            public String Description   //房屋描述
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

            //public int PhotoCount    //房屋图片个数
            //{
            //    get;
            //    set;
            //}
           
            public String phoneNum      //经纪人电话号码
            {
                get;
                set;
            }
            public String Room      //室
            {
                get;
                set;
            }
            public String Hall      //厅
            {
                get;
                set;
            }
            public String Toilet      //卫
            {
                get;
                set;
            }
        }

        private int[] Price_Parse(string search_condition_price)
        {
            int[] price_range = new int[2];
            if (search_condition_price.Equals("全部"))
            {
                price_range[0] = 0;
                price_range[1] = -1;
                return price_range;
            }

            if (search_condition_price.Equals("100万以下"))
            {
                price_range[0] = 0;
                price_range[1] = 100;
                return price_range;
            }

            if (search_condition_price.Equals("100-150万"))
            {
                price_range[0] = 100;
                price_range[1] = 150;
                return price_range;
            }
            if (search_condition_price.Equals("150-250万"))
            {
                price_range[0] = 150;
                price_range[1] = 250;
                return price_range;
            }
            if (search_condition_price.Equals("250-350万"))
            {
                price_range[0] = 250;
                price_range[1] = 350;
                return price_range;
            }
            if (search_condition_price.Equals("350-500万"))
            {
                price_range[0] = 350;
                price_range[1] = 500;
                return price_range;
            }
            if (search_condition_price.Equals("500万以上"))
            {
                price_range[0] = 500;
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
            if (search_condition_roomkind.Equals("全部"))
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
            if (search_condition_roomkind.Equals("别墅"))
            {
                roomKind = 6;
            }
            return roomKind;
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