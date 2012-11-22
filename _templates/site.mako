<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf8">
  <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <title>kanla — the simple, well-documented alerting software</title>
  <style type="text/css">
      /* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 700px;
      }
      .container-narrow > hr {
        margin: 30px 0;
      }

      /* Main marketing message and sign up button */
      .jumbotron {
        margin: 60px 0;
        text-align: center;
      }
      .jumbotron h1 {
        font-size: 72px;
        line-height: 1;
      }
      .jumbotron .btn {
        font-size: 21px;
        padding: 14px 24px;
      }

      /* Supporting marketing content */
      .marketing {
        margin: 60px 0;
      }
      .marketing p + h4 {
        margin-top: 28px;
      }

      footer {
        text-align: center;
      }
  </style>
</head>
<body>

<div class="container-narrow">

  <div class="masthead">
    <ul class="nav nav-pills pull-right">
<%
	menu = [
		[ "/", "Intro" ],
		[ "/docs/", "Docs" ],
		[ "/dev/", "Devel" ],
		[ "/contact/", "Contact" ],
	]
%>
% for link, title in menu:
				<li
% if self.attr.section == title.lower():
				class="active"
% endif
				><a href="${link}">${title}</a></li>
% endfor
    </ul>
    <h3>kanla</h3>
  </div>

  <hr>

  ${next.body()}

  <hr>

  <footer>
  © 2012 Michael Stapelberg, <a href="/impress.html">Impressum</a>
  </footer>
</div>
</body>
</html>
