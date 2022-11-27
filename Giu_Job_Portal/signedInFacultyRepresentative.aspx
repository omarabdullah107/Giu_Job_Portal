﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signedInFacultyRepresentative.aspx.cs" Inherits="Giu_Job_Portal.signedInFacultyRepresentative" %>

<!DOCTYPE html>
<style>
        table, tr, td, th {
            border: none;
        }

        .cssgridview {
            width: 100%;
            text-align: center;
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            min-width: 400px;
        }

            .cssgridview th {
                border-style: hidden;
                background-color: #009879;
                color: #ffffff;
                text-align: center;
                font-weight: bold;
            }

            .cssgridview th,
            .cssgridview td {
                padding: 12px 15px;
            }

            .cssgridview tbody tr {
                border-bottom: 1px solid #dddddd;
            }

                .cssgridview tbody tr:nth-of-type(even) {
                    background-color: #f3f3f3
                }

                .cssgridview tbody tr:last-of-type {
                    border-bottom: 2px solid #009879
                }

        .grid-container {
            display: grid;
            grid-template-areas:
                'header header header header header header'
                'menu main main main right right'
                'menu footer footer footer footer footer';
            margin: 10px;
            background-color: #2196F3;
            padding: 10px;
        }

            .grid-container > div {
                background-color: rgba(255, 255, 255, 0.8);
                text-align: center;
                padding: 20px 0;
                font-size: 30px;
            }


        .topnav {
            height: 55px;
            width: 1500px;
            background-color: #009879;
            margin-bottom: 50px;
            top: 8px;
            left: -9px;
            grid-area: header;
        }

        .topb {
            float: left;
            text-align: center;
            padding: 12px;
            color: white;
            text-decoration: none;
            font-size: 19px;
            background-color: #009879;
            border: none;
            outline: none;
            margin: 1px;
        }

            .topb:hover {
                background-color: #ddd;
                color: black;
            }



        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            text-align: center;
            grid-area: menu;
            float: left;
            width: 300px;
            height: 400px;
            position: absolute;
            margin-bottom: 400px
        }

        .card2 {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin-top: 400px;
            position: relative;
            top: 30px;
            grid-area: menu;
            float: left;
            width: 300px;
            height: 300px;
        }

        .title {
            color: black;
            font-size: 30px;
        }

        .phone {
            color: grey;
            font-size: 18px;
        }

        .web {
            color: #75E6DA;
            font-size: 22px;
        }

        .iconim {
            width: 220px;
            height: 220px;
            color: white;
            border: black;
            outline: black;
            margin-left: 20px;
            background-image: url('Images/avatar-man-icon.png');
            margin-right: 40px;
            margin-top: 4px;
            margin-bottom: 4px;
        }

        .mcont {
            float: right;
            grid-area: main;
            height: 657px;
            width: 1060px;
            margin-bottom: 50px;
        }

        #Success {
            width: 780px;
        }

        .textboxes {
            margin: 5px;
            padding: 5px;
            border-radius: 10px;
            border-block-color: #00755d;
        }

        .SUBMIT {
            margin: 5px;
            padding: 10px;
            border-radius: 30px;
            border-block-color: #009879;
            font-size: 20px;
            background-color: #009879;
            color: white;
        }

            .SUBMIT:hover {
                background-color: #ddd;
                color: black;
            }


            .topbfleft {
        float: left;
        text-align: center;
        padding: 12px;
        color: white;
        text-decoration: none;
        font-size: 19px;
        background-color: #009879;
        border: none;
        outline: none;
        border-radius: 10px;

    }

        .topbfleft:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
         <div id="topNav" class="topnav" runat="server">
           <asp:Button ID="Button6" CssClass="topbfleft" runat="server" Text="Submission of Industrial Internship" OnClick="redtosubmit" Width="335px" />
           <asp:Button ID="Button1" CssClass="topbfleft" runat="server" Text="Delete" OnClick="DELETE" />
        </div>
        
         <div id="FACREP" runat="server" style="width: 1428px ; text-align:center" visible="false">
   
            <br />
            <asp:Label ID="Label3" runat="server" Text="Industrial Internship ID"></asp:Label>
            <br />
            <asp:TextBox ID="IIIDDD" CssClass="textboxes" runat="server"></asp:TextBox>
            <br />
             Status<br />
            <asp:TextBox ID="STATUS" CssClass="textboxes" runat="server"></asp:TextBox>
            <br />
             <asp:Button ID="Button8" runat="server" CssClass="SUBMIT" Text="Show Tables" OnClick="show" />
             <br />
            <asp:Button ID="Button7" runat="server" CssClass="SUBMIT" Text="Submit"  Width="94px" OnClick="Check" />
             <br />
            <br />
        </div>


        <div id="showtab" runat="server">  </div>

    </form>
</body>
</html>
