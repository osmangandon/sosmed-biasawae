<!DOCTYPE html>
<html lang="en">
<head>	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Karthikeyan K">
	<title>Mention System with PHP, MYSQL & jQuery - Demo by w3lessons.info</title>
	<!-- Bootstrap CSS file -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
		<style type="text/css">
body {
	margin-top: 75px;
}
footer {
	margin: 10px 0;
}
     
.photo {
	margin-bottom: 10px;
}
	</style>	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

	<link rel="stylesheet" type="text/css" href="css/jquery.mentionsInput.css">
	<style type="text/css">

#status-overlay {
    height: 100%;
    width: 100%;
    background: rgba(0, 0, 0, 0.50);
    position: fixed;
    top: 0;
    left: 0;
    z-index: 99999;
    overflow: hidden;
}
#highlight-textarea {
	background: #fff;
}

.form-control:focus {
    box-shadow: 0 0 0 2px #3399ff;
    outline: 0;
}
h2 {
	font-size: 20px;
}
</style>
</head>
<body>
	<div id="status-overlay" style="display: none"></div>
<!-- Header -->
		<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					 <a class="navbar-brand" href="/" style="font-size:22px;" target="_blank"><span class="label label-success">W3lessons</span></a>
				</div>
				<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
					<form class="navbar-form navbar-right" role="search" action="https://w3lessons.info" method="GET">
				      <div class="form-group">
				        <input type="text" name="s" class="form-control" placeholder="Search">
				      </div>
				      <button type="submit" class="btn btn-primary">Submit</button>
				    </form>
					<ul class="nav navbar-nav">
						 <li>
                        <a href="https://w3lessons.info/">Home</a>
                    </li>
                    <li>
                        <a href="https://w3lessons.info/about">About</a>
                    </li>
                    <li>
                        <a href="https://w3lessons.info/contact">Contact</a>
                    </li>
                    <li>
                        <a href="https://w3lessons.info/request-a-tutorial/" target="_blank">Request a Tutorial</a>
                    </li>
					</ul>
				</nav>
			</div>
		</header><!-- Body -->
<div class="container">
	<div class="row">
		<div class="col-md-8">
	
			<article>
				<h1><a href="">PHP Mention System - Demo</a></h1>
		        <div class="row">
		          
		          	<div class="col-sm-6 col-md-6">		          		
		          		<span class="glyphicon glyphicon-time"></span> October 20th, 2017	
		          	</div>
		          </div>
		          <hr>
					
<form id="highlight-textarea" method="POST" class="form">
 <div class="form-group">
<textarea onclick="highlight();" name="postText" class="form-control postText mention" cols="10" rows="3" placeholder="What&#039;s going on?" dir="auto"></textarea>
</div>

<p class="form-text text-muted pull-left">
 Type @google, @w3lessons, @facebook @karthi, @twitter</p>
<input type="button" value="Post" class="btn btn-primary pull-right postMention">
</form>


<div class="col-lg-12" id="post_updates" style="margin-top: 30px;">	 <div class="media">
    <div class="media-left">
      <img src="https://cdn.w3lessons.info/logo.png" class="media-object" style="width:60px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">w3lessons</h4>
      <p>I'm karthikeyan - Founder of <a target="_blank" href="https://w3lessons.info">@w3lessons</a></p>
    </div>
  </div>
  <hr>
  	 <div class="media">
    <div class="media-left">
      <img src="https://cdn.w3lessons.info/logo.png" class="media-object" style="width:60px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">w3lessons</h4>
      <p><a target="_blank" href="https://w3lessons.info">@w3lessons</a> your articles are amazing!!</p>
    </div>
  </div>
  <hr>
  	 <div class="media">
    <div class="media-left">
      <img src="https://cdn.w3lessons.info/logo.png" class="media-object" style="width:60px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">w3lessons</h4>
      <p>Hi <a target="_blank" href="https://www.facebook.com/w3lessons.info/">@facebook</a> you should beat <a target="_blank" href="https://plus.google.com/+KarthikeyanK">@google</a> soon</p>
    </div>
  </div>
  <hr>
  	 <div class="media">
    <div class="media-left">
      <img src="https://cdn.w3lessons.info/logo.png" class="media-object" style="width:60px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">w3lessons</h4>
      <p>Hi <a target="_blank" href="https://plus.google.com/+KarthikeyanK">@google</a> without you we are all nothing</p>
    </div>
  </div>
  <hr>
  	 <div class="media">
    <div class="media-left">
      <img src="https://cdn.w3lessons.info/logo.png" class="media-object" style="width:60px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">w3lessons</h4>
      <p><a target="_blank" href="https://www.facebook.com/itzurkarthi">@karthik</a>  Your website https://w3lessons.info has more contents</p>
    </div>
  </div>
  <hr>
  
</div>		          

<br/><br/><br/>
		        <div>
				<a class="btn btn-lg btn-danger" href="https://w3lessons.info/2017/10/20/facebook-style-mention-system-with-php-mysql-jquery/">&larr; Back to Tutorial & Download</a>
				</div>

        <div style="width:100%; margin-top: 20px"><h2>Posts you may like</h2>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:block"
     data-ad-format="autorelaxed"
     data-ad-client="ca-pub-5104998679826243"
     data-ad-slot="7569826231"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
               

			</article>				

		</div>
<div class="col-md-4">

				<div class="well">
                     <div class="row">
                        <div class="col-md-12">
    <p class="text-left pull-left">
      <img class="img-rounded" style="margin-right:10px;" src="https://www.gravatar.com/avatar/526bba62d8d99c7cd96f2a7dbc6ab0d3.jpg" alt="Karthikeyan K - Founder at W3lessons">
    </p>
    <p class="text-left" style="padding-left:10px; margin-left:10px;"><strong>Karthikeyan K</strong><br/>AWS Consultant & Blogger<br/>Chennai, India <br/><a href="mailto:karthi@w3lessons.info">karthi@w3lessons.info</a></p>
    <p class="text-left"><span class="glyphicon glyphicon-facebook"></span></p>
 </div>

    <div class="text-center">
 <form class="form-inline" action="http://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="window.open('http://feedburner.google.com/fb/a/mailverify?uri=nextweb2', 'popupwindow', 'scrollbars=yes,width=550,height=520');return true" _lpchecked="1">
  <div class="form-group">
    <label class="sr-only">Subscribe to get latest updates to your inbox.</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail2" placeholder="Enter your Email ID here">
    <input type="hidden" value="nextweb2" name="uri"><input type="hidden" name="loc" value="en_US">
  </div>
  <button type="submit" name="submit" class="btn btn-primary">Subscribe</button>
  <p class="text-center"><br/><img src="https://feeds.feedburner.com/~fc/nextweb2?bg=FF9900&fg=000&anim=1&label=readers"></p>
</form>
</div>

</div>

</div>


					<!-- Latest Posts -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Latest Posts</h4>
						</div>
						<ul class="list-group">
													<li class="list-group-item"><a href="singlepost.html">Memcached in PHP CodeIgniter</a> <span class="label label-default">11 Oct 2017</span></li>
													<li class="list-group-item"><a href="singlepost.html">20+ Popular Online Web Developer Tools in 2017</a> <span class="label label-default">4 Oct 2017</span></li>
													<li class="list-group-item"><a href="singlepost.html">Bootstrap Fixed Table Header using CSS</a> <span class="label label-default">27 Sep 2017</span></li>
													<li class="list-group-item"><a href="singlepost.html">Javascript Current Date and Time in Real Time</a> <span class="label label-default">23 Sep 2017</span></li>
													<li class="list-group-item"><a href="singlepost.html">Instant Google Search Engine API using Jquery</a> <span class="label label-default">19 Sep 2017</span></li>
													<li class="list-group-item"><a href="singlepost.html">Bootstrap Modal Form – Login, Contact, Credit Card Payment Form etc</a> <span class="label label-default">16 Sep 2017</span></li>
													<li class="list-group-item"><a href="singlepost.html">One Page Parallax WordPress Theme Free Download</a> <span class="label label-default">6 Sep 2017</span></li>
													<li class="list-group-item"><a href="singlepost.html">Top 10 Responsive HTML5 Frameworks in 2017</a> <span class="label label-default">29 Aug 2017</span></li>
													<li class="list-group-item"><a href="singlepost.html">Angular 4.0 – Installation &amp; Setup in Local Environment</a> <span class="label label-default">8 Aug 2017</span></li>
													<li class="list-group-item"><a href="singlepost.html">Facebook Style Highlight Status Update Box using jQuery &amp; CSS</a> <span class="label label-default">5 Aug 2017</span></li>
												</ul>
					</div>

					<!-- Categories -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>Categories</h4>
						</div>
						<ul class="list-group">
							<li class="list-group-item"><a href="https://w3lessons.info/category/php/">PHP</a></li>
							<li class="list-group-item"><a href="https://w3lessons.info/category/jquery/">jQuery</a></li>
							<li class="list-group-item"><a href="https://w3lessons.info/category/facebook/">Facebook Style Scripts</a></li>
							<li class="list-group-item"><a href="https://w3lessons.info/category/html5-2/">HTML5</a></li>
							<li class="list-group-item"><a href="https://w3lessons.info/category/css3/">CSS3</a></li>
						</ul>
					</div>


				</div>	</div>

</div>
<!-- Footer -->
<footer>
<div class="container">
	<hr />
	<p class="text-center">Copyright &copy; <a href="https://w3lessons.info">w3lessons.info</a> 2017. All rights reserved.</p>
</div>
</footer>
<!-- Bootstrap Script file -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src='https://cdn.rawgit.com/jashkenas/underscore/1.8.3/underscore-min.js' type='text/javascript'></script>
  <script src='js/lib/jquery.elastic.js' type='text/javascript'></script>
<script type="text/javascript" src="js/jquery.mentionsInput.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$('textarea').on('click', function(e) {
	    e.stopPropagation();
	});
	$(document).on('click', function (e) {
			$("#status-overlay").hide();
			$("#highlight-textarea").css('z-index','1');
			$("#highlight-textarea").css('position', '');
	});
});
function highlight()
{
	$("#status-overlay").show();
	$("#highlight-textarea").css('z-index','9999999');
	$("#highlight-textarea").css('position', 'relative');
}


$(document).ready(function(){

$('.postMention').click(function() {
    $('textarea.mention').mentionsInput('val', function(text) {
      var post_text = text;
      if(post_text != '')
      {
      	//post text in jquery ajax
      var post_data = "text="+encodeURIComponent(post_text);	
      $.ajax({
            type: "POST",
            data: post_data,
            url: 'ajax/post.php',
            success: function(msg) {
             if(msg.error== 1)
             {
              alert('Something Went Wrong!');
             } else {
             	
             	$("#post_updates").prepend(msg);
             	//reset the textarea after successful update
             	$("textarea.mention").mentionsInput('reset');

             }
            }
      });

      } else {
      	alert("Post cannot be empty!");
      }

    });
  });

//used for get users from database while typing @..
  $('textarea.mention').mentionsInput({
    onDataRequest:function (mode, query, callback) {
      $.getJSON('ajax/get_users_json.php', function(responseData) {
        responseData = _.filter(responseData, function(item) { return item.name.toLowerCase().indexOf(query.toLowerCase()) > -1 });
        callback.call(this, responseData);
      });
    }
  });

});
</script>

</body>
</html>