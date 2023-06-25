<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="Test2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            Returns<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="ReturnTBL" ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ReturnID" HeaderText="ReturnID" SortExpression="ReturnID" />
                    <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" SortExpression="ReturnDate" />
                    <asp:BoundField DataField="Rental_ID" HeaderText="Rental_ID" SortExpression="Rental_ID" />
                    <asp:BoundField DataField="Car_ID" HeaderText="Car_ID" SortExpression="Car_ID" />
                    <asp:BoundField DataField="ElapsedDate" HeaderText="ElapsedDate" SortExpression="ElapsedDate" />
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
            <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="ReturnTBL" ForeColor="Black" GridLines="Both">
                <EditItemTemplate>
                    ReturnID:
                    <asp:TextBox ID="ReturnIDTextBox" runat="server" Text='<%# Bind("ReturnID") %>' />
                    <br />
                    ReturnDate:
                    <asp:TextBox ID="ReturnDateTextBox" runat="server" Text='<%# Bind("ReturnDate") %>' />
                    <br />
                    Rental_ID:
                    <asp:TextBox ID="Rental_IDTextBox" runat="server" Text='<%# Bind("Rental_ID") %>' />
                    <br />
                    Car_ID:
                    <asp:TextBox ID="Car_IDTextBox" runat="server" Text='<%# Bind("Car_ID") %>' />
                    <br />
                    ElapsedDate:
                    <asp:TextBox ID="ElapsedDateTextBox" runat="server" Text='<%# Bind("ElapsedDate") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    ReturnID:
                    <asp:TextBox ID="ReturnIDTextBox" runat="server" Text='<%# Bind("ReturnID") %>' />
                    <br />
                    ReturnDate:
                    <asp:TextBox ID="ReturnDateTextBox" runat="server" Text='<%# Bind("ReturnDate") %>' />
                    <br />
                    Rental_ID:
                    <asp:TextBox ID="Rental_IDTextBox" runat="server" Text='<%# Bind("Rental_ID") %>' />
                    <br />
                    Car_ID:
                    <asp:TextBox ID="Car_IDTextBox" runat="server" Text='<%# Bind("Car_ID") %>' />
                    <br />
                    ElapsedDate:
                    <asp:TextBox ID="ElapsedDateTextBox" runat="server" Text='<%# Bind("ElapsedDate") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ReturnID:
                    <asp:Label ID="ReturnIDLabel" runat="server" Text='<%# Bind("ReturnID") %>' />
                    <br />
                    ReturnDate:
                    <asp:Label ID="ReturnDateLabel" runat="server" Text='<%# Bind("ReturnDate") %>' />
                    <br />
                    Rental_ID:
                    <asp:Label ID="Rental_IDLabel" runat="server" Text='<%# Bind("Rental_ID") %>' />
                    <br />
                    Car_ID:
                    <asp:Label ID="Car_IDLabel" runat="server" Text='<%# Bind("Car_ID") %>' />
                    <br />
                    ElapsedDate:
                    <asp:Label ID="ElapsedDateLabel" runat="server" Text='<%# Bind("ElapsedDate") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:FormView>
            <asp:SqlDataSource ID="ReturnTBL" runat="server" ConnectionString="<%$ ConnectionStrings:CLDVPOETask2ConnectionString %>" InsertCommand="INSERT INTO [ReturnTBL] ([ReturnID], [ReturnDate], [Rental_ID], [Car_ID], [ElapsedDate]) VALUES (@ReturnID, @ReturnDate, @Rental_ID, @Car_ID, @ElapsedDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ReturnTBL]" ConflictDetection="CompareAllValues">
                <InsertParameters>
                    <asp:Parameter Name="ReturnID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="ReturnDate" />
                    <asp:Parameter Name="Rental_ID" Type="Int32" />
                    <asp:Parameter Name="Car_ID" Type="String" />
                    <asp:Parameter Name="ElapsedDate" Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
        </section>
    </main>
</asp:Content>
