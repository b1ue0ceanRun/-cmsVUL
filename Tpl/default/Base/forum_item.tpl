<volist name="item_list" id="feifei">
<div class="media">
  <a class="media-left" href="{:ff_url('user/index',array('id'=>$feifei['user_id']),true)}" target="_blank">
    <img src="{$feifei.user_face|ff_url_img|default=$root.'Public/images/face/default.png'}" class="img-circle user-face">
  </a>
  <div class="media-body">
    <h5 class="media-heading user-name">
      <a href="{:ff_url('user/index',array('id'=>$feifei['user_id']),true)}" target="_blank">{$feifei.user_name|htmlspecialchars}</a>
      <small>{$feifei.forum_addtime|date='Y/m/d',###}</small>
    </h5>
    <p class="forum-content">
      {$feifei.forum_content|htmlspecialchars|msubstr=0,300}
      <a class="forum-report" href="javascript:;" data-id="{$feifei.forum_id}" title="举报"><small>举报</small></a>
    </p>
    <p class="forum-btn">
      <a class="btn btn-default btn-xs ff-updown-set" href="javascript:;" data-id="{$feifei.forum_id}" data-module="forum" data-type="up" data-toggle="tooltip" data-placement="top" title="支持"><span class="glyphicon glyphicon-thumbs-up"></span> <span class="ff-updown-val">{$feifei.forum_up}</span></a>
      <a class="btn btn-default btn-xs ff-updown-set" href="javascript:;" data-id="{$feifei.forum_id}" data-module="forum" data-type="down" data-toggle="tooltip" data-placement="top" title="反对"><span class="glyphicon glyphicon-thumbs-down"></span> <span class="ff-updown-val">{$feifei.forum_down}</span></a>
      <a class="btn btn-default btn-xs forum-reply-set" href="javascript:;" data-id="{$feifei.forum_id}" data-toggle="collapse" title="回复"><span class="glyphicon glyphicon-comment"></span> <span class="forum-reply-val">{$feifei.forum_reply}</span></a>
      <a class="btn btn-default btn-xs forum-reply-get forum-reply-get-{$feifei.forum_reply}" data-id="{$feifei.forum_id}" href="{:ff_url('forum/detail', array('id'=>$feifei['forum_id']), true)}" title="查看回复"><span class="glyphicon glyphicon-align-right"></span> 查看回复</a>
    </p>
    <p class="collapse forum-reply" data-id="{$feifei.forum_id}">
    </p>
  </div>
</div>
</volist>