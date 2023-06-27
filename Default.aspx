<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <asp:Label ID="Label1" runat="server" Text="Manage Cars, Inspectors, and Drivers" Font-Size="20pt" Font-Underline="True"></asp:Label>
            <br />
        </section>
    </main>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Car_ID" DataSourceID="VechileTBL" ForeColor="Black" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Car_ID" HeaderText="Car_ID" ReadOnly="True" SortExpression="Car_ID" />
        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        <asp:BoundField DataField="KMs" HeaderText="KMs" SortExpression="KMs" />
        <asp:BoundField DataField="ServiceKilometres" HeaderText="ServiceKilometres" SortExpression="ServiceKilometres" />
        <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
        <asp:BoundField DataField="CarMakeID" HeaderText="CarMakeID" SortExpression="CarMakeID" />
        <asp:BoundField DataField="CarBodyID" HeaderText="CarBodyID" SortExpression="CarBodyID" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="VechileTBL" runat="server" ConnectionString="<%$ ConnectionStrings:CLDVPOETask2ConnectionString %>" SelectCommand="SELECT * FROM [VehicleTBL]" DeleteCommand="DELETE FROM [VehicleTBL] WHERE [Car_ID] = @Car_ID" InsertCommand="INSERT INTO [VehicleTBL] ([Car_ID], [Model], [KMs], [ServiceKilometres], [Available], [CarMakeID], [CarBodyID]) VALUES (@Car_ID, @Model, @KMs, @ServiceKilometres, @Available, @CarMakeID, @CarBodyID)" UpdateCommand="UPDATE [VehicleTBL] SET [Model] = @Model, [KMs] = @KMs, [ServiceKilometres] = @ServiceKilometres, [Available] = @Available, [CarMakeID] = @CarMakeID, [CarBodyID] = @CarBodyID WHERE [Car_ID] = @Car_ID">
    <DeleteParameters>
        <asp:Parameter Name="Car_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Car_ID" Type="String" />
        <asp:Parameter Name="Model" Type="String" />
        <asp:Parameter Name="KMs" Type="Int32" />
        <asp:Parameter Name="ServiceKilometres" Type="Int32" />
        <asp:Parameter Name="Available" Type="String" />
        <asp:Parameter Name="CarMakeID" Type="Int32" />
        <asp:Parameter Name="CarBodyID" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Model" Type="String" />
        <asp:Parameter Name="KMs" Type="Int32" />
        <asp:Parameter Name="ServiceKilometres" Type="Int32" />
        <asp:Parameter Name="Available" Type="String" />
        <asp:Parameter Name="CarMakeID" Type="Int32" />
        <asp:Parameter Name="CarBodyID" Type="Int32" />
        <asp:Parameter Name="Car_ID" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Driver_ID" DataSourceID="DriverTBL" ForeColor="Black" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Driver_ID" HeaderText="Driver_ID" ReadOnly="True" SortExpression="Driver_ID" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="User_ID" HeaderText="User_ID" SortExpression="User_ID" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="DriverTBL" runat="server" ConnectionString="<%$ ConnectionStrings:CLDVPOETask2ConnectionString %>" SelectCommand="SELECT * FROM [DriverTBL]" DeleteCommand="DELETE FROM [DriverTBL] WHERE [Driver_ID] = @Driver_ID" InsertCommand="INSERT INTO [DriverTBL] ([Driver_ID], [Address], [User_ID]) VALUES (@Driver_ID, @Address, @User_ID)" UpdateCommand="UPDATE [DriverTBL] SET [Address] = @Address, [User_ID] = @User_ID WHERE [Driver_ID] = @Driver_ID">
    <DeleteParameters>
        <asp:Parameter Name="Driver_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Driver_ID" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="User_ID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="User_ID" Type="String" />
        <asp:Parameter Name="Driver_ID" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Inspector_ID" DataSourceID="InspectorTBL" ForeColor="Black" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Inspector_ID" HeaderText="Inspector_ID" ReadOnly="True" SortExpression="Inspector_ID" />
        <asp:BoundField DataField="User_ID" HeaderText="User_ID" SortExpression="User_ID" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="InspectorTBL" runat="server" ConnectionString="<%$ ConnectionStrings:CLDVPOETask2ConnectionString %>" SelectCommand="SELECT * FROM [InspectorTBL]" DeleteCommand="DELETE FROM [InspectorTBL] WHERE [Inspector_ID] = @Inspector_ID" InsertCommand="INSERT INTO [InspectorTBL] ([Inspector_ID], [User_ID]) VALUES (@Inspector_ID, @User_ID)" UpdateCommand="UPDATE [InspectorTBL] SET [User_ID] = @User_ID WHERE [Inspector_ID] = @Inspector_ID">
    <DeleteParameters>
        <asp:Parameter Name="Inspector_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Inspector_ID" Type="String" />
        <asp:Parameter Name="User_ID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="User_ID" Type="String" />
        <asp:Parameter Name="Inspector_ID" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
