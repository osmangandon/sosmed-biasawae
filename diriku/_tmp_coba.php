<!doctype html>
<html>
<head>
    <title>jquery.mentions example</title>
    <meta http-equiv="x-ua-compatible" content="IE=edge">

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="jquery.mentions.css">

    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script src="jquery.mentions.js"></script>
</head>
<body>


    <div class="mentions" contenteditable style="width: 300px; height: 200px; border: 1px solid #000">

    </div>


    <script>
        $('.mentions').mentionsInput({source: 'i_user.php'});
    </script>
</body>
