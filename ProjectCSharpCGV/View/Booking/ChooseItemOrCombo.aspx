<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChooseItemOrCombo.aspx.cs" Inherits="ProjectCSharpCGV.View.Booking.ChooseItemOrCombo" %>
<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
    <link href="../../Content/colobox.css" rel="stylesheet" />
    <link href="../../Content/custom-cgv.css" rel="stylesheet" />
    <link href="../../Content/g-erp-cgv.css" rel="stylesheet" />
    <link href="../../Content/madisonisland.css" rel="stylesheet" />
    <link href="../../Content/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <form runat="server" id="form1">
        <!-- code font end here -->
        <div class="main-container col1-layout">
            <div class="main">
                <div class="col-main">
                    <div class="booking-progress">
                        <div class="page-title">
                            <h1>Booking Online</h1>
                        </div>



                        <div class="main-content">
                            <ul class="progress" style="position: relative; height: 900px;">




                                <li class="booking-step cycle-slide cycle-slide-active" style="position: absolute; top: 0px; left: 0px; z-index: 99; visibility: visible; opacity: 1; display: block;">
                                    <label class="h1">Concession</label>


                                    <ol class="products-list" id="products-list">
                                        <% foreach (ProjectCSharpCGV.Model.Combo fl in listCombo)
                                            {%>
                                        <li class="item first">
                                            <img class="product-image" alt="" src="../../images/cgvlogo.png" />
                                            <div class="product-shop">
                                                <div class="f-fix">
                                                    <div class="product-primary"><%=fl.Name %></div>
                                                    <div class="desc std">
                                                        <%=fl.Note %>
                                                    </div>

                                                    <div class="desc">
                                                        <div class="price-box">
                                                            <span class="label" style="font-size:14px;color:black;">Price:</span>
                                                            <span class="price"><%=discount %></span>
                                                        </div>
                                                        <%--<div class="action">
                                                            <asp:Button ID="btnTru" runat="server" CssClass="button fml103419" Text="-" OnClick="btnTru_Click" />
                                                            <asp:TextBox ID="txtNum" runat="server" CssClass="input-text qty button"></asp:TextBox>
                                                            <asp:Button ID="btnCong" runat="server" CssClass="button fml103419" Text="+" OnClick="btnCong_Click" />
                                                        </div>--%>
                                                        <div class="quantity action">
                                                            <%--<asp:TextBox ID="txtNum" Text="0" runat="server"></asp:TextBox>--%>
                                                            <input id="num" runat="server" type="number" min="0" max="9" step="1" value="0">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <%}%>
                                    </ol>

                                </li>
                            </ul>
                        </div>

                        <div class="bottom-content">
                            <div class="format-bg-top"></div>

                            <a class="btn-left" href="javascript: void(0);" title="Previous">Previous</a>

                            <div class="minicart-wrapper">
                                <ul>
                                    <li class="item first" xmlns="http://www.w3.org/1999/html">
					<div class="product-details">
						<table class="info-wrapper">
							<colgroup>
								<col width="40%">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td>
										<img src="https://www.cgv.vn/media/catalog/product/cache/3/thumbnail/dc33889b0f8b5da88052ef70de32f1cb/p/o/poster_peninsula_2.jpg" alt="PENINSULA">
									</td>									
									<td>
										<table class="info-wrapper">
											<tbody><tr><td class="label">PENINSULA</td></tr>
											<tr><td class="label">2D</td></tr>
											<tr><td class="label">C18</td></tr>
										</tbody></table>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>

                                    <li class="item" xmlns="http://www.w3.org/1999/html">
					<div class="product-details">
						<table class="info-wrapper">							
							<tbody>
								<tr>
									<td class="label">Theater</td>
									<td>CGV Vincom Center Ba Trieu</td>
								</tr>
								<tr>
									<td class="label">Showtimes</td>
									<td>
									20:00, 30/07/2020</td>
								</tr>
								<tr>
									<td class="label">Screen</td>
									<td>Cinema 6</td>
								</tr>
								<tr class="block-seats" style="">
									<td class="label">Seats</td>
									<td class="data"><span style="clear: both; float: left;">Standard</span><span style="clear: both; float: left;">B9</span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>

                                    <li class="item" xmlns="http://www.w3.org/1999/html">
					<div class="product-details">
						<table class="info-wrapper">
							<thead>
								<tr class="block-box">
									<td class="label">Movie</td>
									<td class="price"><%=discount %></td>
									<td class="data">
										<div class="truncated">
											<div class="truncated_full_value"><dl class="item-options"><dt>Standard</dt><dd>1</dd></dl></div>
											<a href="javascript: void(0);" onclick="return false;" class="details">I</a>
										</div>
									</td>
								</tr>
							</thead>
							
							<tbody>
								<tr class="block-con">
									<td class="label">Combo</td>
									<td class="price"><span class="price">₫0.00</span></td>
									<td class="data">
										<div class="truncated">
											<div class="truncated_full_value"></div>
											<a href="javascript: void(0);" onclick="return false;" class="details">I</a>
										</div>
									</td>
								</tr>
							</tbody>
							
							<tfoot class="block-price">
								<tr>
									<td class="label">Total</td>
									<td class="price" colspan="2">₫<%=total %></td>
								</tr>
							</tfoot>
						</table>
					</div>
				</li>
                                </ul>
                            </div>

                            <a class="btn-right con" href="javascript: void(0);" title="Next">Next</a>

                            <div class="format-bg-bottom"></div>
                        </div>
                    </div>

                    <div id="loading-mask" style="left: -2px; top: 0px; display: none;">
                        <p class="loader" id="loading_mask_loader">
                            <img src="https://www.cgv.vn/skin/frontend/cgv/default/images/ajax-loader.gif" alt="Loading...">
                            <br>
                            Please wait...
                        </p>
                    </div>

                    <script type="text/javascript">

                        jQuery('<div class="quantity-button quantity-up">+</div><div class="quantity-button quantity-down">-</div>').insertAfter('.quantity input');
                        jQuery('.quantity').each(function () {
                            var spinner = jQuery(this),
                                input = spinner.find('input[type="number"]'),
                                btnUp = spinner.find('.quantity-up'),
                                btnDown = spinner.find('.quantity-down'),
                                min = input.attr('min'),
                                max = input.attr('max');

                            btnUp.click(function () {
                                var oldValue = parseFloat(input.val());
                                if (oldValue >= max) {
                                    var newVal = oldValue;
                                } else {
                                    var newVal = oldValue + 1;
                                }
                                spinner.find("input").val(newVal);
                                spinner.find("input").trigger("change");
                            });

                            btnDown.click(function () {
                                var oldValue = parseFloat(input.val());
                                if (oldValue <= min) {
                                    var newVal = oldValue;
                                } else {
                                    var newVal = oldValue - 1;
                                }
                                spinner.find("input").val(newVal);
                                spinner.find("input").trigger("change");
                            });

                        });
                        //<![CDATA[
                        //var prname = "2728_PENINSULA";
                        //smartech('dispatch','Select_Seats_Web',{'prname':prname});

                        var x;
                        var box = {};
                        var con = {};
                        var fseats = {};
                        var msg_family = '';
                        var boxprice = boxlimit = conprice = 0;
                        var seq = 5017097;
                        var site = '001';
                        var dy = '20200730';
                        var limit_cbo = 0;

                        function selectedseats(obj) {
                            if ($j('.seat').hasClass('checked')) {
                                if ($j(obj).attr('zone') != $j('.seat.checked').attr('zone')) {
                                    alert('Please select the same type of seats');
                                    return;
                                }
                            }

                            if (!$j(obj).hasClass('checked')) {
                                if ($j(obj).attr('spec')) {
                                    if (boxlimit < 7) {
                                        var data = $j('.ticketbox .seat.active');
                                        $j(data).each(function () {
                                            if ($j(obj).attr('spec') == $j(this).attr('spec')) {
                                                $j(this).addClass('checked');
                                                boxlimit += 1;
                                            }

                                        });
                                    } else {
                                        alert('You can choose maximum 8 seats.');
                                    }
                                } else {

                                    if (boxlimit < 8) {
                                        $j(obj).addClass('checked');
                                        boxlimit += 1;
                                    } else {
                                        alert('You can choose maximum 8 seats.');
                                    }
                                }
                            } else {
                                if ($j(obj).attr('spec')) {
                                    var data = $j('.ticketbox .seat.checked');
                                    $j(data).each(function () {
                                        if ($j(obj).attr('spec') == $j(this).attr('spec')) {
                                            $j(this).removeClass('checked');
                                            boxlimit -= 1;
                                        }
                                    });
                                } else {
                                    $j(obj).removeClass('checked');
                                    boxlimit -= 1;
                                }
                            }

                            box = {};
                            boxprice = 0;
                            fseats = {};
                            ftickets = 0;
                            var columns = $j('.ticketbox .seat.checked');
                            $j(columns).each(function () {
                                if (typeof box[$j(this).attr('zone')] == 'undefined') box[$j(this).attr('zone')] = {};

                                box[$j(this).attr('zone')][$j(this).attr('loc')] = {
                                    label: $j(this).text().replace(/\s/g, ''),
                                    price: parseInt($j(this).attr('price'))
                                };

                            });

                            var htmlbox;
                            if (Object.keys(box).length > 0) {
                                var label = {};
                                htmlbox = '<dl class="item-options">';
                                for (var key in box) {
                                    if (box.hasOwnProperty(key)) {
                                        var qty = 0;
                                        $j.each(box[key], function (index, value) {
                                            if (!label[key]) {
                                                label[key] = value.label;
                                            } else {
                                                label[key] += ', ' + value.label;
                                            }

                                            if (value.price > 0) boxprice += value.price;
                                            qty += 1;
                                        });
                                        htmlbox += '<dt>' + key + '</dt>';
                                        htmlbox += '<dd>' + qty + '</dd>';
                                    }
                                }
                                htmlbox += '</dl>';

                                var html;
                                $j.each(label, function (index, value) {
                                    if (!html) {
                                        html = '<span style="clear: both; float: left;">' + index + '</span>';
                                    } else {
                                        html += '<span style="clear: both; float: left;">' + index + '</span>';
                                    }
                                    html += '<span style="clear: both; float: left;">' + value + '</span>';
                                });

                                $j('.minicart-wrapper .block-seats .data').html(html);
                                $j('.block-seats').show();
                            } else {
                                $j('.minicart-wrapper .block-seats .data').empty();
                                $j('.block-seats').hide();
                            }
                            $j('.minicart-wrapper .block-box .data .truncated_full_value').empty();
                            $j('.minicart-wrapper .block-box .data .truncated_full_value').html(htmlbox);
                            $j('.minicart-wrapper .block-box .price').html(formatCurrency(boxprice, { "pattern": "\u20ab%s", "precision": 2, "requiredPrecision": 2, "decimalSymbol": ".", "groupSymbol": ",", "groupLength": 3, "integerRequired": 1 }));
                            $j('.minicart-wrapper .block-price .price').html(formatCurrency(boxprice + conprice, { "pattern": "\u20ab%s", "precision": 2, "requiredPrecision": 2, "decimalSymbol": ".", "groupSymbol": ",", "groupLength": 3, "integerRequired": 1 }));
                        }

                        function checkleftright(columns) {
                            var seat;
                            $j(columns).each(function () {
                                var next = $j(this).next();
                                var prev = $j(this).prev();
                                //the middle seat to be checked
                                if ((next.hasClass('active') && !next.hasClass('checked') && $j(this).next().next().hasClass('active') && $j(this).next().next().hasClass('checked'))) {
                                    seat = next.text();
                                    return false;
                                }

                                if ((prev.hasClass('active') && !prev.hasClass('checked') && $j(this).prev().prev().hasClass('active') && $j(this).prev().prev().hasClass('checked'))) {
                                    seat = prev.text();
                                    return false;
                                }
                                //seats to be checked in the right/left
                                if ((next.hasClass('active') && !next.hasClass('checked') && (next.next().hasClass('disable') || next.next().hasClass('empty'))) && prev.hasClass('active') && !prev.hasClass('checked')) {
                                    seat = next.text();
                                    return false;
                                }

                                if ((prev.hasClass('active') && !prev.hasClass('checked') && (prev.prev().hasClass('disable') || prev.prev().hasClass('empty'))) && next.hasClass('active') && !next.hasClass('checked')) {
                                    seat = prev.text();
                                    return false;
                                }
                            });
                            return seat;
                        }

                        function selectedcons(obj) {
                            conprice = 0;
                            if ($j(obj).text().replace(/\s/g, '') == '+') {
                                if (show_hide == 0 && ($j(obj).attr('data') == 'check' || $j(obj).attr('data') == 'check')) {
                                    alert(msg_family);
                                    return;
                                }
                                var qty = parseInt($j(obj).prev().text());
                                qty_dsc = qty;
                                if ($j(obj).attr('data') == 'check' || $j(obj).attr('data') == 'check') {
                                    if (qty == $j('#' + $j(obj).attr('name')).attr('mzcbo')) {
                                        var txt_msg_vi = 'Bạn chỉ được chọn tối đa ' + qty + ' hạng mục';
                                        var txt_msg_en = 'You only choose maximum ' + qty + ' item';
                                        alert('' + txt_msg_en + ''); return;
                                    }
                                }
                                if (qty < 4) {
                                    qty += 1;
                                    $j(obj).prev().text(qty);
                                    con[$j(obj).attr('prd')] = {
                                        id: $j(obj).attr('prd'),
                                        name: $j(obj).attr('title'),
                                        qty: qty,
                                        price: parseInt($j(obj).attr('price'))
                                    };
                                }
                            } else {
                                var qty = parseInt($j(obj).next().text());

                                if (qty > 0) {
                                    qty -= 1;
                                    $j(obj).next().text(qty);
                                    con[$j(obj).attr('prd')] = {
                                        id: $j(obj).attr('prd'),
                                        name: $j(obj).attr('title'),
                                        qty: qty,
                                        price: parseInt($j(obj).attr('price'))
                                    };
                                }
                            }

                            var htmlcon;
                            if (Object.keys(con).length > 0) {
                                htmlcon = '<dl class="item-options">';
                                $j.each(con, function (index, value) {
                                    if (value.qty > 0) {
                                        htmlcon += '<dt>' + value.name + '</dt>';
                                        htmlcon += '<dd>' + value.qty + '</dd>';
                                        conprice += (value.qty * value.price);
                                    }
                                });
                                htmlcon += '</dl>';
                            }
                            $j('.minicart-wrapper .block-con .data .truncated_full_value').empty();
                            $j('.minicart-wrapper .block-con .data .truncated_full_value').html(htmlcon);

                            for (var key in box) {
                                if (box.hasOwnProperty(key)) {
                                    var ticket_qty = 0;
                                    $j.each(box[key], function (index, value) {
                                        ticket_qty += 1;
                                    });
                                }
                            }
                            var new_ticket_price = 0;
                            var check_attr = $j(obj).attr('data');
                            if ((typeof check_attr !== typeof undefined && check_attr !== false)) {
                                var new_ticket_price = parseInt($j(obj).siblings('.qty').text()) * parseInt($j('#' + $j(obj).attr('name')).attr('name')) * parseInt($j('#' + $j(obj).attr('name')).attr('item'));
                            } else {
                                var check_attr = $j('.action .button').attr('data');
                                if ((typeof check_attr !== typeof undefined && check_attr !== false)) {
                                    $j('.package').each(function (index, pack_item) {
                                        if (parseInt($j('.desc .action .button.' + $j(pack_item).attr('id')).siblings('.qty').text()) > 0) {
                                            new_ticket_price += parseInt($j('.desc .action .button.' + $j(pack_item).attr('id')).siblings('.qty').text()) * parseInt($j(pack_item).attr('name')) * parseInt($j(pack_item).attr('item'));
                                        }
                                    });
                                }
                            }

                            $j('.minicart-wrapper .block-box .price').html(formatCurrency(boxprice - new_ticket_price, { "pattern": "\u20ab%s", "precision": 2, "requiredPrecision": 2, "decimalSymbol": ".", "groupSymbol": ",", "groupLength": 3, "integerRequired": 1 }));
                            $j('.minicart-wrapper .block-con .price').html(formatCurrency(conprice, { "pattern": "\u20ab%s", "precision": 2, "requiredPrecision": 2, "decimalSymbol": ".", "groupSymbol": ",", "groupLength": 3, "integerRequired": 1 }));
                            $j('.minicart-wrapper .block-price .price').html(formatCurrency(boxprice + conprice - new_ticket_price, { "pattern": "\u20ab%s", "precision": 2, "requiredPrecision": 2, "decimalSymbol": ".", "groupSymbol": ",", "groupLength": 3, "integerRequired": 1 }));

                        }

                        var show_hide = 0;
                        $j('.booking-progress .progress').cycle({
                            allowWrap: false,
                            autoHeight: 'container',
                            slides: '> li',
                            timeout: 0,
                            fx: 'scrollHorz',
                            log: false
                        });

                        $j('.btn-right').on('click', function () {
                            if (Object.keys(box).length > 0) {
                                if ($j(this).hasClass('con')) {
                                    if (Object.keys(con).length > 0) {
                                        $j.ajax({
                                            type: 'POST',
                                            dataType: 'json',
                                            data: { product: 2728, site: site, dy: dy, con: con },
                                            url: 'https://www.cgv.vn/en/cinemas/booking/ajaxupdate/',
                                            beforeSend: function () { $j('#loading-mask').show(); }
                                        }).done(function (result) {
                                            if (result.success) {
                                                window.location.href = 'https://www.cgv.vn/en/cinox/sales/payment/';
                                            } else {
                                                alert(result.error);
                                                if (result.redirect) window.location.href = result.redirect;
                                            }
                                            $j('#loading-mask').hide();
                                        }).error(function () {
                                            location.reload();
                                        });
                                    } else {
                                        $j('#loading-mask').show();
                                        window.location.href = 'https://www.cgv.vn/en/cinox/sales/payment/';
                                    }
                                } else {
                                    var columns = $j('.ticketbox .seat.checked');
                                    var leftright = checkleftright(columns);
                                    if (leftright) {
                                        alert('Please do not leave ' + leftright.trim() + ' seat empty.');
                                    } else {
                                        clearInterval(x);
                                        $j.ajax({
                                            type: 'POST',
                                            dataType: 'json',
                                            data: { product: 2728, seq: seq, site: site, dy: dy, box: box },
                                            url: 'https://www.cgv.vn/en/cinemas/booking/ajaxadd/',
                                            beforeSend: function () { $j('#loading-mask').show(); }
                                        }).done(function (result) {
                                            if (result.success) {
                                                if (result.apply.same_zone == 0) {
                                                    alert('Please select the same type of seats');
                                                    $j('#loading-mask').hide();
                                                    return;
                                                }
                                                $j('#countdown').empty();
                                                $j('.countexpire').show();
                                                $j('.booking-progress .progress').cycle('next');
                                                $j('.btn-right').removeClass('box');
                                                $j('.btn-right').addClass('con');
                                                $j('html, body').animate({ scrollTop: 0 }, 'slow');


                                                var ticket_qty = 0;
                                                var total_ticket_price = 0;
                                                for (var key in box) {
                                                    if (box.hasOwnProperty(key)) {
                                                        $j.each(box[key], function (index, value) {
                                                            ticket_qty += 1;
                                                            total_ticket_price += value.price;
                                                        });
                                                    }
                                                }
                                                if (result.apply.status == 0) {
                                                    $j('.package').each(function (index, item) {
                                                        var qty = $j(item).attr('name');
                                                        var price = $j(item).attr('item');
                                                        var pack_price = $j(item).attr('initprice');
                                                        var price_per_ticket = total_ticket_price / ticket_qty;
                                                        var init_price = parseInt(pack_price) + parseInt(price_per_ticket) * parseInt(qty);
                                                        var number_combo = (result.apply.limit_combo - (result.apply.limit_combo % qty)) / qty;
                                                        var discount = init_price - (qty * price);
                                                        limit_cbo = number_combo;
                                                        $j(item).closest('.desc').children('.price-box').first().children('.price').attr('price', init_price);
                                                        $j(item).closest('.desc').children('.price-box').first().children('.price').html(init_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".") + ' đ');
                                                        $j(item).closest('.desc').children('.price-box').first().children('.price').addClass('except-selected');
                                                        $j(item).html(discount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".") + ' đ');

                                                        var discount_ticket = parseInt($j(item).attr('item'));
                                                        if (number_combo == 1)
                                                            var final_price = (parseInt($j(item).attr('initprice')) * number_combo) - (number_combo * qty * discount_ticket);
                                                        else
                                                            var final_price = (parseInt($j(item).attr('initprice')) * number_combo);

                                                    });
                                                    show_hide = 0;
                                                    msg_family = result.apply.msg;
                                                } else {
                                                    show_hide = 1;
                                                    $j('.package').each(function (index, item) {
                                                        var qty = $j(item).attr('name');
                                                        var price = $j(item).attr('item');
                                                        var pack_price = $j(item).attr('initprice');
                                                        var price_per_ticket = total_ticket_price / ticket_qty;
                                                        var init_price = parseInt(pack_price) + parseInt(price_per_ticket) * parseInt(qty);

                                                        var number_combo = (result.apply.limit_combo - (result.apply.limit_combo % qty)) / qty;
                                                        var discount = init_price - (qty * price);
                                                        limit_cbo = number_combo;
                                                        $j(item).attr('mzcbo', number_combo);
                                                        $j(item).closest('.desc').children('.price-box').first().children('.price').attr('price', init_price);
                                                        $j(item).closest('.desc').children('.price-box').first().children('.price').html(init_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".") + ' đ');
                                                        $j(item).closest('.desc').children('.price-box').first().children('.price').addClass('except-selected');
                                                        var con_price = parseInt($j(item).attr('initprice')) * number_combo;
                                                        $j(item).html(discount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".") + ' đ');

                                                        var final_price = discount - boxprice;
                                                        var discount_ticket = parseInt($j(item).attr('item'));
                                                    });
                                                }


                                                // Update the count down every 1 second
                                                var countDownDate = new Date();
                                                countDownDate.setMinutes(countDownDate.getMinutes() + 5);
                                                x = setInterval(function () {
                                                    var now = new Date().getTime();
                                                    var distance = countDownDate - now;
                                                    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                                                    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                                                    document.getElementById("countdown").innerHTML = '<div><span class="cgvminutes">' + minutes + '</span>' + '<div class="smalltext">Minutes</div></div>' + ' <div><span class="cgvseconds">' + seconds + '</span>' + '<div class="smalltext">Seconds</div></div>';
                                                    if ((minutes == 0) && (seconds == 0)) {
                                                        clearInterval(x);
                                                        $j.ajax({
                                                            type: 'POST',
                                                            dataType: 'json',
                                                            url: 'https://www.cgv.vn/en/cinemas/booking/ajaxdelete/',
                                                            beforeSend: function () { $j('#loading-mask').show(); }
                                                        }).done(function (result) {
                                                            if (result.success) {
                                                                $j('.countexpire').hide();
                                                                $j('.btn-right').removeClass('con');
                                                                $j('.btn-right').addClass('box');
                                                                $j('.booking-progress .progress').cycle('prev');
                                                            } else {
                                                                alert(result.error);
                                                                if (result.redirect) window.location.href = result.redirect;
                                                            }
                                                            $j('#loading-mask').hide();
                                                        }).error(function () {
                                                            location.reload();
                                                        });
                                                    }
                                                }, 1000);
                                            } else {
                                                alert(result.error);
                                                if (result.redirect) window.location.href = result.redirect;
                                            }
                                            $j('#loading-mask').hide();
                                        }).error(function () {
                                            location.reload();
                                        });
                                    }
                                }
                            } else {
                                alert('Please choose your seats first.');
                            }
                        });

                        $j('.btn-left').on('click', function () {
                            $j.ajax({
                                type: 'POST',
                                dataType: 'json',
                                url: 'https://www.cgv.vn/en/cinemas/booking/ajaxdelete/',
                                beforeSend: function () { $j('#loading-mask').show(); }
                            }).done(function (result) {
                                clearInterval(x);
                                if (result.success) {
                                    $j('#countdown').empty();
                                    $j('.countexpire').hide();
                                    $j('.btn-right').removeClass('con');
                                    $j('.btn-right').addClass('box');
                                    $j('.booking-progress .progress').cycle('prev');
                                    $j('.block-con .price').html('0 đ');
                                    $j('.action .qty').html(0);
                                    conprice = 0;
                                    con = {};
                                    $j('.block-box .price').html(formatCurrency(boxprice, { "pattern": "\u20ab%s", "precision": 2, "requiredPrecision": 2, "decimalSymbol": ".", "groupSymbol": ",", "groupLength": 3, "integerRequired": 1 }));
                                    $j('.block-price .price').html(formatCurrency(boxprice, { "pattern": "\u20ab%s", "precision": 2, "requiredPrecision": 2, "decimalSymbol": ".", "groupSymbol": ",", "groupLength": 3, "integerRequired": 1 }));
                                } else {
                                    alert(result.error);
                                    if (result.redirect) window.location.href = result.redirect;
                                }
                                $j('#loading-mask').hide();
                            }).error(function () {
                                location.reload();
                            });
                        });
	//]]>
                    </script>

                    <style>
                        .quantity {
                            position: relative;
                            width: 100%;
                            margin-bottom: 20px;
                        }

                            .quantity input[type=number] {
                                -moz-appearance: textfield;
                            }

                            .quantity input {
                                width: 60px;
                                padding: 0px;
                                padding-left: 10px;
                                margin-bottom: 10px;
                            }

                                .quantity input:focus {
                                    outline: 0;
                                }

                        .quantity-button {
                            cursor: pointer;
                            border: solid 1px solid #eee;
                            width: 26px;
                            text-align: center;
                            color: #333;
                            -moz-user-select: none;
                            -ms-user-select: none;
                            -o-user-select: none;
                            user-select: none;
                            background-color: red;
                        }

                            .quantity-button.quantity-up,
                            .quantity-button.quantity-down,
                            .quantity input {
                                border: solid 1px #ccc;
                                display: inline-block;
                                height: 42px;
                                line-height: 40px;
                            }

                            .quantity-button.quantity-up {
                            }

                            .quantity-button.quantity-down {
                                float: left
                            }
                        /* ============================================ *

 * Regular
 * ============================================ */
                        .booking-progress {
                            width: 100%;
                            border: 2px solid #d4d3c9;
                            #background-color: #F2F0E4;
                            display: block;
                        }

                            .booking-progress .main-content {
                                white-space: nowrap;
                            }

                        .col-main .page-title {
                            margin-top: 0px;
                            text-align: center;
                            padding: 5px;
                            background: #231d1c;
                            width: 100%;
                        }

                            .col-main .page-title h1 {
                                text-transform: uppercase;
                                color: #fff;
                                line-height: 32px;
                                padding: 0;
                                margin: 0;
                            }

                        /* ============================================ *
 * Top content
 * ============================================ */
                        .top-content {
                            width: 100%;
                            padding: 10px;
                            border-bottom: 2px solid #d4d3c9;
                            background: #fff1ce;
                            margin-bottom: 20px;
                            overflow: hidden;
                        }

                            .top-content .products-list {
                                width: 100%;
                                margin: 0px;
                            }

                                .top-content .products-list > li {
                                    margin: 0px;
                                    width: 100%;
                                }

                                .top-content .products-list .product-shop {
                                    float: left;
                                    padding: 0px;
                                    width: 100%;
                                }

                                    .top-content .products-list .product-shop * {
                                        white-space: normal;
                                    }

                        .countexpire {
                            display: none;
                        }

                        #countdown .cgvminutes, #countdown .cgvseconds {
                            font-weight: normal;
                        }

                        #countdown > div {
                            padding: 10px;
                            border-radius: 5px;
                            background: #fdfcf0;
                            display: inline-block;
                            text-align: center;
                        }

                        #countdown div > span {
                            padding: 10px;
                            border-radius: 5px;
                            background: #e71a0f;
                            display: inline-block;
                            width: 40px;
                            color: #fff;
                        }

                        .smalltext {
                            color: #999;
                        }

                        /* ============================================ *
 * Main content
 * ============================================ */
                        .main-content {
                            overflow: hidden;
                        }

                        .progress {
                            width: 100%;
                            line-height: 1.5;
                            font-size: 1.25rem;
                        }

                            .progress > li {
                                width: 100%;
                            }

                        .main-content .h1 {
                            text-align: center;
                            width: 100%;
                            background: #bcbdc0;
                            font-size: 16px;
                            line-height: 32px;
                            border-top: 2px solid #d4d3c9;
                            border-bottom: 2px solid #d4d3c9;
                        }

                        .ticketbox {
                            overflow-x: auto;
                            text-align: center;
                        }

                        .row {
                            margin: 2px;
                            font-size: 0;
                        }

                        .seat {
                            display: inline-block;
                            border: 1px solid transparent;
                            width: 22px;
                            height: 22px;
                            vertical-align: middle;
                            font-size: 7pt;
                            margin: 0 1px;
                            padding: 1px 0;
                        }

                            .seat.active {
                                cursor: pointer;
                            }

                            .seat.seat-disable {
                                background: #bbb;
                                border: 1px solid #bbb;
                                color: #fff;
                            }

                            .seat.seat-unavailable {
                                background: #bbb;
                                color: #fff;
                            }

                                .seat.seat-unavailable:before {
                                    content: "X";
                                    position: absolute;
                                    font-size: 14px;
                                }

                        .seat-standard {
                            border: 1px solid #01c73c;
                        }

                        .seat-vipprime {
                            border: 1px solid #f71708;
                        }

                        .seat-sw {
                            background: #FF62B0;
                            color: #fff;
                            border-color: #FF62B0;
                        }

                        .seat-gold {
                            background: #C0C081;
                            color: #fff;
                            border-color: #C0C081;
                        }

                        .seat-couple {
                            background: #3399cc;
                            color: #fff;
                            border-color: #3399cc;
                        }

                        .seat-deluxe {
                            background: #840042;
                            border: 1px solid #840042;
                            color: #fff;
                        }

                        .seat-bed {
                            background: #D297D2;
                            color: #fff;
                            border-color: #D297D2;
                        }

                        .seat-beanbag {
                            background: #7CBB8C;
                            color: #fff;
                            border-color: #7CBB8C;
                        }

                        .seat-sofa {
                            background: #D8A47C;
                            color: #fff;
                            border-color: #D8A47C;
                        }

                        .seat-4d {
                            background: #B55642;
                            color: #fff;
                            border-color: #B55642;
                        }

                        .seat.checked {
                            background: #b11500;
                            color: #fff;
                            border-color: #b11500;
                        }

                        .ticketbox-notice {
                            overflow: hidden;
                        }

                        .ticketbox-notice {
                            overflow: hidden;
                        }

                        .ticketbox-notice {
                            overflow: hidden;
                            text-align: center;
                        }

                        .iconlist {
                            display: inline-block;
                            min-width: 25%;
                            vertical-align: top;
                        }

                        .icon:before {
                            content: "";
                            display: inline-block;
                            vertical-align: middle;
                            width: 18px;
                            height: 18px;
                            margin: 0 5px 0 0;
                        }

                        .icon {
                            text-align: left;
                            margin: 5px 0;
                        }

                            .icon.checked:before {
                                background: #b11500;
                            }

                            .icon.occupied:before {
                                background: #bbb;
                            }

                            .icon.unavailable:before {
                                background: #bbb;
                                content: "X";
                                text-align: center;
                                color: #fff;
                            }

                            .icon.zone-standard:before {
                                border: 1px solid #01c73c;
                            }

                            .icon.zone-vipprime:before {
                                border: 1px solid #f71708;
                            }

                            .icon.zone-sw:before {
                                background: #FF62B0;
                            }

                            .icon.zone-gold:before {
                                background: #C0C081;
                            }

                            .icon.zone-couple:before {
                                background: #3399cc;
                            }

                            .icon.zone-deluxe:before {
                                background: #840042;
                            }

                            .icon.zone-bed:before {
                                background: #D297D2;
                            }

                            .icon.zone-4d:before {
                                background: #B55642;
                            }

                            .icon.zone-beanbag:before {
                                background: #7CBB8C;
                            }

                            .icon.zone-sofa:before {
                                background: #D8A47C;
                            }

                        .main-content .products-list {
                            margin: 0 20px 20px 20px;
                        }

                            .main-content .products-list li.item {
                                border: none;
                                margin: 0;
                                padding: 0;
                            }

                                .main-content .products-list li.item img {
                                    border: none;
                                }

                                .main-content .products-list li.item.first {
                                    float: left;
                                    width: 33%;
                                }

                                .main-content .products-list li.item.last {
                                    float: right;
                                    width: 33%;
                                }

                        .booking-step .action .button {
                            width: 18px;
                        }

                        .booking-step .action .qty.button {
                            color: #000;
                            width: 33px;
                        }

                        .products-list .product-shop .product-primary {
                            font-weight: bold;
                        }

                        .products-list .product-shop .price-box .price {
                            color: #000;
                            font-weight: bold;
                            font-size: 14px;
                        }

                        .booking-step .products-list .product-shop .desc.std {
                            white-space: pre-line;
                        }

                        .booking-step .products-list .product-shop .desc {
                            white-space: normal;
                            width: 100%;
                        }

                        .except-selected {
                            text-decoration: line-through;
                        }

                        #calculateprice {
                            font-weight: bold;
                        }

                        .seat.oddseat {
                            color: #fff;
                            background: #0e41d1;
                            border: none;
                        }

                        .icon.oddseat:before {
                            color: #fff;
                            background: #0e41d1;
                            border: none;
                        }

                        .seat.evenseat {
                            color: #fff;
                            background: #d02497;
                            border: none;
                        }

                        .icon.evenseat:before {
                            color: #fff;
                            background: #d02497;
                            border: none;
                        }

                        .seat.fullseat {
                            color: #fff;
                            background: #890aff;
                            border: none;
                        }

                        .icon.fullseat:before {
                            color: #fff;
                            background: #890aff;
                            border: none;
                        }

                        .special_filter .icon {
                            color: #fff;
                        }

                        .filter_bg {
                            background: url(https://www.cgv.vn/skin/frontend/cgv/default/images/bg-cgv/filter_bg.jpg) no-repeat center center;
                            -webkit-background-size: cover;
                            -moz-background-size: cover;
                            -o-background-size: cover;
                            background-size: cover;
                        }

                        .seat.checked {
                            background: #b11500 !important;
                            border-color: #b11500 !important;
                        }

                        .filter_bg .f-fix, .filter_bg .products-list .product-shop .price-box .price {
                            color: #fff;
                        }
                        /* ============================================ *
 * Main content responsive
 * ============================================ */
                        @media only screen and (max-width: 479px) {
                            .main-content .products-list {
                                margin: 0px;
                            }

                                .main-content .products-list li.item.first, .main-content .products-list li.item.last {
                                    clear: both;
                                    width: 100%;
                                    margin: 5px 0;
                                }
                        }

                        /* ============================================ *
 * Bottom content
 * ============================================ */
                        .bottom-content {
                            background-color: #000;
                            margin-top: 30px;
                            font-size: 0;
                        }

                        .format-bg-top {
                            width: 100%;
                            background: url(https://www.cgv.vn/skin/frontend/cgv/default/images/bg-cgv/bg-top-seatmap.png) repeat-x top left transparent;
                            height: 8px;
                            overflow: hidden;
                        }

                        .format-bg-bottom {
                            width: 100%;
                            background: url(https://www.cgv.vn/skin/frontend/cgv/default/images/bg-cgv/bg-bottom-seatmap.png) repeat-x bottom left transparent;
                            height: 8px;
                            overflow: hidden;
                        }

                        .minicart-wrapper {
                            font-size: 0;
                            color: #cccccc;
                            width: 750px;
                            display: inline-block;
                            margin: 0 3px;
                        }

                            .minicart-wrapper ul {
                                width: 100%;
                            }

                                .minicart-wrapper ul .item.first .product-details {
                                    margin: 0px;
                                }

                            .minicart-wrapper img {
                                width: 74px;
                                height: 108px;
                                display: inline-block;
                            }

                            .minicart-wrapper .product-details {
                                padding-top: 10px;
                                display: inline-block;
                                vertical-align: top;
                                margin: 0 0 0 10px;
                            }

                            .minicart-wrapper .item {
                                display: inline-block;
                                width: 32%;
                                margin-left: 1%;
                                font-size: 12px;
                            }

                        .info-wrapper {
                            color: #cccccc;
                        }

                            .info-wrapper td {
                                padding: 0 5px;
                                font-weight: bold;
                                white-space: normal;
                                vertical-align: top;
                            }

                                .info-wrapper td.label {
                                    font-weight: normal;
                                }

                        .truncated {
                            float: right;
                        }

                            .truncated a.details {
                                display: block;
                                width: 15px;
                                height: 15px;
                                font-size: 0px;
                                background: url(/skin/frontend/cgv/default/images/bg-cgv/icon-info-combo.png) no-repeat center center;
                                float: right;
                                margin-top: 3px;
                                cursor: pointer;
                                margin-left: 4px;
                            }

                        .bottom-content .truncated .truncated_full_value .item-options dt, .bottom-content .truncated .truncated_full_value .item-options dd {
                            color: #000;
                        }

                        .item-options dt:after {
                            content: ' x ';
                        }

                        .btn-left, .btn-right {
                            float: none;
                            width: 106px;
                            display: inline-block;
                            margin: 0 0 0 3px;
                            height: 108px;
                            vertical-align: top;
                            background: url(https://www.cgv.vn/skin/frontend/cgv/default/images/bg-cgv/bg-cgv-button-process.png) no-repeat;
                        }

                        .btn-left {
                            background-position: -152px 0;
                        }

                        .btn-right {
                            background-position: -152px -441px;
                        }

                        li[name=familypack] .product-shop, .products-list li[name=familypack] .product-shop .price-box .price {
                            color: #fff;
                        }

                        li[name=familypack] .action .button {
                            background: #fff;
                            color: #000;
                        }

                        /* ============================================ *
 * Bottom responsive
 * ============================================ */
                        @media only screen and (max-width: 479px) {
                            .bottom-content .minicart-wrapper {
                                float: left;
                                width: 98%;
                                margin: 0 1% 120px 1%;
                            }

                                .bottom-content .minicart-wrapper .item {
                                    float: left;
                                    width: 98%;
                                }

                                    .bottom-content .minicart-wrapper .item img {
                                        width: 100%;
                                        height: auto;
                                        border: 1px solid #fff;
                                    }

                            .bottom-content .truncated .truncated_full_value .item-options {
                                padding: 0px;
                            }

                                .bottom-content .truncated .truncated_full_value .item-options dt, .bottom-content .truncated .truncated_full_value .item-options dd {
                                    color: #cccccc;
                                }

                            .btn-left, .btn-right {
                                position: absolute;
                                bottom: 20px;
                            }

                            .btn-left {
                                left: 5px;
                            }

                            .btn-right {
                                right: 5px;
                            }

                            .truncated a.details {
                                display: none !important;
                            }
                        }

                        @media only screen and (max-width: 770px) {
                            .bottom-content .minicart-wrapper {
                                float: left;
                                width: 98%;
                                margin: 0 1% 120px 1%;
                            }

                            .btn-left, .btn-right {
                                position: absolute;
                                bottom: 20px;
                            }

                            .btn-left {
                                left: 5px;
                            }

                            .btn-right {
                                right: 5px;
                            }
                        }

                        @media only screen and (min-width: 771px) and (max-width: 800px) {
                            .bottom-content .minicart-wrapper {
                                float: left;
                                width: 98%;
                                margin: 0 1% 120px 1%;
                            }

                            .btn-left, .btn-right {
                                position: absolute;
                                bottom: 20px;
                            }
                        }

                        @media only screen and (min-width: 479px) and (max-width: 603px) {
                            .bottom-content .minicart-wrapper .item {
                                width: 98%;
                            }
                        }
                    </style>
                </div>
            </div>
        </div>
    </form>
</asp:Content>