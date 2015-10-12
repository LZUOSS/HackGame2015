/* Public Functions */

function chkSubmit() {
	if ( $( '#pwd' ).val() == '' ) {
		alert("密码不能为空哦~");
	} else {
		alert("密码不能非空哦~");
			}
	return false;
}

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}