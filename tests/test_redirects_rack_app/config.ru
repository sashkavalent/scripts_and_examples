load 'html.rb'

app = Rack::Builder.new do
  # it does not work because it uses $LOADED_FEATURES,
  # but this file is not included there
  use Rack::Reloader
  map '/dashboard' do
    run -> (env) { [200, { 'Content-Type' => 'text/html' }, [html3]] }
  end
  map '/dashboard/update' do
    run -> (env) { [301, { 'Location' => '/dashboard/result' }] }
  end
  map '/dashboard/result' do
def html321
    html = Array.new(100) { |i| "<div><a href='./greeting'>greeting #{i}</a></div>" }
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
<body>
#{html.join}
</body>
HTML
end
    run -> (env) { [200, { 'Content-Type' => 'text/html' }, [html321]] }
  end
 map '/dashboard/greeting' do
    run -> (env) { [200, { 'Content-Type' => 'text/html' }, ['<a href="./">main</a>']] }
  end
end

run app
