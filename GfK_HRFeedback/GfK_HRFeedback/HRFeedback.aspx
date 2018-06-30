<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRFeedback.aspx.cs"
    Inherits="GfK_HRFeedback.HRFeedback" MasterPageFile="~/HR_Feedback.Master" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .tdWidth {
            width: 642px;
        }
    </style>
    <script type="text/javascript">
        function ValidateAnswer2(source, args) {
            var chkListModules = document.getElementById('<%= Answer2.ClientID %>');
            var chkListinputs = chkListModules.getElementsByTagName("input");
            for (var i = 0; i < chkListinputs.length; i++) {
                if (chkListinputs[i].checked) {
                    args.IsValid = true;
                    return;
                }
            }
            args.IsValid = false;
        }

        function ValidateAnswer5(source, args) {
            var chkListModules = document.getElementById('<%= Answer5.ClientID %>');
            var chkListinputs = chkListModules.getElementsByTagName("input");
            for (var i = 0; i < chkListinputs.length; i++) {
                if (chkListinputs[i].checked) {
                    args.IsValid = true;
                    return;
                }
            }
            args.IsValid = false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHRFeedback" runat="server">
    <table style="margin-left: 20px">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblQuestion1" runat="server" Text="How did you find out about this job opportunity?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 20px"></td>
            <td class="tdWidth">
                <asp:RadioButtonList runat="server" ID="Answer1" RepeatDirection="Vertical" CausesValidation="true">
                    <asp:ListItem Text="StackOverflow" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Indeed" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="3"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvQuestion1" runat="server" ControlToValidate="Answer1" ErrorMessage="Please select answer!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblQuestion2" runat="server" Text="How do you find the company’s location?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 20px"></td>
            <td class="tdWidth">
                <asp:CheckBoxList runat="server" ID="Answer2" RepeatDirection="Vertical">
                    <asp:ListItem Text="Easy to access by public transport" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Easy to access by car" Value="5"></asp:ListItem>
                    <asp:ListItem Text="In a pleasant area" Value="6"></asp:ListItem>
                    <asp:ListItem Text="None of the above" Value="7"></asp:ListItem>
                </asp:CheckBoxList>
                <asp:CustomValidator runat="server" ID="rfvQuestion2"
                    ClientValidationFunction="ValidateAnswer2"
                    ErrorMessage="Please select at one answer!" ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblQuestion3" runat="server" Text="What was your impression of the office where you had the interview?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 20px"></td>
            <td class="tdWidth">
                <asp:RadioButtonList runat="server" ID="Answer3" RepeatDirection="Vertical">
                    <asp:ListItem Text="Tidy" Value="8"></asp:ListItem>
                    <asp:ListItem Text="Sloppy" Value="9"></asp:ListItem>
                    <asp:ListItem Text="Did not notice" Value="10"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvQuestion3" runat="server" ControlToValidate="Answer3" ErrorMessage="Please select answer!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblQuestion4" runat="server" Text="How technically challenging was the interview?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 20px"></td>
            <td class="tdWidth">
                <asp:RadioButtonList runat="server" ID="Answer4" RepeatDirection="Vertical">
                    <asp:ListItem Text="Very difficult" Value="11"></asp:ListItem>
                    <asp:ListItem Text="Difficult" Value="12"></asp:ListItem>
                    <asp:ListItem Text="Moderate" Value="13"></asp:ListItem>
                    <asp:ListItem Text="Easy" Value="14"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvQuestion4" runat="server" ControlToValidate="Answer4" ErrorMessage="Please select answer!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblQuestion5" runat="server" Text="How can you describe the manager that interviewed you?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 20px"></td>
            <td class="tdWidth">
                <asp:CheckBoxList runat="server" ID="Answer5" RepeatDirection="Vertical">
                    <asp:ListItem Text="Enthusiastic" Value="15"></asp:ListItem>
                    <asp:ListItem Text="Polite" Value="16"></asp:ListItem>
                    <asp:ListItem Text="Organized" Value="17"></asp:ListItem>
                    <asp:ListItem Text="Could not tell" Value="18"></asp:ListItem>
                </asp:CheckBoxList>
                <asp:CustomValidator runat="server" ID="rfvQuestion5"
                    ClientValidationFunction="ValidateAnswer5"
                    ErrorMessage="Please select at one answer!" ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <div style="background-color: orange; text-align: right;">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <div style="width: 5px"></div>
    </div>
</asp:Content>

