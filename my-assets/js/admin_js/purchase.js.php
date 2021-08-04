
<?php
$cache_file = "purchase.json";
header('Content-Type: text/javascript; charset=utf8');
?>
    var count = 2;
    var limits = 500;
        "use strict";
    function addPurchaseOrderField1(divName){

        if (count == limits)  {
            alert("You have reached the limit of adding " + count + " inputs");
        }
        else{
            var newdiv = document.createElement('tr');
            var tabin="product_name_"+count;
            <?php $date = date('Y-m-d') ?>
             tabindex = count * 4 ,
           newdiv = document.createElement("tr");
            tab1 = tabindex + 1;

            tab2 = tabindex + 2;
            tab3 = tabindex + 3;
            tab4 = tabindex + 4;
            tab5 = tabindex + 5;
            tab6 = tab5 + 1;
            tab7 = tab6 +1;



            newdiv.innerHTML ='<td class="wt"> <input type="text"  placeholder="SN" name="sn[]" id="sn" class="form-control text-right stock_ctn_'+count+'"  /></td><td class="span3 supplier"><input type="text" name="product_name" required class="form-control product_name productSelection" onkeypress="product_pur_or_list('+count+');" placeholder="Pr. Name" id="product_name_'+count+'" tabindex="3" ><input type="hidden" class="autocomplete_hidden_value product_id_'+count+'" name="product_id[]" id="SchoolHiddenId"/><input type="hidden" class="sl" value="'+count+'"></td><td class="wt"><input type="text" placeholder="Category" id="category_name_'+count+'" class="form-control text-center"  readonly/></td><td class="wt"><input type="text" placeholder="Sub Category" id="subcat_name_'+count+'" class="form-control text-center"  readonly/></td><td class="wt"> <input type="text" placeholder="Parts No." name="parts_no[]" id="parts_number_'+count+'" class="form-control text-right stock_ctn_'+count+'"  readonly/></td><td class="wt"><input type="text"  id="available_quantity_'+count+'" class="form-control text-right stock_ctn_'+count+'" placeholder="0.00" readonly/></td><td class="test"><input type="text" name="proposed_quantity[]" required="" id="prosposed_quantity_'+count+'" class="form-control product_rate_'+count+' text-right" placeholder="1234" value="" min="0" tabindex="7"/></td><td class="test"><input type="text" name="order_quantity[]" required=""  id="order_quantity_'+count+'" class="form-control product_rate_'+count+' text-right" onkeyup="calculate_store('+count+');" onchange="calculate_store('+count+');" placeholder="1234" value="" min="0" tabindex="7"/></td><td><input type="date"  style="width: 110px" id="warrenty_date" name="warrenty_date[]"  /></td><td class="wt"> <input type="text" placeholder="Origin" name="origin[]" id="origin" class="form-control text-right stock_ctn_'+count+'"  /></td><td class="text-right"><input type="text" name="price[]" id="product_rate_'+count+'" onkeyup="calculate_store('+count+');" onchange="calculate_store('+count+');" required="" min="0" class="form-control text-right store_cal_'+count+'"  placeholder="0.00" value=""  tabindex="6"/></td><td class="text-right"><input class="form-control discount text-right" onkeyup="calculate_store('+count+');" onchange="calculate_store('+count+');" type="text" name="discount[]" id="discount_'+count+'" value="00"/><input type="hidden" name="row_total[]" value="" id = "row_total_'+count+'" class="row_total"></td><td><button  class="btn btn-danger text-right red" type="button" tabindex="8"><i class="fa fa-close"></i></button></td>';
            document.getElementById(divName).appendChild(newdiv);
            document.getElementById(tabin).focus();
            document.getElementById("add_invoice_item").setAttribute("tabindex", tab5);
            document.getElementById("add_purchase").setAttribute("tabindex", tab6);
            document.getElementById("add_purchase_another").setAttribute("tabindex", tab7);

            count++;

            $("select.form-control:not(.dont-select-me)").select2({
                placeholder: "Select option",
                allowClear: true
            });
        }
    }

  // Counts and limit for purchase order


    //Calculate store product
        "use strict";
    function calculate_store(sl) {

        var gr_tot = 0;
        var dis = 0;
        var discount = $("#discount_"+sl).val()
        var item_ctn_qty    = $("#order_quantity_"+sl).val();
        var vendor_rate = $("#product_rate_"+sl).val();

        var total_price     = (item_ctn_qty * (vendor_rate-discount));
        $("#row_total_" + sl).val(total_price.toFixed(2));


        //Total Price
        $(".row_total").each(function() {
            isNaN(this.value) || 0 == this.value.length || (gr_tot += parseFloat(this.value))
        });
         $(".discount").each(function() {
            isNaN(this.value) || 0 == this.value.length || (dis += parseFloat(this.value))
        });

        // $("#Total").val(gr_tot.toFixed(2,2));
        var grandtotal = gr_tot - dis;
        $("#Total").val(grandtotal.toFixed(2,2));
        invoice_paidamount();
    }


        function invoice_paidamount() {
      var t = $("#Total").val(),
            a = $("#paidAmount").val(),
            e = t - a;
     if(e > 0){
    $("#dueAmmount").val(e.toFixed(2,2))
}else{
  $("#dueAmmount").val(0)
}
}

    "use strict";
    function full_paid() {
    var grandTotal = $("#Total").val();
    $("#paidAmount").val(grandTotal);
    invoice_paidamount();
    calculate_store();
}

    //Delete row
        "use strict";
    function deleteRow(e) {
        var t = $("#purchaseTable > tbody > tr").length;
        if (1 == t) alert("There only one row you can't delete.");
        else {
            var a = e.parentNode.parentNode;
            a.parentNode.removeChild(a)
        }
        calculateSum();
    }


       "use strict";
    function product_pur_or_list(sl) {

    var supplier_id = $('#supplier_id').val();
    var base_url = $('#base_url').val();
    var csrf_test_name = $('[name="csrf_test_name"]').val();
    if ( supplier_id == 0) {
        alert('Please select Supplier !');
        return false;
    }

    // Auto complete
    var options = {
        minLength: 0,
        source: function( request, response ) {
            var product_name = $('#product_name_'+sl).val();
        $.ajax( {
          url: base_url + "Cpurchase/product_search_by_supplier",
          method: 'post',
          dataType: "json",
          data: {
            term: request.term,
            supplier_id:$('#supplier_id').val(),
            product_name:product_name,
            csrf_test_name:csrf_test_name
          },
          success: function( data ) {
            response( data );
          }
        });
      },
       focus: function( event, ui ) {
           $(this).val(ui.item.label);
           return false;
       },
       select: function( event, ui ) {
            $(this).parent().parent().find(".autocomplete_hidden_value").val(ui.item.value);
            var sl = $(this).parent().parent().find(".sl").val();

            var product_id          = ui.item.value;

          var  supplier_id=$('#supplier_id').val();


            var base_url    = $('.baseUrl').val();


            var available_quantity    = 'available_quantity_'+sl;
            var product_rate    = 'product_rate_'+sl;
           var category = 'category_name_' + sl;
           var subcat = 'subcat_name_' + sl;

           var parts_no = 'parts_number_' + sl;




            $.ajax({
                type: "POST",
                url: base_url+"Cinvoice/retrieve_product_data",
                 data: {product_id:product_id,supplier_id:supplier_id,csrf_test_name:csrf_test_name},
                cache: false,
                success: function(data)
                {
                    // console.log(data);
                    obj = JSON.parse(data);
                    $('#'+available_quantity).val(obj.data1.total_product);
                    $('#' + product_rate).val(obj.data1.supplier_price);
                    $('#' + category).val(obj.data2.category_name);
                    $('#' + subcat).val(obj.data2.subcat_name);
                    $('#' + parts_no).val(obj.data2.parts);

                }
            });

            $(this).unbind("change");
            return false;
       }
   }

   $('body').on('keypress.autocomplete', '.product_name', function() {
       $(this).autocomplete(options);
   });

}


        "use strict";
      function bank_paymet(val){
        if(val==2){
           var style = 'block';
           document.getElementById('bank_id').setAttribute("required", true);
        }else{
   var style ='none';
    document.getElementById('bank_id').removeAttribute("required");
        }

    document.getElementById('bank_div').style.display = style;
    }

    $( document ).ready(function() {
        var paytype = $("#editpayment_type").val();
        if(paytype == 2){
          $("#bank_div").css("display", "block");
      }else{
       $("#bank_div").css("display", "none");
      }

      $(".bankpayment").css("width", "100%");
    });
