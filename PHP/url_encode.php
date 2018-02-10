<!-- Quick example of urlencode function in php -->

<form action="" method="post">

                Search: <input type="text" name="input" class="input"></input>

</form>



<?php

        $search = $_POST['input'];

        $search = urlencode($search);

        echo $search;

        header("Location: " . $search);

?>
