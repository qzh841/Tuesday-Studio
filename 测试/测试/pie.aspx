<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pie.aspx.cs" Inherits="pie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



     
     <div id="echart" style="width:550px; height:250px;"></div>

 

         <script type="text/javascript"> 
          $(document).ready( 
          function () {
              
              $.ajax({
                  url: "ajax/Handler.ashx",
                  data:{cmd:"pie"},
                  cache: false,
                  async: false,
                  dataType: 'json',

                  success: function (data) {
                      if (data) {
                          DrawPie(data,"echart");
                      }
                  },

                  error: function (msg) {
                      alert("系统发生错误");
                  }

              });


          });
           
           
           </script>


</asp:Content>

