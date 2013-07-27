<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singleHouse.aspx.cs" Inherits="HomeManagementSystem2.singleHouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link  href="../css/MuBanStyle.css" rel="stylesheet" type="text/css" />
    <link href ="css/singleHouse.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="header">
        <div class="banner">
            <div class="tabbar">
                <div class="tabs">
                    <div class="float_icon">新</div>
                    <a href="http://www.mianfeimoban.com/" title="首页"  class = "actived" style="margin-left:0;padding-left:0;">首 页</a> 
	                <a href="#" title="二手房信息">二手房</a> 
	                <a href="#" title="新房信息">新房</a> 
                    <a href="#" title="我要求租">求租</a>
	                <a href="../SellHouse_first.aspx" title="我要卖房">我要卖房</a> 
	                <a href="../hirePage.aspx"" title="我要出租">我要出租</a> 
	             </div>
            </div>
        </div>
    </div>
    <div class="bar"></div>
    <div id ="content">
        <div id ="propNav">
            <a href="Index.aspx">首页</a>
            >
            <a href="#">上海二手房出售</a>
            >
            <a href="#">徐汇</a>
            >
            <a href="#">万体馆</a>
            >
            <a href="#">汇翠花园</a>
        </div>
        <div id="content-propview">
            <div class="propertyV2">
                <div class="propInfoBigBox">
                    <h1 class="propInfoTitle">小区蕞便宜一房，房型方正，无可挑剔，买到就赚到！稀缺，稀缺！</h1>
                    <div class="propimg_switch">
                        <p id="current_img_apf_id_1" class="current_img">
                            <a href="#roompic"><span></span>
                                <img height="250px" width="300px" src="showimg.aspx?id=6" title="汇翠花园" alt="汇翠花园"/>
                            </a>
                        </p>
                    </div>
                    <div class="propinfo">
                        <ul class="prop_basic">
                            <li class="prop_basic_left">
                                报价：<em><asp:Label runat ="server" ID="priceTxt" OnLoad="Txt_Load"></asp:Label></em><span>万</span>
                                <a id="tax_icon" href="#" title="该价格为税费自理价" target="_blank">&nbsp;</a>
                            </li>
                            <li class="prop_basic_left leftstyle">房型：
                                <asp:Label runat ="server" ID="roomTxt" OnLoad="Txt_Load"/>室
                                <asp:Label runat ="server" ID="WCTxt" OnLoad="Txt_Load"/>厅
                                <asp:Label runat ="server" ID="hallTxt" OnLoad="Txt_Load"/>卫
                            </li>
                            <li class="prop_basic_left leftstyle">面积：
                                <asp:Label runat ="server" ID="areaTxt" OnLoad="Txt_Load"/>平米
                            </li>
                            <li class="prop_basic_left leftstyle">楼层：
                                <asp:Label runat ="server" ID="floorTxt" OnLoad="Txt_Load"/>
                            </li>
                            <li class="prop_basic_left leftstyle addressStyle">
                                小区：<a id="text_for_school_1" href="#" target="_blank" title="汇翠花园" _soj="saleup">汇翠花园</a>
                                &nbsp;&nbsp;(&nbsp;
                                <a target="_blank" href="#" title="汇翠花园小区的房源" _soj="saleup">房源</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a target="_blank" href="#" title="汇翠花园小区的相册" _soj="saleup">相册</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a target="_blank" href="#" title="汇翠花园小区的行情" _soj="saleup">行情</a>
                                &nbsp;)
                            </li>
                            <li class="prop_basic_left leftstyle addressStyle">
                                地址：<span id="text_for_school_2" title="漕溪北路737弄">漕溪北路737弄</span>&nbsp;&nbsp;&nbsp;(&nbsp;<a href="#commmap">地图</a>&nbsp;)
                            </li>
                            <li class="prop_basic_right">
                                <div class="list_spstyle">单价：
                                    <asp:Label runat ="server" ID="perTxt" OnLoad="Txt_Load"/>
                                </div>
                                <div class="list_spstyle">朝向：
                                    <asp:Label runat ="server" ID="dirTxt" OnLoad="Txt_Load"/>
                                </div>
                                <div class="list_spstyle">装修：
                                    <asp:Label runat ="server" ID="decoTxt" OnLoad="Txt_Load"/>
                                </div>
                                <div class="list_spstyle">建造年代：2003年</div>
                            </li>
                        </ul>
                    
                        <div class="new_report_sh" id="falseHouseNew">
                            <div class="report-box"><div class="inner">
                                <div class="tel"><b id="broker_phone_number">158 0040 2670</b></div>
                                <div id="falseHouseBoxOn" style="display: block;">
                                    <div class="report" onmouseover="this.className='report hover'" onmouseout="this.className='report'" title="反馈此房源价格虚假" id="falseHose">
                                        <span>联系或看房后，反馈此房源价格虚假</span>
                                        <a href="javascript:void(0)" title="反馈此房源价格虚假" class="btn">请告诉我们</a>
                                    </div>
                                </div>
                            </div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="navigation-propview">
            <div class="brokerV2">
                <div class="propBrokerBox">
                    <div class="propBrokerPhoto" onmouseover="document.getElementById('ms').style.display='block';" onmouseout="document.getElementById('ms').style.display='none';">
                        <img width="100" height="133" src="http://pic1.ajkimg.com/display/anjuke/73c2fbbacd587da6101f43971b5f064d/148x197x0x0/100x133.jpg" title="德佑地产 德佑地产万体馆A组 杨梓琨"/>
                        <div>
                        </div>
                    </div>
                    <div class="prop_new_line">
                        <a href="http://shanghai.anjuke.com/shop/view/1174304" target="_blank" id="broker_true_name">杨梓琨</a>
                    </div>

                    <div class="mycompany shop2c">
                        <p>职业 :  &nbsp;&nbsp;房产经纪人</p>
                        <p class="shopp">交易成功数目 :  &nbsp;&nbsp;0次</p>
                        <p>注册日期： &nbsp;&nbsp;2013.09.01</p>
                    </div>
                </div>
            </div>
        </div>

        <div id ="extra-propview">
            <p class="tag">房源描述</p>
            
<pre>地段优越：位于繁华的徐家汇附近，北临上海电影制片厂，西靠漕溪北路，南接八万人体育馆，近东方商厦、港汇广场等购物中心。
1、有天然氧吧之称成树多 
2、北入户南花园 
3、可以拎包入住 
4、全部做的地暖 
5、性价比高总价低 
6、有加建使用面积大 
7、与北郡相邻 
8、升值空间大临未来科技城 
9、双客厅设计带下沉式庭院 
10、户型多</pre>
        <p class="tag">房源配置</p>
        <pre>独立卫生间 阳台 冰箱 空调</pre>
        <p class="tag">房源组图</p>
            <div class="pic"><img src="img/houseimg.jpg"/></div>
            <div class="pic"><img src="img/houseimg.jpg"/></div>
            <div class="pic"><img src="img/houseimg.jpg"/></div>
            <div class="pic"><img src="img/houseimg.jpg"/></div>
        </div>

    </div>
</body>
</html>
