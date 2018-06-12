<?php

                try {
        //create the new database object via pdo
        $db = new PDO('mysql:dbname=feature-code2;host=localhost:3306','root','');
    }

    catch( PDOException $e ) {
    // Note The Typecast To An Integer!

                                print "Error!: " . $e->getMessage() . "<br/>";
                die();

    }

?>
