<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRFeedbackResult.aspx.cs" Inherits="GfK_HRFeedback.HRFeedbackResult" MasterPageFile="~/HR_Feedback.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style1 {
            width: 473px;
        }

        .auto-style2 {
            width: 227px;
        }

        tr.border_bottomSolid td {
            border-bottom: 1pt solid black;
        }

        tr.border_bottomDotted td {
            border-bottom: 1pt dotted black;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphHRFeedback" runat="server">
    <asp:Panel ID="panNoDataFound" runat="server" Visible="false">
        <p>
            No Result Found!
        </p>
    </asp:Panel>
    <asp:Panel ID="panResult" runat="server">
        <p style="margin-left: 20px">
            Number of Respondents:
        <asp:Literal ID="litNoR" runat="server"></asp:Literal>
        </p>

        <table style="margin-left: 20px" class="auto-style1">
            <tr class="border_bottomSolid">
                <td colspan="3">
                    <asp:Label ID="lblQuestion1" runat="server" Text="How did you find out about this job opportunity?"></asp:Label>
                </td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">StackOverflow</td>
                <td>
                    <asp:Label ID="lblResultQ1A1" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Indeed</td>
                <td>
                    <asp:Label ID="lblResultQ1A2" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Other</td>
                <td>
                    <asp:Label ID="lblResultQ1A3" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                </td>
            </tr>
            <tr class="border_bottomSolid">
                <td colspan="3">
                    <asp:Label ID="lblQuestion2" runat="server" Text="How do you find the company’s location?"></asp:Label>
                </td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Easy to access by public transport</td>
                <td>
                    <asp:Label ID="lblResultQ2A1" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Easy to access by car</td>
                <td>
                    <asp:Label ID="lblResultQ2A2" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">In a pleasant area</td>
                <td>
                    <asp:Label ID="lblResultQ2A3" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">None of the above</td>
                <td>
                    <asp:Label ID="lblResultQ2A4" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                </td>
            </tr>
            <tr class="border_bottomSolid">
                <td colspan="3">
                    <asp:Label ID="lblQuestion3" runat="server" Text="What was your impression of the office where you had the interview?"></asp:Label>
                </td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Tidy</td>
                <td>
                    <asp:Label ID="lblResultQ3A1" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Sloppy</td>
                <td>
                    <asp:Label ID="lblResultQ3A2" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Did not notice</td>
                <td>
                    <asp:Label ID="lblResultQ3A3" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                </td>
            </tr>
            <tr class="border_bottomSolid">
                <td colspan="3">
                    <asp:Label ID="lblQuestion4" runat="server" Text="How technically challenging was the interview?"></asp:Label>
                </td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Very difficult</td>
                <td>
                    <asp:Label ID="lblResultQ4A1" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Difficult</td>
                <td>
                    <asp:Label ID="lblResultQ4A2" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Moderate</td>
                <td>
                    <asp:Label ID="lblResultQ4A3" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Easy</td>
                <td>
                    <asp:Label ID="lblResultQ4A4" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                </td>
            </tr>
            <tr class="border_bottomSolid">
                <td colspan="3">
                    <asp:Label ID="lblQuestion5" runat="server" Text="How can you describe the manager that interviewed you?"></asp:Label>
                </td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Enthusiastic</td>
                <td>
                    <asp:Label ID="lblResultQ5A1" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Polite</td>
                <td>
                    <asp:Label ID="lblResultQ5A2" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Organized</td>
                <td>
                    <asp:Label ID="lblResultQ5A3" runat="server"></asp:Label></td>
            </tr>
            <tr class="border_bottomDotted">
                <td style="width: 10px;"></td>
                <td class="auto-style2">Could not tell</td>
                <td>
                    <asp:Label ID="lblResultQ5A4" runat="server"></asp:Label></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
    <br />
    <div style="background-color: orange; width: 700px; height: 20px">
    </div>
</asp:Content>

