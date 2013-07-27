<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="NewHouse.aspx.cs" Inherits="HomeManagementSystem2.NewHouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .simple_multipage {
            height: 16px;
            width: 854px;
        }
        #content {
            height: 113px;
            width: 762px;
        }
        #file {
            height: 155px;
            width: 768px;
        }
        .info_main {
            width: 622px;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../css/house.css" rel="stylesheet" />
    <div class="topFilter">
        <div class="topHeader">
            <span class="topHeaderBut">
                全部上海楼盘
            </span>
            <a href="http://www.google.com" class="findH" target="_blank">
                上海楼盘大全 »
            </a>
        </div>
        <div class="topContent">
            <div class="pos">
                <span class="topContentSpan">
                    区域:
                </span>
                <span class="topContentSpans">
                    <strong>全部</strong>
                    <asp:LinkButton ID="area1" runat="server" OnClick="search_by_area">松江</asp:LinkButton>
                    <asp:LinkButton ID="area2" runat="server" OnClick="search_by_area">金山</asp:LinkButton>
                    <asp:LinkButton ID="area3" runat="server" OnClick="search_by_area">嘉定</asp:LinkButton>
                    <asp:LinkButton ID="area4" runat="server" OnClick="search_by_area">青浦</asp:LinkButton>
                    <asp:LinkButton ID="area5" runat="server" OnClick="search_by_area">浦东</asp:LinkButton>
                    <asp:LinkButton ID="area6" runat="server" OnClick="search_by_area">奉贤</asp:LinkButton>
                    <asp:LinkButton ID="area7" runat="server" OnClick="search_by_area">闵行</asp:LinkButton>
                    <asp:LinkButton ID="area8" runat="server" OnClick="search_by_area">宝山</asp:LinkButton>
                    <asp:LinkButton ID="area9" runat="server" OnClick="search_by_area">南汇</asp:LinkButton>
                    <asp:LinkButton ID="area10" runat="server" OnClick="search_by_area">徐汇</asp:LinkButton>
                    <asp:LinkButton ID="area11" runat="server" OnClick="search_by_area">普陀</asp:LinkButton>
                    <asp:LinkButton ID="area12" runat="server" OnClick="search_by_area">长宁</asp:LinkButton>
                    <asp:LinkButton ID="area13" runat="server" OnClick="search_by_area">闸北</asp:LinkButton>
                    <asp:LinkButton ID="area14" runat="server" OnClick="search_by_area">杨浦</asp:LinkButton>
				    <asp:LinkButton ID="area15" runat="server" OnClick="search_by_area">静安</asp:LinkButton>
                    <asp:LinkButton ID="area16" runat="server" OnClick="search_by_area">黄浦</asp:LinkButton>
                    <asp:LinkButton ID="area17" runat="server" OnClick="search_by_area">卢湾</asp:LinkButton>
                    <asp:LinkButton ID="area18" runat="server" OnClick="search_by_area">上海周边</asp:LinkButton>
                    <asp:LinkButton ID="area19" runat="server" OnClick="search_by_area">崇明</asp:LinkButton>
                    <asp:LinkButton ID="area20" runat="server" OnClick="search_by_area">全部</asp:LinkButton>
                </span>
            </div>
            <div class="price">
                <span class="topContentSpan">
                    价格:
                </span>
                <span class="topContentSpans">
                    <strong>全部</strong>
                    <asp:LinkButton ID="money1" runat="server" OnClick="search_by_money" >100万以下</asp:LinkButton>
                    <asp:LinkButton ID="money2" runat="server" OnClick="search_by_money" >100-150万</asp:LinkButton>
                    <asp:LinkButton ID="money3" runat="server" OnClick="search_by_money">150-250万</asp:LinkButton>
                    <asp:LinkButton ID="money4" runat="server" OnClick="search_by_money">250-350万</asp:LinkButton>
                    <asp:LinkButton ID="money5" runat="server" OnClick="search_by_money">350-500万</asp:LinkButton>
                    <asp:LinkButton ID="money6" runat="server" OnClick="search_by_money">500万以上</asp:LinkButton>   
                    <asp:LinkButton ID="money7" runat="server" OnClick="search_by_money">全部</asp:LinkButton>                                                 
                </span>
            </div>
            <div class="attr">
                <span class="topContentSpan">
                    类型:
                </span>
                <span class="topContentSpans">
                    <strong>全部</strong>
                    <asp:LinkButton ID="house1" runat="server" OnClick="search_by_house">一室</asp:LinkButton>
                    <asp:LinkButton ID="house2" runat="server" OnClick="search_by_house">二室</asp:LinkButton>
			        <asp:LinkButton ID="house3" runat="server" OnClick="search_by_house">三室</asp:LinkButton>
                    <asp:LinkButton ID="house4" runat="server" OnClick="search_by_house">四室</asp:LinkButton>
                    <asp:LinkButton ID="house6" runat="server" OnClick="search_by_house">五室及以上</asp:LinkButton>
                    <asp:LinkButton ID="house7" runat="server" OnClick="search_by_house">别墅</asp:LinkButton>
                    <asp:LinkButton ID="house8" runat="server" OnClick="search_by_house">全部</asp:LinkButton>
                </span>
            </div>
        </div>
    </div>
<div class="listing">
    <div class="top_bar glb_xp_topBar">
        <div class="text fl" >共有<span class="show_total" id="show_total" runat="server"> 2 </span>个符合要求的上海新房楼盘
            <span class="price"></span>
        </div>
        <div class="sort_select_box fl">
            <div class="newSort">排序：
                <asp:LinkButton ID="LinkButton1" runat="server">售价</asp:LinkButton>
            </div>
        </div>
        <div class="simple_pages fr">
            <div class="simple_multipage">
                <div class="pagelink noprexpage">
                    <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/img/left.ico" Width="19px" />
                </div>
                <div class="current">01</div>                                                                                                          
                <div class="pagelink nextpage">
                    <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/img/right.ico" Width="19px" />
                </div>
            </div>                
        </div>
    </div>
</div>
    <div class="list" id="list" runat="server">
        <dl class="dd_list_house">
            <dt class="dt_photo">
               <img width="100px" height="50px" src="showimg.aspx?id=1" />
            </dt>
            <dd class="dd_houseInfo">
                <a href="#" class="house_description">
                    最佳商品房
                </a>
                <p></p>
                <p class="p_tag">
                    嘉定区曹安公路 567弄
                </p>
                <p class="p_tag">
                    1室1厅1卫 面积：100平方米           
                </p>
                <p class="p_name">
                    电话：18817365917           
                </p>
            </dd>
            <dd class="dd_price">
                <strong>80万</strong>
            </dd>
            <div class="info_bot">
                <i class="b" style="float:left">活动</i>
                <div class="bot_R" style="float:left">
                     <a href="http://www.baidu.com" target="_blank">巧虎来到安亭新镇了,赶快过来参加吧!前一百名抢购者送~~一套</a><br/>
                 </div>
            </div>
        </dl>
        
    </div>
    
    <div class="p_thread thread_theme_4" id="thread_theme_4">
	    <div class="l_thread_info">
		    <ul class="l_posts_num">
                <li class="l_pager pager_theme_3">
                    <a href="/p/2483486455?pn=1">首页</a>
                    <a href="/p/2483486455?pn=4">上一页</a>
                    <a href="/p/2483486455?pn=3">3</a>
                    <a href="/p/2483486455?pn=4">4</a>
                    <span class="tP">5</span>
                    <a href="/p/2483486455?pn=6">6</a>
                    <a href="/p/2483486455?pn=7">7</a>
                    <a href="/p/2483486455?pn=8">8</a>
                    <a href="/p/2483486455?pn=6">下一页</a>
                    <a href="/p/2483486455?pn=38">尾页</a>
                </li>
	            <li class="l_reply_num" style="margin-left:2px; margin-right:10px">共有<span class="red">10</span>页</li>
            </ul>
         </div>
	</div>
</asp:Content>
