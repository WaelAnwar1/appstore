<?php require "functions.php" ?>

<?php
if (isset($_GET['title'])) {
    $title = urldecode($_GET['title']);
    $product = getProductByTitle($title);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?php echo $product[0]['meta_description'] ?>">
    <meta name="keywords" content="<?php echo $product[0]['meta_keywords'] ?>">
    <!--custome style-->
    <link rel="stylesheet" href="css/main.css">

    <title><?php echo $title ?></title>

    <style>
        footer {
            position: fixed;
            bottom: 0;
        }
    </style>
</head>

<body>

    <?php include "incs/nav.php"; ?>
    <?php include "incs/header.php"; ?>


    <main>
        <div class="left">

            <div class="section-title">Category</div>

            <?php $categories = getCategories(); ?>

            <?php
            foreach ($categories as $category) {
            ?>
                <a href="category.php?category=<?php echo urlencode($category['category']); ?>">
                    <?php echo ucfirst($category['category']); ?>
                </a>
            <?php
            }
            ?>
        </div>




        <div class="right">

            <div class="section-title">Product Details</div>

            <div class="product">

                <div class="product-left">
                    <img src="<?php echo "products/{$product[0]['image']}" ?>" alt="">
                </div>


                <div class="product-right">

                    <p class="title">
                        <?php echo urlencode($product[0]['title']); ?>
                    </p>


                    <p class="description">
                        <?php echo $product[0]['description'] ?>
                    </p>


                    <p class="price">
                        <?php echo $product[0]['sell_price']; ?><span>EGP</span>
                    </p>

                </div>

            </div>

        </div>
    </main>

    <?php include "incs/footer.php"; ?>


    <script src="js/app.js"></script>
</body>

</html>