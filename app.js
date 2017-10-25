// JavaScript Document
var App = {

	Menu: null,

	Init: function () {

		
		
		this.Menu = JoesPizza.Menu;
		$("#PizzaOrderSubmit").click(this.OrderNext);
		
	},
	
	LoadMenu:function(){
		
		$("#MenuItemList").html("");
		
		this.Menu.items.forEach(item => {
			let html = HtmlCode.GetMenuItem(item);
			$("#MenuItemList").append(html);
		});
		
		      // attach click events to new menu items
	}
	
};