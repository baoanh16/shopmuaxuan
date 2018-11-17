<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
            <div class="row">
                <div class="col">
                    <div class="form-check abc-checkbox abc-checkbox-circle">
                        <input class="form-check-input" id="ctl00_mainContent_ctl02_rdbCheckoutAsGuest" type="radio"
                            name="ctl00$mainContent$ctl02$login" value="rdbCheckoutAsGuest" onclick="javascript:setTimeout('__doPostBack(\'ctl00$mainContent$ctl02$rdbCheckoutAsGuest\',\'\')', 0)">
                        </input>
                        <label class="form-check-label" for="ctl00_mainContent_ctl02_rdbCheckoutAsGuest">Checkout as a guest</label>
                    </div>
                    <div class="form-check abc-checkbox abc-checkbox-circle">
                        <input class="form-check-input" id="ctl00_mainContent_ctl02_rdbCheckoutAsReturningCustomer" type="radio" name="ctl00$mainContent$ctl02$login" value="rdbCheckoutAsReturningCustomer" checked="checked"></input>
                        <label class="form-check-label" for="ctl00_mainContent_ctl02_rdbCheckoutAsReturningCustomer">I
                            am a returning customer</label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="box-account">
                        <h3 class="h5 mt-5 mt-md-0 mb-4">Vui lòng nhập thông tin</h3>
                        <div class="validator" id="ctl00_mainContent_ctl02_LoginCtrl_pnlLContainer" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_mainContent_ctl02_LoginCtrl_Login')">
                            <div class="form-group row">
                                <div class="col">
                                    <label for="name">Username or Email<span class="text-danger">(*)</span>
                                    </label>
                                    <input class="form-control" name="ctl00$mainContent$ctl02$LoginCtrl$UserName" type="text" maxlength="100" id="ctl00_mainContent_ctl02_LoginCtrl_UserName" class="form-control" placeholder="Email"></input>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col">
                                    <label for="Email">Password</label>
                                    <input class="form-control" name="ctl00$mainContent$ctl02$LoginCtrl$Password" type="password" id="ctl00_mainContent_ctl02_LoginCtrl_Password" placeholder="Mật khẩu"></input>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="row text-center">
                                <div class="col"><a class="getstart" href="#">Forgotten Your Password?</a>-<a class="getstart"
                                        href="#">Register</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col"><a class="btn btn-lg btn-primary text-uppercase btn-block"  type="submit" name="ctl00$mainContent$ctl02$LoginCtrl$Login" value="Tiếp tục" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions('ctl00$mainContent$ctl02$LoginCtrl$Login','', true,'CheckoutLogin',
                '', false, false))" id="ctl00_mainContent_ctl02_LoginCtrl_Login" class="hvr-sweep-to-right btn-continue">Continue</a></div>
            </div>
            <div class="row">
                <div class="col">
                    <hr>
                    <h3 class="h6 mt-3 mb-3">Log in by</h3>
                    <div class="row">
                        <div class="col">
                            <p><a class="btn btn-facebook text-uppercase btn-block" href="#"><i class="fab fa-fw fa-facebook-f"></i><span>Facebook</span></a></p>
                        </div>
                        <div class="col">
                            <p><a class="btn btn-google text-uppercase btn-block" href="#"><i class="fab fa-fw fa-google"></i><span>Google</span></a></p>
                        </div>
                    </div>
                </div>
            </div>
    </xsl:template>
    <!-- <xsl:template match="Product">
    </xsl:template> -->
</xsl:stylesheet>