<%--
  Created by IntelliJ IDEA.
  User: curonsys
  Date: 2020-02-21
  Time: 오전 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/webs/cmmn/init.jsp"%>
<!DOCTYPE>
<html lang="ko">
<head>
    <title>Whisper Board</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

    //파일 리스트 번호
    var fileIndex=0;
    //등록할 파일 전체 사이즈
    var totalFileSize= 0;
    //파일 리스트
    var fileList = new Array();
    //파일 사이즈 리스트
    var fileSizeList = new Array();
    // 등록 가능한 파일 사이즈 MB
    var uploadSize = 50;
    // 등록 가능한 총 파일 사이즈 MB
    var maxUploadSize = 500;

    $(function(){
        //파일 드롭 다운
        fileDropDown();
    });

    //fileDropDown
    function fileDropDown(){
        var dropZone = $("#dropZone");
        //Drop 기능
        dropZone.on('dragenter',function(e){
            e.stopPropagation();
            e.preventDefault();
            //드롭 다운 css
            dropZone.css('background-color','#E3F2FC');
        });

        dropZone.on('dragleave',function(e){
            e.stopPropagation();
            e.preventDefault();
            //드롭 다운 영역 css
            dropZone.css('background-color','#FFFFFF');
        });
        dropZone.on('dragover',function(e){
            e.stopPropagation();
            e.preventDefault();
            //드롭다운 css
            dropZone.css('background-color','#E3F2FC');
        });
        dropZone.on('drop',function(e){
            e.preventDefault();
            //드롭다운 영역 css
            dropZone.css('background-color','#ffffff');

            var files= e.originalEvent.dataTransfer.files;
            if(files != null){
                if(files.length <1 ){
                    alert("폴더 업로드 불가");
                    return;
                }
                selectFile(files);
            }else{
                alert("ERROR");
            }
        });
    }

    //파일 등록
    function selectFile(files){
        // 다중 파일 등록
        if(files != null){
            for(var i = 0; i<files.length; i++){
                //파일 이름
                var fileName = files[i].name;
                var fileNameArr = fileName.split("\.");
                //확장자
                var ext = fileNameArr[fileNameArr.length - 1];
                //파일 사이즈
                var fileSize = files[i].size / 1024 / 1024;

                if($.inArray(ext, ['exe','bat','sh','java', 'jsp', 'html', 'js', 'css', 'xml']) >= 0){
                    //확장자 체크
                    alert(ext+ " 는 등록 불가 확장자 입니다.");
                    break;

                }else if(fileSize> uploadSize){
                    //파일 사이즈 체크
                    alert(uploadSize + "MB 용량이 초과되는 파일입니다.");
                    break;
                }else{
                    //전체 파일 사이즈
                    totalFileSize += fileSize;

                    //파일 배열에 넣기
                    fileList[fileIndex] = files[i];

                    //파일 사이즈 배열에 넣기
                    fileSizeList[fileIndex] = fileSize;

                    //업로드 파일 목록 생성
                    addFileList(fileIndex, fileName, fileSize);

                    //파일 번호 증가
                    fileIndex++;
                }
            }
        }else{
            alert("Error");
        }
    }

    //업로드 파일 목록 생성
    function addFileList(fIndex, fileName , fileSize){
        var index=1;
        var html = "";
        html += "<tr id='fileTr_"+fIndex+"'>";
        html += "   <td class ='left'>";
        html += fileName + "/" + fileSize +"MB"+ "<a href='#' onclick = 'deleteFile("+fIndex+"); return false;' class ='btn small bg_02'>삭제 </a>";
        html += "</td>";
        html += "</tr>";

        $('#fileTableTbody').append(html);
        index++;
    }

    //업로드 파일 삭제
    function deleteFile(fIndex){
        //전체 파일 사이즈 수정
        totalFileSize -= fileSizeList[fIndex];

        //파일 배열에서 삭제
        delete fileList[fIndex];

        //파일 사이즈 배열 삭제
        delete fileSizeList[fIndex];

        //업로드 파일 테이블 목록에서 제거
        $("#fileTr_"+fIndex).remove();
    }

    //파일 등록
    function uploadFile(){
        //등록할 파일 리스트
        var uploadFileList = Object.keys(fileList);

        //파일 유무 체크
        if(uploadFileList.length == 0 ){
            alert("파일이 존재 하지 않습니다.");
            return ;
        }

        //총 용량이 500MB를 넘는 경우 업로드 불가
        if(totalFileSize > maxUploadSize){
            //파일 사이즈 초과 경고창
            alert("총 용량 초과 \n 총 업로드 가능 용량 :"+maxUploadSize+"MB");
            return;
        }

        if(confirm("파일을 등록하시겠습니까?")){
            //등록할 파일 리스트를 formData로 데이터 입력
            var form = $('#uploadForm');
            var formData = new FormData(form);
            for( var i = 0; i <uploadFileList.length; i++){
                formData.append('files',fileList[uploadFileList[i]]);
            }

            $.ajax({
                url:"",
                type:"post",
                enctype: 'multipart/form-data',
                dataType:'json',
                success:function(result){
                    if(result.data.length > 0){
                        alert("성공");
                        window.location.reload();
                    }else{
                        alert("실패");
                        window.location.reload();
                    }
                }
            });
        }
    }
</script>
<body>

<c:import url="/cmmn/header.do"/>
<div class="hero-wrap js-fullheight" style="background-image: url('#');" data-stellar-background-ratio="0.5">
    <div class="overlay" style="height: 100em" ></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
            <div class="col-md-9 text text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                <div id="boardList" class="boardList" style="">
                    <section class="ftco-section ftco-no-pt">
                        <div class="container">
                            <div class="row justify-content-center pb-4">
                                <div class="col-md-12 heading-section text-center ftco-animate">
                                    <h2 class="mb-4">Album Regist</h2>
                                </div>
                            </div>
                            <div class="row" >
                                <h3>드랍존</h3>
                               <form name="uploadForm" id="uploadForm" class="uploadForm" enctype="multipart/form-data" style=" width:100%;">
                                    <textarea id="boardContent" class="boardContent" rows="100" style="width: 100%; height:300px; ">

                                    </textarea>
                                   <table class="table" width="100%" border="1px" height="200px" >
                                       <tbody id="fileTableTbody" style =" width: 500px; height:500px;">
                                        <tr>
                                            <td id="dropZone">
                                                파일을 드래그 하세요.
                                            </td>
                                        </tr>
                                       </tbody>
                                   </table>

                               </form>
                            </div>
                        </div>
                    </section>
                    <div>
                        <select>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                        <input type="text" placeholder="검색어를 입력해주세요." id="searchText" class="search-form" name="searchText"/>
                        <button id="searchBtn">검색</button>
                        <a id="regist-board-btn" class="button-board" href="/board/boardRegist.do">글쓰기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<c:import url="/cmmn/footer.do"/>
</body>
<%@ include file="/WEB-INF/views/webs/cmmn/jsinit.jsp"%>
</html>