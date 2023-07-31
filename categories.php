<?php
$pageTitle = "Bag of cats";
require "inc/header.inc.php";
?>
<div class="container mt-3">
    <div class="row">
        <div class="col mb-5" id="div1">
            <h2 class="mb-2">The Category Bag</h2>
            <?php
            $sql = "SELECT post.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name 
        FROM post 
        JOIN author 
        ON post.author = author.author_id";
            $stmt = $db->prepare($sql);
            $stmt->execute();
            $data = $stmt->fetchAll();

            $categories = array(); // Initialize an empty array to store categories

            foreach ($data as $row) {
                $sql = "SELECT post_category.post_id, post_category.category_id, category.category 
            FROM post_category 
            JOIN category 
            ON post_category.category_id = category.category_id 
            WHERE post_category.post_id = :post_id";

                $stmt_category = $db->prepare($sql);
                $stmt_category->execute(["post_id" => $row->post_id]);
                $categories_data = $stmt_category->fetchAll();

                foreach ($categories_data as $category_row) {
                    $category = $category_row->category;
                    $categories[$category][] = $row; // Group posts by category in the associative array
                }
            }

            // Print the list of categories as links
            foreach ($categories as $category => $posts) {
                $postCount = count($posts);
                echo "<a href='category.php?category=" . urlencode($category) . "' class='btn'>$category ($postCount)</a><br>";
            }
            ?>
        </div>

    </div> <!-- Closing for .row -->
    <?php
    require "inc/footer.inc.php";
    ?>