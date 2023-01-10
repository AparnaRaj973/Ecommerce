$(document).ready(function () {
    quantityincart();
});
     

function addtocart(productId) {
   
    $.ajax({
        type: "POST",
        url: "WebMethods.aspx/AddToCart",
        data: JSON.stringify({ productId: productId }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            quantityincart();
            alert(msg.d);
        }
    });
}
function removeFromCart(productId) {

    $.ajax({
        type: "POST",
        url: "WebMethods.aspx/RemoveFromCart",
        data: JSON.stringify({ productId: productId }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            quantityincart();
            alert(msg.d);
        }
    });
}

function deleteFromCart(productId) {
    $.ajax({
        type: "POST",
        url: "WebMethods.aspx/DeleteFromCart",
        data: JSON.stringify({ productId: productId }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            quantityincart();
            alert(msg.d);
            window.location.reload();
        }
    })
}
function quantityincart() {
    $.ajax({
        type: "POST",
        url: "../Pages/WebMethods.aspx/QuantityInCart",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            var quanty = 0;
            var totalPrice = 0;
            if (msg.d != "") {
                var response = JSON.parse(msg.d);
                quanty = response.qnty;
                totalPrice = response.TPrince;
            }
            $("#cartitemcount").text("[ " + quanty + " ] Items in your cart ");
            $("#cartTotal").text("₹" + totalPrice);
        }
    });
}


