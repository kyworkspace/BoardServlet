<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
function submitBtn(){
	if(frm.BOARD_NAME.value==""){
		alert("이름을 입력해주세요");
		return false;
	}
	if(frm.BOARD_PASS.value==""){
		alert("비밀번호를 입력해주세요");
		return false;
	}
	if(frm.BOARD_SUBJECT.value==""){
		alert("제목을 입력해주세요");
		return false;
	}
	if(frm.BOARD_CONTENT.value==""){
		alert("내용을 입력해주세요");
		return false;
	}
	frm.submit();
}

</script>
<title>글작성</title>

</head>
<body>
		 
	<form action = replyAction align = center name = frm enctype="multipart/form-data" method = post>
	<input type = hidden id ="BOARD_NUM" name =BOARD_NUM value = "${param.BOARD_NUM}">
		<input type = hidden id ="BOARD_RE_LEV" name ="BOARD_RE_LEV" value = "${param.BOARD_RE_LEV}"> 
		<input type = hidden id ="BOARD_RE_REF" name ="BOARD_RE_REF" value = "${param.BOARD_RE_REF}"> 
		<input type = hidden id ="BOARD_RE_STEP" name ="BOARD_RE_STEP" value = "${param.BOARD_RE_STEP}">
		<table border solid align = center>
			<tr>
				<td>작성자</td>
				<td><input type=text id=BOARD_NAME name=BOARD_NAME size=30></td>
				<td>비밀번호</td>
				<td><input type=password id=BOARD_PASS name=BOARD_PASS size=30></td>
			</tr>
			<tr>
				<td>제목</td>
				<td colspan=3><input type=text id=BOARD_SUBJECT
					name=BOARD_SUBJECT size = 50></td>
			</tr>
			<tr>
				<td colspan = 4>글 내용</td>
			</tr>
			<tr>
				<td colspan = 4><textarea id=BOARD_CONTENT name=BOARD_CONTENT rows = "30"
						cols=100></textarea></td>
			</tr>
			<tr>
			<td>
			파일첨부
			</td>
			<td colspan = 3>
			<input type = file id = BOARD_FILE name = BOARD_FILE>
			</td>
			</tr>
			
			<tr>
			<td colspan = 4>
			<input type = button value = "글작성" onclick = "submitBtn()">
			<input type = reset value = "취소">
			</td>
			</tr>
		</table>
	</form>
</body>
</html>