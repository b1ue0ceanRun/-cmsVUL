<!DOCTYPE html>
<html lang="zh-cn">
<head>
<include file="Base:header_meta" />
<include file="Seo:vod_play" />
</head>
<body class="vod-play">
<include file="Block:header" />
<div class="container ff-bg">
  <ul class="list-unstyled ff-row">
    <include file="Base:vod_player" />
  </ul>
  <ul class="list-unstyled ff-row ff-player-tool">
    <li class="col-xs-7 ff-col"><include file="Base:vod_updown" /></li>
    <li class="col-xs-5 ff-col text-right"><include file="Base:vod_playurl_next" /></li>
  </ul>
</div>
<!-- -->
<div class="clearfix ff-clearfix"></div>
<div class="container ff-bg">
  <include file="Base:vod_playurl" />
  <eq name="play_name_en" value="yugao">
  	<if condition="count($playurl_yugao) eq 1">
      <include file="Base:vod_playurl_yugao" />
    <else />
       <include file="Base:vod_playurl_yugao_dropdown" />
    </if>
  <else/>
    <if condition="count($playurl_line) eq 1">
      <include file="Base:vod_playurl_line" />
    <else />
      <include file="Base:vod_playurl_line_dropdown" />
    </if>
  </eq>
</div>
<!-- -->
<div class="clearfix ff-clearfix"></div>
<div class="container ff-bg vod-detail">
  <div class="media">
    <div class="media-left">
      <a href="{:ff_url_vod_read($list_id,$list_dir,$vod_id,$vod_ename,$vod_jumpurl)}">
        <img class="media-object img-thumbnail ff-img" data-original="{$vod_pic|ff_url_img=$vod_content}" alt="{$vod_name}免费观看">
      </a>
    </div>
    <div class="media-body">
      <h2 class="text-nowrap">
        <a class="ff-text" href="{:ff_url_vod_read($list_id,$list_dir,$vod_id,$vod_ename,$vod_jumpurl)}">{$vod_name}</a>
        <small><include file="Base:vod_continu" /></small>
      </h2>
      <dl class="dl-horizontal">
        <dt>主演：</dt>
        <dd class="ff-text-right text-nowrap">{$vod_actor|ff_url_search}</dd>
        <dt>导演：</dt>
        <dd class="ff-text-right">{$vod_director|ff_url_search='director'}</dd>
        <dt>类型：</dt>
        <dd class="ff-text-right">
        <a href="{:ff_url_vod_show($list_id,$list_dir,1)}">{$list_name}</a>
        <include file="Base:vod_type" />
        </dd>
        <dt>地区：</dt>
        <dd class="ff-text-right"><include file="Base:vod_area" /></dd>
        <dt>年份：</dt>
        <dd class="ff-text-right"><a href="{:ff_url('vod/type',array('id'=>$list_id,'type'=>'','area'=>'','year'=>$vod_year,'star'=>'','state'=>'','order'=>'hits'),true)}">{$vod_year|default='2017'}</a></dd>
      </dl>
    </div>
  </div>
</div>
<div class="clearfix ff-clearfix"></div>
<!-- -->
<div class="container ff-bg">
<include file="Block:vod_item_img_hot" />
<!-- -->
<include file="Block:vod_item_img_series" />
<!-- -->
<include file="Block:vod_item_img_actor" />
<!-- -->
<include file="Base:vod_forum" />
<!-- -->
<include file="Base:vod_record_set" />
</div><!--container end -->
{$vod_hits_insert}
<include file="Block:footer" />
</body>
</html>