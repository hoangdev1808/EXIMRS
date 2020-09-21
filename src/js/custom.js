var siteRoot = "";
var slProvince = 'select[name=ProductProvince]';
var slDistrict = 'select[name=ProductDistrict]';
var slProductCategory = 'select[name=ProductCategory]';
var txtProductName = 'input[name=ProductName]';


$(document).ready(function() {
	// $('.pro-detail-4 .dropdown-item').click(function(e){
	// 	var src = $(this).data('src')
	// 	$('#planImage').attr('src',src)
	// }) 
	CheckParamUrlToToggleFilter();
	//Provinces
	loadProvinces(slProvince);
	//Load District when Province change
	$(slProvince).change(function() {
		loadDistricts(slDistrict, $(this).val());
	});
	//Load Product category 
	loadProductCategories(slProductCategory);

});

function CheckParamUrlToToggleFilter() {
	var url = new URL(window.location.href);
	var province = url.searchParams.get("province");
	var district = url.searchParams.get("district");
	var category = url.searchParams.get("category");
	var keyword = url.searchParams.get("keyword");

	if (province != '' || district != '' || category != '' || keyword != '')
		$("#btn-filter").trigger("click");
	if (keyword != '')
		$(txtProductName).val(keyword);

}

function ProductFilter() {
	let provinceId = $(slProvince).val();
	let districtId = $(slDistrict).val();
	let productCategory = $(slProductCategory).val();
	let productName = $(txtProductName).val();
	let pageUrl = location.protocol + '//' + location.host + location.pathname;

	if (provinceId != '')
		pageUrl = updateQueryStringParameter(pageUrl, 'province', provinceId);
	if (districtId != '')
		pageUrl = updateQueryStringParameter(pageUrl, 'district', districtId);
	if (productCategory != '')
		pageUrl = updateQueryStringParameter(pageUrl, 'category', productCategory);
	if (productName != '')
		pageUrl = updateQueryStringParameter(pageUrl, 'keyword', productName);
	window.location.href = pageUrl;
}

function updateQueryStringParameter(uri, key, value) {
	var re = new RegExp("([?&])" + key + "=.*?(&|$)", "i");
	var separator = uri.indexOf('?') !== -1 ? "&" : "?";
	if (uri.match(re)) {
		return uri.replace(re, '$1' + key + "=" + value + '$2');
	} else {
		return uri + separator + key + "=" + value;
	}
}

function loadDistricts($select, $provinceId) {
	var data = {
		'method': 'GetDistricts',
		'provinceId': $provinceId
	};
	$.ajax({
		cache: false,
		url: siteRoot + "/Product/Services/ProductServices.aspx",
		data: data,
		type: 'post',
		success: function(response) {
			if (response.success) {
				let url = new URL(window.location.href);
				let current = url.searchParams.get("district");
				let htmlOptions = "";
				htmlOptions += "<option value=''>Quận huyện</option>";
				$(response.data).each(function() {
					if (current != '' && this.ItemID == current)
						htmlOptions += "<option value='" + this.ItemID + "' selected>" + this.Name + "</option>";
					else
						htmlOptions += "<option value='" + this.ItemID + "'>" + this.Name + "</option>";

				});
				$($select).html(htmlOptions);
			}
		}
	});
}

function loadProvinces($select) {


	let data = {
		'method': 'GetProvince',
	};
	$.ajax({
		cache: false,
		url: siteRoot + "/Product/Services/ProductServices.aspx",
		data: data,
		type: 'post',
		success: function(response) {
			if (response.success) {
				let url = new URL(window.location.href);
				let current = url.searchParams.get("province");
				let htmlOptions = "";
				htmlOptions += "<option value=''>Tỉnh/thành phố</option>";
				$(response.data).each(function() {
					if (current != '' && this.ItemID == current)
						htmlOptions += "<option value='" + this.ItemID + "' selected>" + this.Name + "</option>";
					else
						htmlOptions += "<option value='" + this.ItemID + "'>" + this.Name + "</option>";
				});
				$($select).html(htmlOptions);
				if (current != '')
					setTimeout(function() {
						$($select).trigger("change")
					}, 500);
			}
		}
	});
}

function loadProductCategories($select) {
	var data = {
		'method': 'GetProductCategories',
	};
	$.ajax({
		cache: false,
		url: siteRoot + "/Product/Services/ProductServices.aspx",
		data: data,
		type: 'post',
		success: function(response) {
			if (response.success) {
				let url = new URL(window.location.href);
				let current = url.searchParams.get("category");
				let htmlOptions = "";
				htmlOptions += "<option value=''>Chọn loại căn hộ</option>";
				$(response.data).each(function() {
					if (current != '' && this.CustomFieldOptionId == current)
						htmlOptions += "<option value='" + this.CustomFieldOptionId + "' selected>" + this.Name + "</option>";
					else
						htmlOptions += "<option value='" + this.CustomFieldOptionId + "'>" + this.Name + "</option>";
				});
				$($select).html(htmlOptions);
			}
		}
	});
}
function searchbox(){
	$('#desktop #searchbox').on('click', function(){
		alert('test')
		// $('#desktop #search-box').toggleClass('active')
	})
}