<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    	.containerRev{
    		width:100%;
    		height:1300px;
    		
    	}
    	.containerRevHead{
    		height:100px;
    	}
    	.row{
    		margin-top:60px;
    	}
    	.form-control-r{
    	width:100px;
    	}
    </style>
  <div class="containerRev">
    <div class="containerRevHead">
    
    </div>
    <hr>
	<h1 align="center">리뷰 작성 게시판 </h1>
	<hr>
	 <div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
       
        <form id="frm" name="frm" action="revBoardSubmit.do" method="post" enctype="multipart/form-data">
          <table class="table table-striped">
           <tr>
                <td></td><td></td>
            </tr>
            <tr>
                <td>제목</td>
                <td><input type="text"  class="form-control" name="rb_title"></td>
            </tr>
          
             
            <tr>
                <td>이미지 메인 업로드</td>
                <td><input style = "width:50%;" type="file" id="rb_image" name="rb_image" class="form-control"placeholder="SFile"> </td>
            </tr>
             
             
            <tr>
                <td>글내용</td>
                <td><textarea rows="10" cols="50" id="rb_content" name="rb_content" class="form-control"></textarea></td>
            </tr>
                        <tr>
                <td>작성자</td>
                <td><input type="text"  class="form-control form-control-r" name="u_id" value="${id }" readonly></td>
            </tr>
            <tr>
                 
                <td colspan="2"  class="text-center">
                    <button type="button" onclick="dis1();" class="btn btn-success">글쓰기</button>
                    <input type="reset" value="다시작성" class="btn btn-warning">
                    <button type="button"  class="btn btn-primary" onclick="location.href='review2.do'">전체 게시글보기</button>
                </td>
            </tr>
             
          </table>
        </form>
    </div>
</div>
</div>
<script>
function dis1(){
	var fileCheck = document.getElementById("rb_image").value;
	if(!fileCheck){
		alert("파일을 첨부해 주세요!");
	}else{
		frm.submit();
	}
		
	}
</script>