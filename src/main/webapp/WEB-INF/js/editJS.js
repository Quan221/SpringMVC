

//            $(document).ready(function() {
//
//            $("#search").on("keyup", function() {
//            var value = $(this).val().toLowerCase();
//            $("table tbody .tr").filter(function() {
//            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
//            });
//            });
//
//            var id;
//            $("table tbody .tr td").click(function() {
//            var text = $(this).find("button").text();
//
//            if (text == "") {
//
//            } else {
//            id= $(this).closest(".tr").find('td.id')
//            .text();
//
//            var name = $(this).closest(".tr").find('td.name')
//            .text();
//
//            var price = $(this).closest(".tr").find('td.price')
//            .text();
//
//            var quantity = $(this).closest(".tr").find(
//            'td.quantity').text();
//
//            var date = $(this).closest(".tr").find('td.date')
//            .text();
//
//            if (text == "Edit") {
//            $("#pname").val(name);
//            $("#pprice").val(price);
//            $("#pquantity").val(quantity);
//            $("#pdate").val(date);
//            $('#myModal1').modal('show');
//
//            } else {
//            /* $('#myModal2').modal('show'); */
//            if (confirm("Are you sure you want to delete this expense?")) {
//            $.post("delete/"+ id,{},function(response) {
//            location.reload();
//            });
//            } else {
//            return false;
//            }
//            }
//            }
//
//            });
//
//            $("#updbutton").click(function(){
//
//            var name=$("#pname").val();
//            var price=$("#pprice").val();
//            var quantity=$("#pquantity").val();
//            var date=$("#pdate").val();
//
//            if(name==""){
//            alert("please enter product name");
//            $("#pname").focus().css("border-color","red");
//            }else if(price==""){
//            alert("please enter product price");
//            $("#pprice").focus().css("border-color","red");
//            }else if(quantity==""){
//            alert("please enter product quantity");
//            $("#pquantity").focus().css("border-color","red");
//            }else if(date==""){
//            alert("please select product purchasing date");
//            $("#pdate").focus().css("border-color","red");
//            }else{
//            $.post("update",{
//            id:id,
//            name:name,
//            price:price,
//            quantity:quantity,
//            date:date,
//            },function(response){
//            location.reload();
//            $('#myModal1').modal('hide');
//            });
//            }
//
//            });
//
//            });
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})
