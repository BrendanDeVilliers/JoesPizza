// JavaScript Document
var HtmlCode = {

		GetMenuItem: function (item) {

			let plg = item.choices[0];
			let prg = item.choices[1];
			let lbl_plg = `${item.type} - ${item.name} - ${plg.size}`;
			let lbl_prg = `${item.type} - ${item.name} - ${prg.size}`;

			return `<div class="menu-item">
			<div><div><img src="${item.img}"></div><div>${item.name}</div>
			</div><div>${item.descr}</div>
			<div>
				<div act="add2order" id="${prg.id}" cost="${prg.cost}" lbl="${lbl_prg}" title="Click to order">${prg.txt}</div>
				<div act="add2order" id="${plg.id}" cost="${plg.cost}" lbl="${lbl_plg}" title="Click to order">${plg.txt}</div>
			</div>
			</div>`;
		}
};
