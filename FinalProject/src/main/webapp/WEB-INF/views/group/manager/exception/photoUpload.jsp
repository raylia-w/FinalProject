<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/group/photo/upload.do" id="photoUpload" enctype="multipart/form-data" method="post">
   <label for="사진 선택"><input type="file" id="file" name="file" value="사진"/></label>
   <input type="hidden" id="group_no" name="group_no" value=${group_no }>
   <input type="hidden" id="user_id" name="user_id" value=${user_id }>
   <button>업로드</button>
</form>
</body>
</html>