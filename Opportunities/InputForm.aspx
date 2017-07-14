<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InputForm.aspx.cs" Inherits="Opportunities.InputForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <div class="tableau-side">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
	<form id="form1" CssClass="form-horizontal" runat="server">
		
		<!-- Form Name -->
		<legend>Comments</legend>

		<!-- Text input-->
		<div class="form-group">
		         
		    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" OnDataBound="Page_Load" Width="284px">
                <EditItemTemplate>
                    <asp:Label ID="lblOppId" CssClass="control-label" runat="server" Text="Opperation Id:" AssociatedControlID="txtOppId"></asp:Label>
                    <asp:TextBox ID="txtOppId" runat="server" CssClass="form-control input-md" Enabled="False" Text='<%# Bind("op_meta_id") %>' ClientIDMode="Static"></asp:TextBox>
                    <div class="form-group">
		              <asp:Label ID="lblCustomer" CssClass="control-label" runat="server" Text="Customer:" AssociatedControlID="txtCustomer"></asp:Label>        
		              <asp:TextBox ID="txtCustomer" runat="server" CssClass="form-control input-md" Enabled="False" Text='<%# Bind("CUSTOMER") %>' ClientIDMode="Static" ></asp:TextBox>
		            </div>
                    <div class="form-horizontal">		  
			            <asp:Label ID="lblRevProb" CssClass="control-label" runat="server" Text="Revised Probability:" AssociatedControlID="ddlRevProb"></asp:Label>			
			            <asp:DropDownList CssClass="form-control" ID="ddlRevProb" runat="server" DataValueField='<%# Bind("Rev_Prob") %>' SelectedValue='<%# Bind("Rev_Prob", "{0}") %>' ClientIDMode="Static">
				            <asp:ListItem Value="null">Select an option</asp:ListItem>
				            <asp:ListItem>Low</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
			                <asp:ListItem>High</asp:ListItem>
			            </asp:DropDownList>		  
		             </div>
                    <div class="form-group">		  
			            <asp:Label ID="lblMonth" CssClass="control-label" runat="server" Text="Revised Delivery Month:" AssociatedControlID="ddlMonth"></asp:Label>
			            <asp:DropDownList ID="ddlMonth" CssClass="form-control" runat="server" DataValueField='<%# Bind("Rev_Del_Mon") %>' SelectedValue='<%# Bind("Rev_Del_Mon", "{0}") %>' ClientIDMode="Static">
				            <asp:ListItem>January</asp:ListItem>
				            <asp:ListItem>February</asp:ListItem>
				            <asp:ListItem>March</asp:ListItem>
				            <asp:ListItem>April</asp:ListItem>
				            <asp:ListItem>May</asp:ListItem>
				            <asp:ListItem>June</asp:ListItem>
				            <asp:ListItem>July</asp:ListItem>
				            <asp:ListItem>August</asp:ListItem>
				            <asp:ListItem>September</asp:ListItem>
				            <asp:ListItem>October</asp:ListItem>
				            <asp:ListItem>November</asp:ListItem>
				            <asp:ListItem>December</asp:ListItem>
			            </asp:DropDownList>
		            </div>
                    <div class="form-horizontal">
		                <fieldset class="form-group">
		                    <label class="col-md-3 control-label">Yes/No?</label>
		                        <div class="checkbox col-md-6">
                                    <asp:Label ID="LabelDuplicate" runat="server" Text="Duplicate" />
                                    <asp:CheckBox ID="DuplicateCheckBox" runat="server" Checked='<%# Bind("Duplicate") %>' Enabled="True" ClientIDMode="Static" />
		                        </div>
                                <div class="checkbox col-md-6">
                                    <asp:Label ID="LabelRPO" runat="server" Text="RPO" />
                                    <asp:CheckBox ID="RPOCheckBox" runat="server" Checked='<%# Bind("RPO") %>' Enabled="True" ClientIDMode="Static" />
                                </div>
			            </fieldset>
		            </div>
                    <div class="form-group">
		              <asp:Label ID="lblComments" class="control-label" runat="server" Text="Comments:" AssociatedControlID="txtComments"></asp:Label>        
		              <asp:TextBox ID="txtComments" runat="server" CssClass="form-control input-md" Enabled="True" TextMode="MultiLine" Text='<%# Bind("Comments") %>' ClientIDMode="Static"></asp:TextBox>	
		            </div>
                    <asp:LinkButton ID="UpdateButton" CssClass="btn btn-default" runat="server"  OnClick="btnUpdate_Click" CausesValidation="True" CommandName="Update" Text="Update" ClientIDMode="Static" />
                    <asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-alert" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ClientIDMode="Static" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Label ID="lblOppId" CssClass="control-label" runat="server" Text="Opperation Id:" AssociatedControlID="txtOppId"></asp:Label>
                    <asp:TextBox ID="txtOppId" runat="server" CssClass="form-control input-md" Enabled="False" Text='<%# Bind("op_meta_id") %>' ClientIDMode="Static"></asp:TextBox>
                    <div class="form-group">
		              <asp:Label ID="lblCustomer" CssClass="control-label" runat="server" Text="Customer:" AssociatedControlID="txtCustomer"></asp:Label>        
		              <asp:TextBox ID="txtCustomer" runat="server" CssClass="form-control input-md" Enabled="False" Text='<%# Eval("CUSTOMER") %>' ClientIDMode="Static" ></asp:TextBox>
		            </div>
                    <div class="form-horizontal">		  
			            <asp:Label ID="lblRevProb" CssClass="control-label" runat="server" Text="Revised Probability:" AssociatedControlID="ddlRevProb"></asp:Label>			
			            <asp:DropDownList CssClass="form-control" ID="ddlRevProb" runat="server" DataValueField='<%# Bind("Rev_Prob") %>' SelectedValue='<%# Bind("Rev_Prob", "{0}") %>'>
			                <asp:ListItem Value="null">Select an option</asp:ListItem>
				            <asp:ListItem>Low</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
				            <asp:ListItem Value="High">High</asp:ListItem>
			            </asp:DropDownList>		  
		             </div>
                    <div class="form-group">		  
			            <asp:Label ID="lblMonth" CssClass="control-label" runat="server" Text="Revised Delivery Month:" AssociatedControlID="ddlMonth"></asp:Label>
			            <asp:DropDownList ID="ddlMonth" CssClass="form-control" runat="server" DataValueField='<%# Bind("Rev_Del_Mon") %>' SelectedValue='<%# Bind("Rev_Del_Mon", "{0}") %>' ClientIDMode="Static">
				            <asp:ListItem>January</asp:ListItem>
				            <asp:ListItem>February</asp:ListItem>
				            <asp:ListItem>March</asp:ListItem>
				            <asp:ListItem>April</asp:ListItem>
				            <asp:ListItem>May</asp:ListItem>
				            <asp:ListItem>June</asp:ListItem>
				            <asp:ListItem>July</asp:ListItem>
				            <asp:ListItem>August</asp:ListItem>
				            <asp:ListItem>September</asp:ListItem>
				            <asp:ListItem>October</asp:ListItem>
				            <asp:ListItem>November</asp:ListItem>
				            <asp:ListItem>December</asp:ListItem>
			            </asp:DropDownList>
		            </div>
                    <div class="form-horizontal">
		                <fieldset class="form-group">
		                    <label class="col-md-3 control-label">Yes/No?</label>
		                        <div class="checkbox col-md-6">
                                    <asp:Label ID="LabelDuplicate" runat="server" Text="Duplicate" />
                                    <asp:CheckBox ID="DuplicateCheckBox" runat="server" Checked='<%# Bind("Duplicate") %>' Enabled="True" ClientIDMode="Static" />
		                        </div>
                                <div class="checkbox col-md-6">
                                    <asp:Label ID="LabelRPO" runat="server" Text="RPO" />
                                    <asp:CheckBox ID="RPOCheckBox" runat="server" Checked='<%# Bind("RPO") %>' Enabled="True" ClientIDMode="Static" />
                                </div>
			            </fieldset>
		            </div>
                    <div class="form-group">
		              <asp:Label ID="lblComments" class="control-label" runat="server" Text="Comments:" AssociatedControlID="txtComments"></asp:Label>        
		              <asp:TextBox ID="txtComments" runat="server" CssClass="form-control input-md" Enabled="True" TextMode="MultiLine" Text='<%# Bind("Comments") %>' ClientIDMode="Static"></asp:TextBox>	
		            </div>
                    <asp:LinkButton ID="InsertButton" CssClass="btn btn-default" runat="server"  OnClick="btnUpdate_Click" CausesValidation="True" CommandName="Insert" Text="Insert" ClientIDMode="Static" />
                </InsertItemTemplate>
                <ItemTemplate>
                    
                    <asp:Label ID="lblOppId" CssClass="control-label" runat="server" Text="Opperation Id:" AssociatedControlID="txtOppId"></asp:Label>
                    <asp:TextBox ID="txtOppId" runat="server" CssClass="form-control input-md" Enabled="False" Text='<%# Bind("op_meta_id") %>'></asp:TextBox>
                    <div class="form-group">
		              <asp:Label ID="lblCustomer" CssClass="control-label" runat="server" Text="Customer:" AssociatedControlID="txtCustomer"></asp:Label>        
		              <asp:TextBox ID="txtCustomer" runat="server" CssClass="form-control input-md" Enabled="False" ></asp:TextBox>
		            </div>
                    <div class="form-horizontal">		  
			            <asp:Label ID="lblRevProb" CssClass="control-label" runat="server" Text="Revised Probability:" AssociatedControlID="ddlRevProb"></asp:Label>			
			            <asp:DropDownList CssClass="form-control" ID="ddlRevProb" runat="server" DataValueField='<%# Bind("Rev_Prob") %>' SelectedValue='<%# Bind("Rev_Prob", "{0}") %>'>
				            <asp:ListItem Value="null">Select an option</asp:ListItem>
				            <asp:ListItem>Low</asp:ListItem>				            
			                <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>High</asp:ListItem>
				            
			            </asp:DropDownList>		  
		             </div>
                    <div class="form-group">		  
			            <asp:Label ID="lblMonth" CssClass="control-label" runat="server" Text="Revised Delivery Month:" AssociatedControlID="ddlMonth"></asp:Label>
			            <asp:DropDownList ID="ddlMonth" CssClass="form-control" runat="server" DataValueField='<%# Bind("Rev_Del_Mon") %>' SelectedValue='<%# Bind("Rev_Del_Mon", "{0}") %>' >
				            <asp:ListItem>January</asp:ListItem>
				            <asp:ListItem>February</asp:ListItem>
				            <asp:ListItem>March</asp:ListItem>
				            <asp:ListItem>April</asp:ListItem>
				            <asp:ListItem>May</asp:ListItem>
				            <asp:ListItem>June</asp:ListItem>
				            <asp:ListItem>July</asp:ListItem>
				            <asp:ListItem>August</asp:ListItem>
				            <asp:ListItem>September</asp:ListItem>
				            <asp:ListItem>October</asp:ListItem>
				            <asp:ListItem>November</asp:ListItem>
				            <asp:ListItem>December</asp:ListItem>
			            </asp:DropDownList>
		            </div>
                    <div class="form-horizontal">
		                <fieldset class="form-group">
		                    <label class="col-md-3 control-label">Yes/No?</label>
		                        <div class="checkbox col-md-6">
                                    <asp:Label ID="LabelDuplicate" runat="server" Text="Duplicate" />
                                    <asp:CheckBox ID="DuplicateCheckBox" runat="server" Checked='<%# Bind("Duplicate") %>' Enabled="False" />
		                        </div>
                                <div class="checkbox col-md-6">
                                    <asp:Label ID="LabelRPO" runat="server" Text="RPO" />
                                    <asp:CheckBox ID="RPOCheckBox" runat="server" Checked='<%# Bind("RPO") %>' Enabled="False" />
                                </div>
			            </fieldset>
		            </div>
                    <div class="form-group">
		              <asp:Label ID="lblComments" class="control-label" runat="server" Text="Comments:" AssociatedControlID="txtComments"></asp:Label>        
		              <asp:TextBox ID="txtComments" runat="server" CssClass="form-control input-md" Enabled="True" TextMode="MultiLine" Text='<%# Bind("Comments") %>'></asp:TextBox>	
		            </div>
                </ItemTemplate>
            </asp:FormView>
		</div>
        

		

		<!-- Select Basic -->
		
		

		<!-- Multiple Checkboxes -->
		

		   <!-- <div class="form-group">
				<asp:CheckBox ID="chkDuplicate" runat="server" Text="Duplicate:" TextAlign="Left" />
				<asp:CheckBox ID="chkRPO" runat="server" Text="RPO:" TextAlign="Left" />
			</div> -->		  
				  
		

		<!-- Textarea -->
		

	
	 </form>
		  </div>
			</div>
	  </div>
	</div>
	<script src="Scripts/jquery-1.10.2.min.js"></script>
	<script src="Scripts/bootstrap.min.js"></script>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OpportunityConnectionString2 %>" SelectCommand="SELECT Opportunities_Meta.op_meta_id, Opportunities.CUSTOMER, Opportunities_Meta.[Rev Prob] AS Rev_Prob, Opportunities_Meta.[Rev Del Mon] AS Rev_Del_Mon, Opportunities_Meta.Duplicate, Opportunities_Meta.RPO, Opportunities_Meta.Comments FROM Opportunities_Meta INNER JOIN Opportunities ON Opportunities_Meta.op_meta_id = Opportunities.[OPP NO] WHERE (Opportunities_Meta.op_meta_id = @op_meta_id)" InsertCommand="INSERT INTO Opportunities_Meta(op_meta_id, [Rev Prob], [Rev Del Mon], Duplicate, RPO, Comments) VALUES (@op_meta_id, @Rev_Prob, @Rev_Del_Mon, @duplicate, @rpo, @comments)" UpdateCommand="UPDATE Opportunities_Meta SET [Rev Prob] = @Rev_Prob, [Rev Del Mon] = @Rev_Del_Mon, Duplicate = @duplicate, RPO = @rpo, Comments = @comments FROM Opportunities_Meta INNER JOIN Opportunities ON Opportunities_Meta.op_meta_id = @op_meta_id WHERE (Opportunities_Meta.op_meta_id = @op_meta_id)">
        <InsertParameters>
            <asp:Parameter Name="op_meta_id" Type="Int32" />
            <asp:Parameter Name="Rev_Prob" />
            <asp:Parameter Name="Rev_Del_Mon" />
            <asp:Parameter Name="duplicate" Type="Boolean" />
            <asp:Parameter Name="rpo" />
            <asp:Parameter Name="comments" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="op_meta_id" QueryStringField="oppId" />
        </SelectParameters>
        <UpdateParameters>            
            <asp:Parameter Name="Rev_Prob" Type="String" />
            <asp:Parameter Name="Rev_Del_Mon" Type="String" />
            <asp:Parameter Name="duplicate" Type="Boolean" />
            <asp:Parameter Name="rpo" Type="Boolean" />
            <asp:Parameter Name="comments" Type="String" />
            <asp:Parameter Name="op_meta_id" Type="Int32"/>
        </UpdateParameters>
    </asp:SqlDataSource>
</body>
</html>
