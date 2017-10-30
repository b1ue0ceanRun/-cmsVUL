<php>if($special_tag_name){
	$item_vod = ff_mysql_vod('limit:24;tag_name:'.$special_tag_name.';tag_list:vod_tag;cache_name:default;cache_time:default;order:vod_hits desc');
  $item_news = ff_mysql_news('limit:30;tag_name:'.$special_tag_name.';tag_list:news_tag;cache_name:default;cache_time:default;order:news_hits desc');
}else{
	$item_vod = ff_mysql_vod('limit:24;ids:'.$special_ids_vod.';cache_name:default;cache_time:default;order:vod_hits desc');
  $item_news = ff_mysql_news('limit:30;ids:'.$special_ids_news.';cache_name:default;cache_time:default;order:news_hits desc');
}
</php><!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="Base:header_meta" />
<include file="Seo:special_detail" />
</head>
<body class="special-detail">
<include file="Block:header" />
<div class="container ff-bg">
<div class="page-header">
  <h2>
  <span class="glyphicon glyphicon-calendar ff-text"></span>
  <span class="ff-text">专题：{$special_name}</span>
  </h2> 
</div>
<div class="row ff-row">
  <div class="col-xs-12 ff-col">
    <empty name="special_banner">
      <div class="media">
        <div class="media-left hidden-xs hidden-sm">
          <img class="media-object img-thumbnail img-responsive ff-img" data-original="{$special_logo|ff_url_img}">
        </div>
        <div class="media-body content">
          {$special_content}
        </div>
      </div>
    <else/>
      <p><img class="img-thumbnail img-responsive ff-img" data-original="{$special_banner|ff_url_img}"></p>
      <p class="lead">{$special_content}</p>
    </empty>
  </div>
</div>
<div class="page-header">
  <h2><span class="glyphicon glyphicon-film ff-text"></span> 相关影片</h2>
</div>
<ul class="list-unstyled vod-item-img ff-img-215">
<volist name="item_vod" id="feifei">
<include file="Base:vod_item_img" />
</volist>
</ul>
<notempty name="item_news">
<div class="clearfix"></div>
<div class="page-header">
  <h2><span class="glyphicon glyphicon-list-alt ff-text"></span> 相关资讯</h2>
</div>
<ul class="news-item-ul ff-row">
  <volist name="item_news" id="feifei">
    <include file="Base:news_item_hot" />
  </volist>
</ul>
</notempty>
<!-- -->
<include file="Base:special_forum" />
{$special_hits_insert}
</div><!--container end -->
<div class="clearfix ff-clearfix"></div>
<div class="container ff-bg">
  <include file="Block:footer" />
</div>
</body>
</html>