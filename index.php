<?php require "functions.php"; ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="a wide collection of websites, webapps">
    <meta name="keywords" content="car, resume, shop">

    <!--custome style-->
    <link rel="stylesheet" href="css/main.css">

    <title>AppStore</title>
</head>


<body id="index">

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

            <div class="section-title">Results</div>
            <?php $products = getResultProducts(4); ?>

            <div class="product">
                <?php
                foreach ($products as $product) {
                ?>
                    <div class="product-left">
                        <img src="<?php echo "products/{$product['image']}" ?>" alt="">
                    </div>


                    <div class="product-right">

                        <p class="title">
                            <a href="product.php?title=<?php echo urlencode($product['title']) ?>">
                                <?php echo $product['title'] ?>
                            </a>
                        </p>


                        <p class="description">
                            <?php echo $product['description'] ?>
                        </p>


                        <p class="price">
                            <?php echo $product['sell_price']; ?>
                            <span>EGP</span>
                        </p>

                    </div>

                <?php
                }
                ?>

            </div>

        </div>
    </main>

    <?php include "incs/footer.php"; ?>


    <script src="js/app.js"></script>
</body>

</html>