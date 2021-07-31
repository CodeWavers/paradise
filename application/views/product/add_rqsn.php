

<html>
<head>
    <title>Codeigniter Shopping Cart with Ajax JQuery</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</head>
<body>


<div class="container">
    <br /><br />

    <div class="col-lg-6 col-md-6">
        <div class="table-responsive">
            <h3 align="center">Codeigniter Shopping Cart with Ajax JQuery</h3><br />
            <?php
            foreach($product as $row)
            {
                echo '
    <div class="col-md-4" style="padding:16px; background-color:#f1f1f1; border:1px solid #ccc; margin-bottom:16px; height:400px" align="center">
     <img src="'.$row->image.'" class="img-thumbnail" /><br />
     <h4>'.$row->product_name.'</h4>
     <h3 class="text-danger">$'.$row->price.'</h3>
     <input type="text" name="quantity" class="form-control quantity" id="'.$row->product_id.'" /><br />
     <button type="button" name="add_cart" class="btn btn-success add_cart" data-productname="'.$row->product_name.'" data-price="'.$row->price.'" data-productid="'.$row->product_id.'" />Add to Cart</button>
    </div>
    ';
            }
            ?>
            <input type ="hidden" name="csrf_test_name" id="" value="<?php echo $this->security->get_csrf_hash();?>">
        </div>
    </div>
    <div class="col-lg-6 col-md-6">
        <div id="cart_details">
            <h3 align="center">Cart is Empty</h3>
        </div>
    </div>

</div>
</body>
</html>
<script>
    $(document).ready(function(){

        $('.add_cart').click(function(){
            var product_id = $(this).data("productid");
            var product_name = $(this).data("productname");
            var product_price = $(this).data("price");
            var quantity = $('#' + product_id).val();
            var csrf_test_name = $('[name="csrf_test_name"]').val();
            if(quantity != '' && quantity > 0)
            {
                $.ajax({
                    url:"<?php echo base_url(); ?>Cadd_rqsn/add",
                    method:"POST",
                    data:{csrf_test_name:csrf_test_name,product_id:product_id, product_name:product_name, product_price:product_price, quantity:quantity},
                    success:function(data)
                    {
                        alert("Product Added into Cart");
                        $('#cart_details').html(data);
                        $('#' + product_id).val('');
                    }
                });
            }
            else
            {
                alert("Please Enter quantity");
            }
        });

        $('#cart_details').load("<?php echo base_url(); ?>Cadd_rqsn/load");

        $(document).on('click', '.remove_inventory', function(){
            var row_id = $(this).attr("id");
            var csrf_test_name = $('[name="csrf_test_name"]').val();
            if(confirm("Are you sure you want to remove this?"))
            {
                $.ajax({
                    url:"<?php echo base_url(); ?>Cadd_rqsn/remove",
                    method:"POST",
                    data:{csrf_test_name:csrf_test_name,row_id:row_id},
                    success:function(data)
                    {
                        alert("Product removed from Cart");
                        $('#cart_details').html(data);
                    }
                });
            }
            else
            {
                return false;
            }
        });

        $(document).on('click', '#clear_cart', function(){
            if(confirm("Are you sure you want to clear cart?"))
            {
                $.ajax({
                    url:"<?php echo base_url(); ?>Cadd_rqsn/clear",
                    success:function(data)
                    {
                        alert("Your cart has been clear...");
                        $('#cart_details').html(data);
                    }
                });
            }
            else
            {
                return false;
            }
        });

    });
</script>
