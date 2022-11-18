import 'package:ciyu/pages/recommend_page.dart';
import 'package:ciyu/pages/register_page.dart';
import 'package:ciyu/styles/theme.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jverify/jverify.dart';
import 'dart:io';

import '../load.dart';
import '../providers/token_provider.dart';

class LoginPage extends StatefulHookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final Jverify jverify = Jverify();
  bool loading = false;

  @override
  void initState() {
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    final phoneController = useTextEditingController();
    final passwordController = useTextEditingController();
    ref.listen(loginStatusProvider, (previous, next) {
      if (next == LoginStatus.success)
        Navigator.of(context).pushAndRemoveUntil(RecommendPage.route(), (route) => false);
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 64),
                    Text(
                      "词遇",
                      style: textTheme.displayMedium,
                    ),
                    SizedBox(height: 48),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "手机号",
                      ),
                      controller: phoneController,
                    ),
                    SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "密码",
                      ),
                      controller: passwordController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            // onPressed: loading
                            //     ? () {}
                            //     : () {
                            //         loginAuth();
                            //       },
                            onPressed: null,
                            child: loading
                                ? CircularProgressIndicator()
                                : Text("本机号码一键登录"),
                          ),
                        ),
                        SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () {
                            ref.watch(loginStatusProvider.notifier).login(
                                phoneController.text, passwordController.text);
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                          ),
                          child:
                              ref.watch(loginStatusProvider) == LoginStatus.loading
                                  ? SizedBox.square(
                                      dimension: 24,
                                      child: CircularProgressIndicator(
                                          color: Colors.white),
                                    )
                                  : SvgPicture.asset(
                                      "svgs/arrow_right.svg",
                                      color: Colors.white,
                                    ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: () => Navigator.of(context).pushAndRemoveUntil(RegisterPage.route(), (route) => false), child: Text("新账号注册", style: textTheme.bodyMedium)),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> initPlatformState() async {
    // 初始化 SDK 之前添加监听
    jverify.addSDKSetupCallBackListener((JVSDKSetupEvent event) {
      print("receive sdk setup call back event :${event.toMap()}");
    });

    jverify.setDebugMode(true); // 打开调试模式
    jverify.setup(
        appKey: "8c1bf2fcc2e0aecb1648822b", //"你自己应用的 AppKey",
        channel: "devloper-default"); // 初始化sdk,  appKey 和 channel 只对ios设置有效
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    /// 授权页面点击事件监听
    jverify.addAuthPageEventListener((JVAuthPageEvent event) {
      print("receive auth page event :${event.toMap()}");
    });
  }

  void _showLoading(BuildContext context) {
    LoadingDialog.show(context);
  }

  void _hideLoading() {
    LoadingDialog.hidden();
  }

  /// SDK 请求授权一键登录
  void loginAuth() {
    setState(() {
      _showLoading(context);
    });
    jverify.checkVerifyEnable().then((map) {
      bool result = map["result"];
      if (result) {
        final screenSize = MediaQuery.of(context).size;
        final screenWidth = screenSize.width;
        final screenHeight = screenSize.height;
        bool isiOS = Platform.isIOS;

        /// 自定义授权的 UI 界面，以下设置的图片必须添加到资源文件里，
        /// android项目将图片存放至drawable文件夹下，可使用图片选择器的文件名,例如：btn_login.xml,入参为"btn_login"。
        /// ios项目存放在 Assets.xcassets。
        ///
        JVUIConfig uiConfig = JVUIConfig();
        // uiConfig.authBGGifPath = "main_gif";

        //uiConfig.navHidden = true;
        uiConfig.navColor = Colors.white.value;
        uiConfig.navText = "登录";
        uiConfig.navTextColor = Colors.black.value;
        uiConfig.navReturnImgPath = "return_bg"; //图片必须存在
        uiConfig.navReturnBtnHidden = true;
        uiConfig.navHidden = true;

        uiConfig.logoWidth = 100;
        uiConfig.logoHeight = 80;
        //uiConfig.logoOffsetX = isiOS ? 0 : null;//(screenWidth/2 - uiConfig.logoWidth/2).toInt();
        uiConfig.logoOffsetY = 10;
        uiConfig.logoVerticalLayoutItem = JVIOSLayoutItem.ItemSuper;
        uiConfig.logoHidden = true;
        uiConfig.logoImgPath = "logo";

        uiConfig.numberFieldWidth = 200;
        uiConfig.numberFieldHeight = 40;
        //uiConfig.numFieldOffsetX = isiOS ? 0 : null;//(screenWidth/2 - uiConfig.numberFieldWidth/2).toInt();
        // uiConfig.numFieldOffsetY = isiOS ? 20 : 120;
        uiConfig.numFieldOffsetY = 40;
        uiConfig.numberVerticalLayoutItem = JVIOSLayoutItem.ItemLogo;
        uiConfig.numberColor = Colors.blue.value;
        uiConfig.numberSize = 24;

        // uiConfig.sloganOffsetY = isiOS ? 20 : 160;
        uiConfig.sloganOffsetY = 90;
        uiConfig.sloganVerticalLayoutItem = JVIOSLayoutItem.ItemNumber;
        uiConfig.sloganTextColor = Colors.black.value;
        uiConfig.sloganTextSize = 12;
//        uiConfig.slogan
//         uiConfig.sloganHidden = true;

        uiConfig.logBtnWidth = 220;
        uiConfig.logBtnHeight = 50;
        //uiConfig.logBtnOffsetX = isiOS ? 0 : null;//(screenWidth/2 - uiConfig.logBtnWidth/2).toInt();
        // uiConfig.logBtnOffsetY = isiOS ? 20 : 230;
        uiConfig.logBtnOffsetY = 160;
        uiConfig.logBtnVerticalLayoutItem = JVIOSLayoutItem.ItemSlogan;
        uiConfig.logBtnText = "本机号码一键登录";
        uiConfig.logBtnTextColor = Colors.white.value;
        uiConfig.logBtnTextSize = 16;
        uiConfig.loginBtnNormalImage = "login_btn_normal"; //图片必须存在
        uiConfig.loginBtnPressedImage = "login_btn_press"; //图片必须存在
        uiConfig.loginBtnUnableImage = "login_btn_unable"; //图片必须存在

        uiConfig.privacyHintToast =
            true; //only android 设置隐私条款不选中时点击登录按钮默认显示toast。

        uiConfig.privacyState = true; //设置默认勾选
        uiConfig.privacyCheckboxSize = 20;
        uiConfig.checkedImgPath = "check_image"; //图片必须存在
        uiConfig.uncheckedImgPath = "uncheck_image"; //图片必须存在
        uiConfig.privacyCheckboxInCenter = true;
        //uiConfig.privacyCheckboxHidden = false;

        //uiConfig.privacyOffsetX = isiOS ? (20 + uiConfig.privacyCheckboxSze) : null;
        uiConfig.privacyOffsetY = -50; // 距离底部距离
        uiConfig.privacyVerticalLayoutItem = JVIOSLayoutItem.ItemSuper;
        uiConfig.clauseName = "协议1";
        uiConfig.clauseUrl = "http://www.baidu.com";
        uiConfig.clauseBaseColor = Colors.black.value;
        uiConfig.clauseNameTwo = "协议二";
        uiConfig.clauseUrlTwo = "http://www.hao123.com";
        uiConfig.clauseColor = Colors.red.value;
        uiConfig.privacyText = ["1极", "2光", "3认", "4证"];
        uiConfig.privacyTextSize = 13;
        //uiConfig.privacyWithBookTitleMark = true;
        //uiConfig.privacyTextCenterGravity = false;
        uiConfig.authStatusBarStyle = JVIOSBarStyle.StatusBarStyleDarkContent;
        uiConfig.privacyStatusBarStyle = JVIOSBarStyle.StatusBarStyleDefault;
        uiConfig.modelTransitionStyle =
            JVIOSUIModalTransitionStyle.CrossDissolve;

        uiConfig.statusBarColorWithNav = true;
        uiConfig.virtualButtonTransparent = true;

        uiConfig.privacyStatusBarColorWithNav = true;
        uiConfig.privacyVirtualButtonTransparent = true;

        uiConfig.needStartAnim = true;
        uiConfig.needCloseAnim = true;
        uiConfig.enterAnim = "activity_slide_enter_bottom";
        uiConfig.exitAnim = "activity_slide_exit_bottom";

        uiConfig.privacyNavColor = Colors.grey.value;
        uiConfig.privacyNavTitleTextColor = Colors.blue.value;
        uiConfig.privacyNavTitleTextSize = 16;
        // uiConfig.privacyCheckboxHidden = true;
        // uiConfig.privacyStatusBarHidden = true;

        uiConfig.privacyNavTitleTitle = "ios lai le"; //only ios
        uiConfig.privacyNavTitleTitle1 = "协议11 web页标题";
        uiConfig.privacyNavTitleTitle2 = "协议22 web页标题";
        uiConfig.privacyNavReturnBtnImage = "return_bg"; //图片必须存在;

        //弹框模式
        JVPopViewConfig popViewConfig = JVPopViewConfig();
        popViewConfig.width = (screenWidth - 100.0).toInt();
        popViewConfig.height = 240;
        popViewConfig.popViewCornerRadius = 20.0;
        uiConfig.popViewConfig = popViewConfig;

        /// 添加自定义的 控件 到授权界面
        List<JVCustomWidget> widgetList = [];

        /// 步骤 1：调用接口设置 UI
        jverify.setCustomAuthorizationView(true, uiConfig,
            landscapeConfig: uiConfig, widgets: widgetList);

        /// 步骤 2：调用一键登录接口

        /// 方式一：使用同步接口 （如果想使用异步接口，则忽略此步骤，看方式二）
        /// 先，添加 loginAuthSyncApi 接口回调的监听
        jverify.addLoginAuthCallBackListener((event) async {
          print("监听获取返回数据：[${event.code}] message = ${event.message}");
          print(
              "通过添加监听，获取到 loginAuthSyncApi 接口返回数据，code=${event.code},message = ${event.message},operator = ${event.operator}");
          String loginToken = event.message!;
          Response<TokenDto> response = await CiyuApi()
              .getTokenControllerApi()
              .exchangeToken(loginToken: loginToken);
          if (response.statusCode == HttpStatus.ok) {
            Navigator.of(context)
                .pushAndRemoveUntil(RecommendPage.route(), (route) => false);
          }

          setState(() {
            _hideLoading();
          });
        });

        /// 再，执行同步的一键登录接口
        jverify.loginAuthSyncApi(autoDismiss: true);
      } else {
        setState(() {
          _hideLoading();
        });
        print("[2016],msg = 当前网络环境不支持认证");
        /*
        final String text_widgetId = "jv_add_custom_text";// 标识控件 id
        JVCustomWidget textWidget = JVCustomWidget(text_widgetId, JVCustomWidgetType.textView);
        textWidget.title = "新加 text view 控件";
        textWidget.left = 20;
        textWidget.top = 360 ;
        textWidget.width = 200;
        textWidget.height  = 40;
        textWidget.backgroundColor = Colors.yellow.value;
        textWidget.isShowUnderline = true;
        textWidget.textAlignment = JVTextAlignmentType.center;
        textWidget.isClickEnable = true;

        // 添加点击事件监听
        jverify.addClikWidgetEventListener(text_widgetId, (eventId) {
          print("receive listener - click widget event :$eventId");
          if (text_widgetId == eventId) {
            print("receive listener - 点击【新加 text】");
          }
        });
        widgetList.add(textWidget);

        final String btn_widgetId = "jv_add_custom_button";// 标识控件 id
        JVCustomWidget buttonWidget = JVCustomWidget(btn_widgetId, JVCustomWidgetType.button);
        buttonWidget.title = "新加 button 控件";
        buttonWidget.left = 100;
        buttonWidget.top = 400;
        buttonWidget.width = 150;
        buttonWidget.height  = 40;
        buttonWidget.isShowUnderline = true;
        buttonWidget.backgroundColor = Colors.brown.value;
        //buttonWidget.btnNormalImageName = "";
        //buttonWidget.btnPressedImageName = "";
        //buttonWidget.textAlignment = JVTextAlignmentType.left;

        // 添加点击事件监听
        jverify.addClikWidgetEventListener(btn_widgetId, (eventId) {
          print("receive listener - click widget event :$eventId");
          if (btn_widgetId == eventId) {
            print("receive listener - 点击【新加 button】");
          }
        });
        widgetList.add(buttonWidget);
        */

        /* 弹框模式
        JVPopViewConfig popViewConfig = JVPopViewConfig();
        popViewConfig.width = (screenWidth - 100.0).toInt();
        popViewConfig.height = (screenHeight - 150.0).toInt();

        uiConfig.popViewConfig = popViewConfig;
        */

        /*

        /// 方式二：使用异步接口 （如果想使用异步接口，则忽略此步骤，看方式二）

        /// 先，执行异步的一键登录接口
        jverify.loginAuth(true).then((map) {

          /// 再，在回调里获取 loginAuth 接口异步返回数据（如果是通过添加 JVLoginAuthCallBackListener 监听来获取返回数据，则忽略此步骤）
          int code = map[f_code_key];
          String content = map[f_msg_key];
          String operator = map[f_opr_key];
          setState(() {
           _hideLoading();
            _result = "接口异步返回数据：[$code] message = $content";
          });
          print("通过接口异步返回，获取到 loginAuth 接口返回数据，code=$code,message = $content,operator = $operator");
        });

        */

      }
    });
  }
}
