
<?php
require_once('../config.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['category_id']) && is_numeric($_POST['category_id'])) {
        $category_id = $_POST['category_id'];


        // Fetch the price for the selected category from the database
        $qry = $conn->prepare("SELECT price FROM category_list WHERE id = ? AND delete_flag = 0 AND status = 1");
        $qry->bind_param("i", $category_id);
        $qry->execute();
        $result = $qry->get_result();
        $row = $result->fetch_assoc();

        if ($row) {
            // Return the price in JSON format
            echo json_encode(array('price' => $row['price']));
            exit;
        }
    }
}

// Return an empty response if the request is invalid or the category price is not found
echo json_encode(array('price' => null));
?>
