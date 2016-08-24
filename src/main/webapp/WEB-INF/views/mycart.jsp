<%@include file="/WEB-INF/views/header.jsp"%>
<h1><center>My Cart</center></h1>
<div class="container">
    <div class="row">
    <c:forEach items="${cartlist}" var="cart">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="col-xs-12">
                        <div >
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="<c:url value="/resources/img/${cart.image_name}"/>" style="width: 72px; height: 72px;"> </a>
                         <div></div>
                            <div >
                                <h4 ><a href="#">${cart.product_name}</a></h4>
                                <h5 > by <a href="#">${cart.product_brand}</a></h5>
                              
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                       	<input type="number" class="form-control text-center" value="1"> 
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${cart.product_price}</strong></td>
                       
                        <td class="col-sm-1 col-md-1">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>
                  
                   
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>$31.53</strong></h3></td>
                    </tr>
                    <tr>
                        
                        <td>   </td>
                        <td>   </td>
                        <td>
                       <a href="index"> <button type="button" class="btn btn-primary">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a></td>
                        <td>
                        <button type="button" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></td>
                    </tr>
                </tbody>
            </table>
        
        
        </div>
        </c:forEach>
    </div>
    </div>
</body>
</html>