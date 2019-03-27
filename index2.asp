

<%
    db_server = "127.0.0.1"
    db_name = "test"
    db_username = "root"
    db_userpassword = ""
    fieldname = ""
    tablename = ""

    connectstr = "Driver={MySQL ODBC 5.1 Driver};SERVER=" & db_server & ";DATABASE=" & db_name & ";UID=" & db_username & ";PWD=" & db_userpassword
        Set conn=Server.CreateObject("ADODB.Connection")
        Set rs=Server.CreateObject("ADODB.recordset")
        conn.open(connectstr)

        rs.Open "Select * from posts", conn



%>