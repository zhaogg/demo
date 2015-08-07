<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/om/css/default/om-default.css">
    <script type="text/javascript" src="<%=request.getContextPath() %>/om/js/jquery.min.js" ></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/om/js/operamasks-ui.min.js" ></script>
    <script type="text/javascript">
    $(document).ready(function() {
    $('#dialog').omDialog({
    });
});
    
    </script>
  </head>
  
  <body>
    <div id="dialog"></div>
    <script type="text/javascript" >
$(document).ready(function() {
    $('#itemselector').omItemSelector({
        dataSource:[
                 {text:'Java',value:'1'},
                 {text:'JavaScript',value:'2'},
                 {text:'C',value:'3'},
                 {text:'PHP',value:'4'},
                 {text:'ASP',value:'5'}
        ],
        width:250,
        height:200
    });
});
</script>


<script type="text/javascript" >
$(document).ready(function() {
    $('#btn').omButton({
    label:'提交'
    });
});
</script>

<input id="btn" type="button" />

<script type="text/javascript" >
$(document).ready(function() {
    $('#combo').omCombo({
        dataSource:[
                {text:'Java',value:'1'},
                {text:'JavaScript',value:'2'},
                {text:'C',value:'3'},
                {text:'PHP',value:'4'},
                {text:'ASP',value:'5'}
        ],
        listMaxHeight : 800,
        emptyText:'select one option!',
        value:'1',
        editable:false,
        lazyLoad:true
    });
});
</script>

<input id="combo"/>

<script type="text/javascript" >
$(document).ready(function() {
    $('#input1').omSuggestion({
        dataSource:'suggestion.json',
        minChars :3,
        listMaxHeight:40
    });
});
</script>

<input id="input1"/>

<script type="text/javascript" >
 $(document).ready(function() {
     $('#mytable').omGrid({
         height : 250,
         width : 600,
         limit : 8, //分页显示，每页显示8条
         singleSelect : false, //出现checkbox列，可以选择同时多行记录
         colModel : [    {header:'编号',name:'id', width:100, align : 'center'},
                         {header:'地区',name:'city', width:250, align : 'left',wrap:true},
                         {header:'地址',name:'address', width:'autoExpand',renderer:function(value,rowData,rowIndex){ return '<b>'+value+'</b>'; }}
         ],
         dataSource : 'data' //后台取数的URL
     });
 });
</script>

<table id="mytable"></table>
  </body>
</html>
