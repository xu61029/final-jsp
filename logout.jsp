<% 
    
    if(session.getAttribute("id") != null){            

		//request.getSession().removeAttribute( "id");
		//request.getSession(true).invalidate(); 
		
		session.removeAttribute("id");
        response.sendRedirect("login.html") ;
	}else{
        out.println("未登入") ;
	}
%>