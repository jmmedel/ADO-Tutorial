<!doctype html>
<html lang="en">
  <head>
    <title>Hello, world!</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-6 mx-auto">
          <h1>User Form This is ADO  tutorial  </h1>
          <form>
            <div class="form-group">
              <label>Name</label>
              <input type="text" class="form-control" id="name" placeholder="Name">
              <div class="invalid-feedback">
                Name must be between 2 and 10 characters
              </div>
            </div>
            <div class="form-group">
              <label>Zipcode</label>
              <input type="text" class="form-control" id="zip" placeholder="Zipcode">
              <div class="invalid-feedback">
                Enter a valid zipcode
              </div>
            </div>
            <div class="form-group">
              <label>Email</label>
              <input type="text" class="form-control" id="email" placeholder="Email">
              <div class="invalid-feedback">
                Enter a valid email
              </div>
            </div>
            <div class="form-group">
              <label>Phone Number</label>
              <input type="text" class="form-control" id="phone" placeholder="Phone Number">
              <div class="invalid-feedback">
               Enter a valid phone
              </div>
            </div>
            <input type="submit" value="Submit" class="btn btn-primary btn-block">
          </form>
        </div>
      </div>
    </div>

<%
    db_server = "127.0.0.1"
    db_name = "test"
    db_username = "root"
    db_userpassword = ""
    fieldname = ""
    tablename = "posts"

    connectstr = "Driver={MySQL ODBC 5.1 Driver};SERVER=" & db_server & ";DATABASE=" & db_name & ";UID=" & db_username & ";PWD=" & db_userpassword
        Set conn=Server.CreateObject("ADODB.Connection")
        Set rs=Server.CreateObject("ADODB.recordset")
        conn.open(connectstr)

     rs.Open "Select * from posts", conn
      do until rs.EOF
          for each x in rs.Fields
            response.Write(x)
          next
          response.Write("<br>")
          rs.MoveNext
      loop
      rs.close
      conn.close

%>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <script src="app.js"></script>
  </body>
</html>