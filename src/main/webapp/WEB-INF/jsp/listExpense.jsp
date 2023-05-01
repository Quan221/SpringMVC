

    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core"%>

    <div class="container-fluid" align="center">
    <div
    style="width: 85%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); transition: 0.3s;height: 85vh;">
    <div class="row">

    <div class="col-sm-4">
    <h1 style="text-align : center;" >List of Expenses</h1>
    </div>
    <div class="col-sm-4"></div>
    <div class="col-sm-4">
    <div class="form-group">
    <div align="center"
    style="display: flex; align-items: center; border: 1px lightgray solid; border-radius: 5px; margin-right: 10px; margin-left: 10px; margin-top: 20px;">
    <input type="text" class="form-control" style="border: 0;"
    id="search" name="search"
    placeholder="Search Expenses"><span
    class="material-icons"> search </span>
    </div>
    </div>

    </div>
    </div>
    <hr>

    <div class="row">

    <div class="col-sm-10">

    <div class="container" style="width: 90%;">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal1">
      Edit Expense
    </button>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
      Launch demo modal
    </button>


    <p:choose>
    <p:when test="${requestScope.exp.size() gt 0}">

    <table class="table table-hover">
    <thead>
    <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>PRICE</th>
    <th>QUANTITY</th>
    <th>DATE</th>
    <th>Edit</th>
    <th>Delete</th>
    </tr>
    </thead>
    <tbody>

    <p:forEach items="${requestScope.exp}" var="product">

    <tr class="tr">
    <td class="id">${product.id}</td>
    <td class="name">${product.name}</td>
    <td class="price">${product.price}</td>
    <td class="quantity">${product.quantity}</td>
    <td class="date">${product.date}</td>
    <td><button class="btn btn-primary">Edit</button></td>
    <td>
    <button class="btn btn-danger">Delete</button>
    </td>
    </tr>




    </p:forEach>
    </tbody>
    </table>

    </p:when>

    <p:otherwise>
    <h1 align="center">There is no Expense!!</h1>
    </p:otherwise>

    </p:choose>

    </div>


    </div>
    </div>

    </div>

    <!-- Edit Modal -->

    <div id="myModal1" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <div class="modal-header">

                <h1 class="modal-title">Edit Expense</h1>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
    </div>
    <div class="modal-body" align="left">
    <div class="row">
    <div class="col-sm-6">
    <div class="form-group">
    <label for="email">Product Name:</label> <input type="text"
    class="form-control" id="pname" placeholder="Product Name">
    </div>
    <div class="form-group">
    <label for="pwd">Product Price:</label> <input type="number"
    class="form-control" id="pprice" placeholder="Product Price">
    </div>
    </div>


    <div class="col-sm-6">
    <div class="form-group">
    <label for="email">Product Quantity:</label> <input
    type="number" class="form-control" id="pquantity"
    placeholder="Product Quantity">
    </div>
    <div class="form-group">
    <label for="email">Purchase Date:</label> <input type="date"
    class="form-control" id="pdate">
    </div>
    </div>

    <div align="center">
    <button type="submit" class="btn btn-primary" style="width: 60%;"
    id="updbutton">Update
    Expense</button>
    </div>

    </div>

    </div>

    </div>
    </div>

    </div>
    </div>

    <br>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
      </div>
    </div>
  <script src="<c:url value="/js/editJS.js" />"></script>