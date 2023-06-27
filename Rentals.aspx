<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rentals.aspx.cs" Inherits="Test2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            Rentals<br />
        </section>
    </main>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Rental_ID" DataSourceID="RentalTBL" ForeColor="Black" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Rental_ID" HeaderText="Rental_ID" ReadOnly="True" SortExpression="Rental_ID" />
        <asp:BoundField DataField="RentalAmount" HeaderText="RentalAmount" SortExpression="RentalAmount" />
        <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
        <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
        <asp:BoundField DataField="Car_ID" HeaderText="Car_ID" SortExpression="Car_ID" />
        <asp:BoundField DataField="Inspector_ID" HeaderText="Inspector_ID" SortExpression="Inspector_ID" />
        <asp:BoundField DataField="DriverID" HeaderText="DriverID" SortExpression="DriverID" />
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
    <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Rental_ID" DataSourceID="RentalTBL" ForeColor="Black" GridLines="Both">
        <EditItemTemplate>
            Rental_ID:
            <asp:Label ID="Rental_IDLabel1" runat="server" Text='<%# Eval("Rental_ID") %>' />
            <br />
            RentalAmount:
            <asp:TextBox ID="RentalAmountTextBox" runat="server" Text='<%# Bind("RentalAmount") %>' />
            <br />
            StartDate:
            <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
            <br />
            EndDate:
            <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            Car_ID:
            <asp:TextBox ID="Car_IDTextBox" runat="server" Text='<%# Bind("Car_ID") %>' />
            <br />
            Inspector_ID:
            <asp:TextBox ID="Inspector_IDTextBox" runat="server" Text='<%# Bind("Inspector_ID") %>' />
            <br />
            DriverID:
            <asp:TextBox ID="DriverIDTextBox" runat="server" Text='<%# Bind("DriverID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Rental_ID:
            <asp:TextBox ID="Rental_IDTextBox" runat="server" Text='<%# Bind("Rental_ID") %>' />
            <br />
            RentalAmount:
            <asp:TextBox ID="RentalAmountTextBox" runat="server" Text='<%# Bind("RentalAmount") %>' />
            <br />
            StartDate:
            <asp:TextBox ID="StartDateTextBox" runat="server" Text='<%# Bind("StartDate") %>' />
            <br />
            EndDate:
            <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            Car_ID:
            <asp:TextBox ID="Car_IDTextBox" runat="server" Text='<%# Bind("Car_ID") %>' />
            <br />
            Inspector_ID:
            <asp:TextBox ID="Inspector_IDTextBox" runat="server" Text='<%# Bind("Inspector_ID") %>' />
            <br />
            DriverID:
            <asp:TextBox ID="DriverIDTextBox" runat="server" Text='<%# Bind("DriverID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Rental_ID:
            <asp:Label ID="Rental_IDLabel" runat="server" Text='<%# Eval("Rental_ID") %>' />
            <br />
            RentalAmount:
            <asp:Label ID="RentalAmountLabel" runat="server" Text='<%# Bind("RentalAmount") %>' />
            <br />
            StartDate:
            <asp:Label ID="StartDateLabel" runat="server" Text='<%# Bind("StartDate") %>' />
            <br />
            EndDate:
            <asp:Label ID="EndDateLabel" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            Car_ID:
            <asp:Label ID="Car_IDLabel" runat="server" Text='<%# Bind("Car_ID") %>' />
            <br />
            Inspector_ID:
            <asp:Label ID="Inspector_IDLabel" runat="server" Text='<%# Bind("Inspector_ID") %>' />
            <br />
            DriverID:
            <asp:Label ID="DriverIDLabel" runat="server" Text='<%# Bind("DriverID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:FormView>
    <asp:SqlDataSource ID="RentalFRM" runat="server" ConnectionString="<%$ ConnectionStrings:CLDVPOETask2ConnectionString %>" InsertCommand="INSERT INTO RentalTBL(Rental_ID, RentalAmount, StartDate, EndDate, Car_ID, Inspector_ID, DriverID)" SelectCommand="SELECT Rental_ID, RentalAmount, StartDate, EndDate, Car_ID, Inspector_ID, DriverID FROM RentalTBL WHERE (Rental_ID = @Rental_ID)">
        <SelectParameters>
            <asp:Parameter Name="Rental_ID" />
        </SelectParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="RentalTBL" runat="server" ConnectionString="<%$ ConnectionStrings:CLDVPOETask2ConnectionString %>" SelectCommand="SELECT * FROM [RentalTBL]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [RentalTBL] WHERE [Rental_ID] = @original_Rental_ID AND [RentalAmount] = @original_RentalAmount AND [StartDate] = @original_StartDate AND [EndDate] = @original_EndDate AND [Car_ID] = @original_Car_ID AND [Inspector_ID] = @original_Inspector_ID AND [DriverID] = @original_DriverID" InsertCommand="INSERT INTO [RentalTBL] ([Rental_ID], [RentalAmount], [StartDate], [EndDate], [Car_ID], [Inspector_ID], [DriverID]) VALUES (@Rental_ID, @RentalAmount, @StartDate, @EndDate, @Car_ID, @Inspector_ID, @DriverID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [RentalTBL] SET [RentalAmount] = @RentalAmount, [StartDate] = @StartDate, [EndDate] = @EndDate, [Car_ID] = @Car_ID, [Inspector_ID] = @Inspector_ID, [DriverID] = @DriverID WHERE [Rental_ID] = @original_Rental_ID AND [RentalAmount] = @original_RentalAmount AND [StartDate] = @original_StartDate AND [EndDate] = @original_EndDate AND [Car_ID] = @original_Car_ID AND [Inspector_ID] = @original_Inspector_ID AND [DriverID] = @original_DriverID">
    <DeleteParameters>
        <asp:Parameter Name="original_Rental_ID" Type="Int32" />
        <asp:Parameter Name="original_RentalAmount" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_StartDate" />
        <asp:Parameter DbType="Date" Name="original_EndDate" />
        <asp:Parameter Name="original_Car_ID" Type="String" />
        <asp:Parameter Name="original_Inspector_ID" Type="String" />
        <asp:Parameter Name="original_DriverID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Rental_ID" Type="Int32" />
        <asp:Parameter Name="RentalAmount" Type="Int32" />
        <asp:Parameter DbType="Date" Name="StartDate" />
        <asp:Parameter DbType="Date" Name="EndDate" />
        <asp:Parameter Name="Car_ID" Type="String" />
        <asp:Parameter Name="Inspector_ID" Type="String" />
        <asp:Parameter Name="DriverID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="RentalAmount" Type="Int32" />
        <asp:Parameter DbType="Date" Name="StartDate" />
        <asp:Parameter DbType="Date" Name="EndDate" />
        <asp:Parameter Name="Car_ID" Type="String" />
        <asp:Parameter Name="Inspector_ID" Type="String" />
        <asp:Parameter Name="DriverID" Type="String" />
        <asp:Parameter Name="original_Rental_ID" Type="Int32" />
        <asp:Parameter Name="original_RentalAmount" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_StartDate" />
        <asp:Parameter DbType="Date" Name="original_EndDate" />
        <asp:Parameter Name="original_Car_ID" Type="String" />
        <asp:Parameter Name="original_Inspector_ID" Type="String" />
        <asp:Parameter Name="original_DriverID" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
