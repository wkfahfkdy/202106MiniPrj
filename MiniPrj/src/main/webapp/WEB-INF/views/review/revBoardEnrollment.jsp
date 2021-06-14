<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

﻿<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script>
	$(function(){
			CKEDITOR.replace('content',{
				filebrowserUploadUrl: 'upload/reviewUpload'
			})
	})
</script>
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
    </style>
  <div class="containerRev">
    <div class="containerRevHead">
    
    </div>
    <hr>
	<h1 align="center">리뷰 작성 영역</h1>
	<hr>
	 <div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
       
        <form action="#" method="post" >
          <table class="table table-striped">
            <tr>
                <td>작성자</td>
                <td><input type="text"  class="form-control" name="writer"></td>
            </tr>
            <tr>
                <td>제목</td>
                <td><input type="text"  class="form-control" name="subject"></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="email"  class="form-control" name="email"></td>
            </tr>
             
            <tr>
                <td>비밀번호</td>
                <td><input type="password"  class="form-control" name="password"></td>
            </tr>
             
            <tr>
                <td>글내용</td>
                <td><textarea rows="10" cols="50" id="content" name="content" class="form-control"></textarea></td>
            </tr>
            <tr>
                 
                <td colspan="2"  class="text-center">
                    <input type="submit" value="글쓰기" class="btn btn-success">
                    <input type="reset" value="다시작성" class="btn btn-warning">
                    <button type="button"  class="btn btn-primary">전체 게시글보기</button>
                </td>
            </tr>
             
          </table>
        </form>
    </div>
</div>
</div>