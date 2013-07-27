<%@ Page Title="" Language="C#" MasterPageFile="~/MuBanYe/base.Master" AutoEventWireup="true" CodeBehind="index3.aspx.cs" Inherits="HomeManagementSystem2.index3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .new-information ul li em span
        {
            display: block;
            height: auto;
            overflow: hidden;
            color: #3B5997;
        }

        .new-information ul li a:hover em span
        {
            color: #f60;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="searchBar" id="searchBar">
            <div class="search-area" action="http://shanghai.anjuke.com/search" method="GET">
                <div class="searchinput" id="home_kw_div">
                    <input type="text" maxlength="100" autocomplete="off" name="k" id="home_kw" value="请输入房源特征、户型、地址…" x-webkit-speech="" lang="zh-CN">
                </div>
                <input type="hidden" value="1" name="t" id="home_kw_t textbox" autocomplete="off">
                <input type="submit" value="找二手房" id="home_kw_sale" class="find-button">
                <input type="submit" value="找新盘" id="home_kw_xinfang" class="find-button">
                <input type="hidden" value="1" name="rd">
            </div>
            <div class="filter-search">
            <div class="filter-sec">
            <h4>二手房</h4>
            <dl class="area-filter">
                <dt>区域：</dt>
                <dd>
                    <a href="http://shanghai.anjuke.com/sale/pudong/" _soj="SearchBar">浦东</a>
                    <a href="http://shanghai.anjuke.com/sale/minhang/" _soj="SearchBar">闵行</a>
                                        <a href="http://shanghai.anjuke.com/sale/xuhui/" _soj="SearchBar">徐汇</a>
                    <a href="http://shanghai.anjuke.com/sale/baoshan/" _soj="SearchBar">宝山</a>
                                        <a href="http://shanghai.anjuke.com/sale/putuo/" _soj="SearchBar">普陀</a>
                    <a href="http://shanghai.anjuke.com/sale/songjiang/" _soj="SearchBar">松江</a>
                                        <a href="http://shanghai.anjuke.com/sale/changning/" _soj="SearchBar">长宁</a>
                    <a href="http://shanghai.anjuke.com/sale/jiading/" _soj="SearchBar">嘉定</a>
                                        <a href="http://shanghai.anjuke.com/sale/nanhui/" _soj="SearchBar">南汇</a>
                    <a href="http://shanghai.anjuke.com/sale/zhabei/" _soj="SearchBar">闸北</a>
                                        <a href="http://shanghai.anjuke.com/sale/jingan/" _soj="SearchBar">静安</a>
                                        <a href="http://shanghai.anjuke.com/sale/yangpu/" _soj="SearchBar">杨浦</a>
                    <a href="http://shanghai.anjuke.com/sale/hongkou/" _soj="SearchBar">虹口</a>
                                        <a href="http://shanghai.anjuke.com/sale/qingpu/" _soj="SearchBar">青浦</a>
                                        <a href="http://shanghai.anjuke.com/sale/huangpu/" _soj="SearchBar">黄浦</a>
                    <a href="http://shanghai.anjuke.com/sale/shanghaizhoubian/" _soj="SearchBar">上海周边</a>
                 </dd>
              </dl>
              <dl class="price-filter">
                 <dt>价格：</dt>
                 <dd>
                                        <a href="http://shanghai.anjuke.com/sale/m4" _soj="SearchBar">80-100万</a>
                                        <a href="http://shanghai.anjuke.com/sale/m5" _soj="SearchBar">100-120万</a>
                                        <a href="http://shanghai.anjuke.com/sale/m6" _soj="SearchBar">120-150万</a>
                                        <a href="http://shanghai.anjuke.com/sale/m7" _soj="SearchBar">150-200万</a>
                                        <a href="http://shanghai.anjuke.com/sale/m8" _soj="SearchBar">200-250万</a>
                                        <a href="http://shanghai.anjuke.com/sale/m9" _soj="SearchBar">250-300万</a>
                                        <a href="http://shanghai.anjuke.com/sale/m10" _soj="SearchBar">300-500万</a>
                                        <a href="http://shanghai.anjuke.com/sale/m11" _soj="SearchBar">500-1000万</a>
                                    </dd>
                                </dl>
                            </div>
                            <div class="filter-new">
                                <h4>新房</h4>
                                <dl class="area-filter">
                                    <dt>区域：</dt>
                                    <dd>
                                        <a href="http://sh.fang.anjuke.com/loupan/jingan/" _soj="SearchBar">静安</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/jiading/" _soj="SearchBar">嘉定</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/songjiang/" _soj="SearchBar">松江</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/nanhui/" _soj="SearchBar">南汇</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/fengxian/" _soj="SearchBar">奉贤</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/jinshan/" _soj="SearchBar">金山</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/qingpu/" _soj="SearchBar">青浦</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/chongming/" _soj="SearchBar">崇明</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/shanghaizhoubian/" _soj="SearchBar">上海周边</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/baoshan/" _soj="SearchBar">宝山</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/zhabei/" _soj="SearchBar">闸北</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/minhang/" _soj="SearchBar">闵行</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/luwan/" _soj="SearchBar">卢湾</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/huangpu/" _soj="SearchBar">黄浦</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/xuhui/" _soj="SearchBar">徐汇</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/changning/" _soj="SearchBar">长宁</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/pudong/" _soj="SearchBar">浦东</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/hongkou/" _soj="SearchBar">虹口</a>
                                        <a href="http://sh.fang.anjuke.com/loupan/yangpu/" _soj="SearchBar">杨浦</a>
                                    </dd>
                                </dl>
                                <dl class="recomm">
                                    <dt>推荐：</dt>
                                    <dd>

                                        <a href="http://sh.fang.anjuke.com/officialnews/2013-07-04/15309.html?from=DGSY-XW" target="_blank" _soj="SearchBar">莱茵北郡洋房热销</a>

                                        <a href="http://sh.fang.anjuke.com/loupan/248397.html" target="_blank" _soj="SearchBar">银亿徐汇酩悦特惠</a>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
            <div class="mod switch-poster" onmouseover="this.className=&#39;mod switch-poster switch-hover&#39;" onmouseout="this.className=&#39;mod switch-poster&#39;">
                        <ul class="ad-scroll-ul" id="IFX_p934" style="left: 0px;">
                            <li id="1" style="width:700px;height:224px;border:none;padding:0px;margin:0px;overflow:hidden;"> 
                                <a target="_blank" href="img/ad0.jpg">
                                    <img style="width:700px;height:224px;border:none;" src="./Resources/1121.jpg"> </a>
                            </li>
                            <li id="2" style="width:700px;height:224px;border:none;padding:0px;margin:0px;overflow:hidden;">
                                    <a target="_blank" href="img/ad1.jpg"> 
                                        <img style="width:700px;height:224px;border:none;" src="./Resources/1122.jpg"> </a>
                                    </li>
                            <li id="3" style="width:700px;height:224px;border:none;padding:0px;margin:0px;overflow:hidden;">
                                <a target="_blank" href="img/ad2.jpg"> 
                                <img style="width:700px;height:224px;border:none;" src="./Resources/1123.jpg"></a>
                            </li>
                        </ul>
                        <a id="ad-next" class="show-next" href="javascript:void(0)"><i></i></a>
                        <a id="ad-prev" class="show-pre" href="javascript:void(0)"><i></i></a>
              </div>


        <div class="mod high-quality">
                            <h3>精品新房</h3>
                            <ul class="list">
                                <li>
                                    <a href="http://sh.fang.anjuke.com/fangyuan/3544468.html" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./index2_files/120x90c.jpg" alt="金山-枫桥紫郡">
                                        <em>金山-枫桥紫郡</em>
                                        <em>3室2厅2卫 , 128平米</em>
                                        <em class="price">77万</em>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://sh.fang.anjuke.com/fangyuan/4003037.html" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./index2_files/120x90c(1).jpg" alt="徐汇-银亿徐汇酩悦">
                                        <em>徐汇-银亿徐汇酩悦</em>
                                        <em>3室2厅2卫 , 150平米</em>
                                        <em class="price">630-715万</em>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://sh.fang.anjuke.com/fangyuan/4240468.html" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./index2_files/120x90c(2).jpg" alt="青浦-南山雨果">
                                        <em>青浦-南山雨果</em>
                                        <em>2室2厅1卫 , 88平米</em>
                                        <em class="price">178-240万</em>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://sh.fang.anjuke.com/fangyuan/4152629.html" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./index2_files/120x90c(3).jpg" alt="嘉定-保利天鹅语">
                                        <em>嘉定-保利天鹅语</em>
                                        <em>2室2厅1卫 , 90平米</em>
                                        <em class="price">150-168万</em>
                                    </a>
                                </li>
                            </ul>         
                            <a href="#" target="_blank" class="corner">更多新房 »</a>
                        </div>

                        <div class="mod high-quality">
                            <h3>推荐二手房</h3>
                            <ul class="list">
                                <li>
                                    <a href="http://sh.fang.anjuke.com/fangyuan/3544468.html" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./index2_files/120x90.jpg" alt="金山-枫桥紫郡">
                                        <em>金山-枫桥紫郡</em>
                                        <em>3室2厅2卫 , 128平米</em>
                                        <em class="price">77万</em>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://sh.fang.anjuke.com/fangyuan/4003037.html" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./index2_files/120x90(1).jpg" alt="徐汇-银亿徐汇酩悦">
                                        <em>徐汇-银亿徐汇酩悦</em>
                                        <em>3室2厅2卫 , 150平米</em>
                                        <em class="price">630-715万</em>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://sh.fang.anjuke.com/fangyuan/4240468.html" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./index2_files/120x90(2).jpg" alt="青浦-南山雨果">
                                        <em>青浦-南山雨果</em>
                                        <em>2室2厅1卫 , 88平米</em>
                                        <em class="price">178-240万</em>
                                    </a>
                                </li>
                                <li>
                                    <a href="http://sh.fang.anjuke.com/fangyuan/4152629.html" _soj="1SNew" target="_blank">
                                        <img style="height:110px; width:250px;" src="./index2_files/120x90(3).jpg" alt="嘉定-保利天鹅语">
                                        <em>嘉定-保利天鹅语</em>
                                        <em>2室2厅1卫 , 90平米</em>
                                        <em class="price">150-168万</em>
                                    </a>
                                </li>
                            </ul>         
                            <a href="#" target="_blank" class="corner">更多二手房 »</a>
                        </div>
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
        jQuery.noConflict();
        //========================三图轮播广告=======================
        jQuery(function () {
            adPrevAllow = true,
            adNextAllow = true;

            //点击上一页
            jQuery('#ad-prev').click(function () {
                if (adPrevAllow == true) {
                    adPrevAllow = false;
                    jQuery('.ad-scroll-ul').css('left', '-700px');
                    jQuery('.ad-scroll-ul li:last').prependTo('.ad-scroll-ul');
                    jQuery('.ad-scroll-ul').animate({
                        left: 0
                    }, 1000, function () {
                        adPrevAllow = true;
                    })
                }
            });

            //点击下一页
            jQuery('#ad-next').click(function () {
                if (adNextAllow == true) {
                    adNextAllow = false;
                    jQuery('.ad-scroll-ul').animate({
                        left: -700
                    }, 1000, function () {
                        jQuery('.ad-scroll-ul li:first').appendTo('.ad-scroll-ul');
                        jQuery('.ad-scroll-ul').css('left', '0');
                        adNextAllow = true;
                    })
                }
            });

            jQuery(function () {
                var isRun = true;
                var IFX = jQuery("#IFX_p934,#ad-next,#ad-prev");
                IFX.live("hover", function () {
                    isRun = false;
                }).live("mouseover", function () {
                    isRun = false;
                }).live("mouseout", function () {
                    isRun = true;
                });


                // 5秒自动滚动
                setInterval(rollAdvert, 5000);
                function rollAdvert() {
                    if (isRun == false) {
                        return false;
                    }
                    var ad_next = jQuery('#ad-next');
                    ad_next.click();
                }
            });

        })
        //========================三图轮播广告（结束）=======================
    </script>
</asp:Content>
