<?php
$pageTitle = "Bag of tags";
require "inc/header.inc.php";
?>
<div class="container mt-3">
    <div class="row">
        <div class="col mb-5" id="div1">
            <h2 class="mb-2">The Bag of many Tags</h2>
            <?php
            $sql = "SELECT post.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name 
                    FROM post 
                    JOIN author 
                    ON post.author = author.author_id";
            $stmt = $db->prepare($sql);
            $stmt->execute();
            $data = $stmt->fetchAll();

            $tags = array(); // Initialize an empty array to store tags

            foreach ($data as $row) {
                $sql = "SELECT post_tag.post_id, post_tag.tag_id, tag.tag 
            FROM post_tag 
            JOIN tag 
            ON post_tag.tag_id = tag.id 
            WHERE post_tag.post_id = :post_id";


                $stmt_tag = $db->prepare($sql);
                $stmt_tag->execute(["post_id" => $row->post_id]);
                $tags_data = $stmt_tag->fetchAll();

                foreach ($tags_data as $tag_row) {
                    $tag = $tag_row->tag;
                    $tags[$tag][] = $row; // Group posts by tag in the associative array
                }
            }

            // Print the list of tags as links
            foreach ($tags as $tag => $posts) {
                $postCount = count($posts);
                echo "<a href='tag.php?tag=" . urlencode($tag) . "' class='btn'>$tag ($postCount)</a><br>";
            }
            ?>
        </div>

    </div> <!-- Closing for .row -->
    <?php
    require "inc/footer.inc.php";
    ?>