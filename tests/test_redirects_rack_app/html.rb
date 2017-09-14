def html1
  <<-HTML
    <!-- <form action='update' method='post'>
      <button type='submit'>
        update
      </button>
    </form> -->
<body style="margin:0px;padding:0px;overflow:hidden">
  <div> header </div>
  <div> header </div>
  <div> header </div>
  <div> header </div>
    <iframe src="/dashboard/result" frameborder="0" style="overflow:hidden;height:100%;width:100%" height="100%" width="100%"></iframe>
    <div> footer </div>
    <div> footer </div>
    <div> footer </div>
    <div> footer </div>
</body>
  HTML
end

def html2
  <<-HTML
    <!-- <form action='update' method='post'>
      <button type='submit'>
        update
      </button>
    </form> -->
<body style="margin:0px;padding:0px;overflow:hidden">
  <div> header </div>
  <div> header </div>
  <div> header </div>
  <div> header </div>
    <iframe src="/dashboard/result" frameborder="0" style="overflow:hidden;overflow-x:hidden;overflow-y:hidden;height:100%;width:100%;position:absolute;top:0px;left:0px;right:0px;bottom:0px" height="100%" width="100%"></iframe>
    <div> footer </div>
    <div> footer </div>
    <div> footer </div>
    <div> footer </div>
</body>
  HTML
end

def html3
  <<-HTML
    <!-- <form action='update' method='post'>
      <button type='submit'>
        update
      </button>
    </form> -->
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
$(window).load(function(){
       $(document).scroll(function () {
        var scrollTop = $(window).scrollTop();
        var docHeight = $(document).height();
        var winHeight = $(window).height();
        var scrollPercent = scrollTop / (docHeight - winHeight);

        var divHeight = $("div").height();
        var divContentHeight = $('div')[0].scrollHeight;

        var equation = scrollPercent * (divContentHeight-divHeight);

        $('div').scrollTop(equation);

    });

});
</script>
</head>
<body style="margin:0px;padding:0px;">
  <div> header </div>
  <div> header </div>
  <div> header </div>
  <div> header </div>
  <div>
    <iframe src="/dashboard/result" frameborder="0" style="overflow:hidden;height:90%;width:100%" height="80%" width="100%"></iframe>
  </div>
    <div> footer </div>
    <div> footer </div>
    <div> footer </div>
    <div> footer </div>
</body>
  HTML
end

def html4
  <<-HTML
    <!-- <form action='update' method='post'>
      <button type='submit'>
        update
      </button>
    </form> -->
<body style="margin:0px;padding:0px;overflow:hidden">
  <div> header </div>
  <div> header </div>
  <div> header </div>
  <div> header </div>
    <iframe src="/dashboard/result" frameborder="0" style="overflow:hidden;overflow-x:hidden;overflow-y:hidden;height:150%;width:150%;position:absolute;top:0px;left:0px;right:0px;bottom:0px" height="150%" width="150%"></iframe>
    <div> footer </div>
    <div> footer </div>
    <div> footer </div>
    <div> footer </div>
</body>
  HTML
end
