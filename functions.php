<?php
require "config.php";


function dbConnect()
{
    $mysqli = new mysqli(SERVER, USERNAME, PASSWORD, DATABASE);
    if ($mysqli->connect_errno != 0) {
        return FALSE;
    } else {
        return $mysqli;
    }
}


function getCategories()
{
    $mysqli = dbConnect();
    $result = $mysqli->query("SELECT DISTINCT category FROM products");

    while ($row = $result->fetch_assoc()) {
        $categories[] = $row;
    }
    return $categories;
}


function getResultProducts($showItemsPerpage)
{
    $mysqli = dbConnect();
    $result = $mysqli->query("SELECT * FROM products ORDER BY title LIMIT $showItemsPerpage");

    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
    return $data;
}



function getProductsByCategory($category)
{
    $mysqli = dbConnect();

    $smtp = $mysqli->prepare("SELECT * FROM products WHERE category=?");
    $smtp->bind_param("s", $category);
    $smtp->execute();

    $result = $smtp->get_result();
    $data = $result->fetch_all(MYSQLI_ASSOC);
    return $data;
}



function getProductByTitle($title)
{

    $mysqli = dbConnect();
    $smtp = $mysqli->prepare("SELECT * FROM products WHERE title=?");
    $smtp->bind_param("s", $title);
    $smtp->execute();

    $result = $smtp->get_result();
    $data = $result->fetch_all(MYSQLI_ASSOC);
    return $data;
}
