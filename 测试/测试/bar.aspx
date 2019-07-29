<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bar.aspx.cs" Inherits="bar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





     <div id="echart" style="width:400px; height:280px;"></div>

 

         <script type="text/javascript">
             $(document).ready(
          function () {

              $.ajax({
                  url: "ajax/Handler.ashx",
                  data: { cmd: "bar" },
                  cache: false,
                  async: false,
                  dataType: 'json',

                  success: function (data) {
                      if (data) {
                          DrawBar(data, "echart");
                      }
                  },

                  error: function (msg) {
                      alert("系统发生错误");
                  }

              });


          });
           
           
           </script>



</asp:Content>

