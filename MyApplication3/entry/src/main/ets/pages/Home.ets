import web_webview from '@ohos.web.webview';
import router from '@ohos.router';

@Entry
@Component
struct Home {
  @State message: string = 'Hello World'
  @State n:string = '1'

  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample(),
  })

  webviewController: web_webview.WebviewController = new web_webview.WebviewController();


  build() {
    Column() {
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column() {
              Text("首页")
                .width("200vp")
                .height("60vp")
                .offset({ x: "22.83vp", y: "0vp" })
                .fontColor(Color.Black)
                .fontSize("25fp")
              Search({})
                .width("100%")
                .height("40vp")
              Swiper() {
                Image($r('app.media.selm2'))
                  .width("100%")
                  .height("100%")
                Image($r('app.media.selm3'))
                  .width("100%")
                  .height("100%")
                Image($r('app.media.selm1'))
                  .width("100%")
                  .height("100%")
              }
              .width("100%")
              .height("200vp")
              .offset({ x: "0vp", y: "0vp" })
              .autoPlay(true)
              Row() {
                Text("排行榜")
                  .width("150vp")
                  .height("60%")
                  .fontColor(Color.Black)
                  .fontSize("14fp")
              }
              .width("100%")
              .height("40vp")
              Row() {
                Text("序号")
                  .width("50vp")
                  .height("40vp")
                  .offset({ x: "8.91vp", y: "0vp" })
                  .fontColor(Color.Black)
                  .fontSize("14fp")
                Text("得票数")
                  .width("50vp")
                  .height("40vp")
                  .offset({ x: "237.76vp", y: "0vp" })
                  .fontColor(Color.Black)
                  .fontSize("14fp")
                Text("电影名称")
                  .width("70vp")
                  .height("40vp")
                  .offset({ x: "45vp", y: "0vp" })
                  .fontColor(Color.Black)
                  .fontSize("14fp")
              }
              .width("100%")
              .height("40vp")
              List() {
                ListItem() {
                  Row() {
                    Text("1")
                      .width("20%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("功夫")
                      .width("60%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("8000")
                      .width("20%")
                      .height("100%")
                      .align(Alignment.Center)
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                  }
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                  .justifyContent(FlexAlign.Start)
                }
                .width("100%")
                .height("11%")
                ListItem() {
                  Row() {
                    Text("2")
                      .width("20%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("蜘蛛侠：英雄远征")
                      .width("60%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("6800")
                      .width("20%")
                      .height("100%")
                      .align(Alignment.Center)
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                  }
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                  .justifyContent(FlexAlign.Start)
                }
                .width("100%")
                .height("11%")
                ListItem() {
                  Row() {
                    Text("3")
                      .width("20%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("废材特工")
                      .width("60%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("6600")
                      .width("20%")
                      .height("100%")
                      .align(Alignment.Center)
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                  }
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                  .justifyContent(FlexAlign.Start)
                }
                .width("100%")
                .height("11%")
                ListItem() {
                  Row() {
                    Text("4")
                      .width("20%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("小丑")
                      .width("60%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("6000")
                      .width("20%")
                      .height("100%")
                      .align(Alignment.Center)
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                  }
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                  .justifyContent(FlexAlign.Start)
                }
                .width("100%")
                .height("11%")
                ListItem() {
                  Row() {
                    Text("5")
                      .width("20%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("哪吒之魔童降世")
                      .width("60%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("5800")
                      .width("20%")
                      .height("100%")
                      .align(Alignment.Center)
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                  }
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                  .justifyContent(FlexAlign.Start)
                }
                .width("100%")
                .height("11%")
                ListItem() {
                  Row() {
                    Text("6")
                      .width("20%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("死侍3")
                      .width("60%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("5600")
                      .width("20%")
                      .height("100%")
                      .align(Alignment.Center)
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                  }
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                  .justifyContent(FlexAlign.Start)
                }
                .width("100%")
                .height("11%")
                ListItem() {
                  Row() {
                    Text("7")
                      .width("20%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("摔跤吧！爸爸")
                      .width("60%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("5200")
                      .width("20%")
                      .height("100%")
                      .align(Alignment.Center)
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                  }
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                  .justifyContent(FlexAlign.Start)
                }
                .width("100%")
                .height("11%")
                ListItem() {
                  Row() {
                    Text("8")
                      .width("20%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("误杀")
                      .width("60%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("5100")
                      .width("20%")
                      .height("100%")
                      .align(Alignment.Center)
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                  }
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                  .justifyContent(FlexAlign.Start)
                }
                .width("100%")
                .height("11%")
                ListItem() {
                  Row() {
                    Text("9")
                      .width("20%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("神偷奶爸2")
                      .width("60%")
                      .height("100%")
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                    Text("5000")
                      .width("20%")
                      .height("100%")
                      .align(Alignment.Center)
                      .fontColor(Color.Black)
                      .textAlign(TextAlign.Center)
                  }
                  .width("100%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                  .justifyContent(FlexAlign.Start)
                }
                .width("100%")
                .height("11%")
              }





              .width("100%")
              .height("47%")
            }
            .width("100%")
            .height("93%")
            .padding({ left: "0vp" })
            .alignItems(HorizontalAlign.Start)
            .justifyContent(FlexAlign.Start)
          }
          .tabBar({ icon: $r('app.media.home'), text: "首页" })
          TabContent(){
            Web({ src: 'https://www.taobao.com/', controller: this.webviewController})
          }
            .tabBar({ icon: $r('app.media.buy'), text: "卖票" })
          TabContent(){
            Column() {
              Text("购物车")
                .width("200vp")
                .height("60vp")
                .fontColor(Color.Black)
                .textAlign(TextAlign.Center)
                .fontSize("25fp")
              Row() {
                Image($r('app.media.GF'))
                  .width("50%")
                  .height("100%")
                Text("功夫")
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-0.33vp", y: "-53.32vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Center)
                  .fontSize("20fp")
                Checkbox()
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-180vp", y: "49.58vp" })
                  .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                Text("30￥")
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-360vp", y: "-0.26vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Center)
                  .fontSize("20fp")
              }
              .width("100%")
              .height("20%")
              Row() {
                Image($r('app.media.selm1'))
                  .width("50%")
                  .height("100%")
                Text("蜘蛛侠：英雄远征")
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-0.33vp", y: "-53.32vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Center)
                  .fontSize("20fp")
                Checkbox()
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-180vp", y: "49.58vp" })
                  .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                Text("30￥")
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-360vp", y: "-0.26vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Center)
                  .fontSize("20fp")
              }
              .width("100%")
              .height("20%")
              Row() {
                Image($r('app.media.selm3'))
                  .width("50%")
                  .height("100%")
                Text("废材特工")
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-0.33vp", y: "-53.32vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Center)
                  .fontSize("20fp")
                Checkbox()
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-180vp", y: "49.58vp" })
                  .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                Text("30￥")
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-360vp", y: "-0.26vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Center)
                  .fontSize("20fp")
              }
              .width("100%")
              .height("20%")
              Row() {
                Image($r('app.media.F2'))
                  .width("50%")
                  .height("100%")
                Text("小丑")
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-0.33vp", y: "-53.32vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Center)
                  .fontSize("20fp")
                Checkbox()
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-180vp", y: "49.58vp" })
                  .margin({ top: "0vp", bottom: "0vp", left: "0vp", right: "0vp" })
                Text("30￥")
                  .width("50%")
                  .height("33%")
                  .offset({ x: "-360vp", y: "-0.26vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Center)
                  .fontSize("20fp")
              }
              .width("100%")
              .height("20%")
              Row() {
                Button("首页")
                  .width("15%")
                  .height("100%")
                  .fontColor(Color.White)
                  .fontSize("9fp")
                  .onClick(() => {
                    this.n = '1';
                  })
                Button("《")
                  .width("15%")
                  .height("100%")
                  .offset({ x: "0.72vp", y: "0vp" })
                  .fontColor(Color.White)
                  .fontSize("9fp")
                Button("》")
                  .width("15%")
                  .height("100%")
                  .offset({ x: "55.79vp", y: "0vp" })
                  .fontColor(Color.White)
                  .fontSize("9fp")
                Button("尾页")
                  .width("15%")
                  .height("100%")
                  .offset({ x: "57.45vp", y: "0vp" })
                  .fontColor(Color.White)
                  .fontSize("9fp")
                  .onClick(() => {
                    this.n = '99';
                  })
                Button("支付")
                  .width("25%")
                  .height("100%")
                  .offset({ x: "58.2vp", y: "0vp" })
                  .fontColor(Color.White)
                Text('1')
                  .width("15%")
                  .height("100%")
                  .offset({ x: "-210.44vp", y: "0vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Center)
                  .fontSize("21fp")
              }
              .width("100%")
              .height("5%")
            }
          }
            .tabBar({ icon: $r('app.media.sell'), text: "购物车" })
          TabContent(){
            Column() {
              Row() {
                Image($r("app.media.WZ"))
                  .width("15%")
                  .height("100%")
                  .offset({ x: "0vp", y: "0vp" })
                Text("上海")
                  .width("10%")
                  .height("100%")
                  .offset({ x: "4.53vp", y: "0vp" })
                  .fontColor(Color.Black)
                  .fontSize("16fp")
                Text("个人中心")
                  .width("28%")
                  .height("100%")
                  .offset({ x: "39.33vp", y: "0vp" })
                  .fontColor(Color.Black)
                  .textAlign(TextAlign.Start)
                  .fontSize("25fp")
                Image($r("app.media.SZ"))
                  .width("25%")
                  .height("100%")
                  .offset({ x: "89.33vp", y: "0vp" })
                  .onClick(() => {
                    this.dialogController.open()
                  })
              }
              .width("360vp")
              .height("74.03vp")
              .offset({ x: "0vp", y: "-55.27vp" })
              Row() {
                Image($r("app.media.YHM"))
                  .width("30%")
                  .height("100%")
                Text("F21010618栗亨")
                  .width("70%")
                  .height("100%")
                  .fontColor(Color.Black)
                  .fontSize("20fp")
              }
              .width("100%")
              .height("10.97%")
              .offset({ x: "0vp", y: "-52.39vp" })
              Row() {
                Image($r("app.media.sjh"))
                  .width("30%")
                  .height("100%")
                Text("17778046231")
                  .width("70%")
                  .height("100%")
                  .fontColor(Color.Black)
                  .fontSize("20fp")
              }
              .width("100%")
              .height("10.97%")
              .offset({ x: "0vp", y: "234.42vp" })
              Row() {
                Image($r("app.media.SFZ"))
                  .width("30%")
                  .height("100%")
                Text("admin")
                  .width("70%")
                  .height("100%")
                  .fontColor(Color.Black)
                  .fontSize("20fp")
              }
              .width("100%")
              .height("10.97%")
              .offset({ x: "0vp", y: "-134.78vp" })
              Row() {
                Image($r("app.media.pswd"))
                  .width("30%")
                  .height("100%")
                Text("*****")
                  .width("70%")
                  .height("100%")
                  .fontColor(Color.Black)
                  .fontSize("20fp")
                  .fontStyle(FontStyle.Normal)
              }
              .width("100%")
              .height("10.97%")
              .offset({ x: "0vp", y: "-125.4vp" })
              Row() {
                Image($r("app.media.emil"))
                  .width("30%")
                  .height("100%")
                Text("1473830294@qq.com")
                  .width("70%")
                  .height("100%")
                  .fontColor(Color.Black)
                  .fontSize("20fp")
                  .fontStyle(FontStyle.Normal)
              }
              .width("100%")
              .height("10.97%")
              .offset({ x: "0vp", y: "-116.15vp" })
              Button("客服")
                .width("355.31vp")
                .height("80vp")
                .offset({ x: "2.32vp", y: "20vp" })
                .fontColor(Color.White)
                .onClick(()=> {
                  router.replaceUrl({
                    url: 'pages/KF'
                  })
                })
              Button("我的订单")
                .width("355.31vp")
                .height("80vp")
                .offset({ x: "2.32vp", y: "30vp" })
                .fontColor(Color.White)
            }
            .width("100%")
            .height("100%")
            .justifyContent(FlexAlign.Center)
          }
            .tabBar({ icon: $r('app.media.my'), text: "个人中心" })
        }
        .width("100%")
        .height("100%")
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }
}
@CustomDialog
struct CustomDialogExample {
  controller: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({}),
  })

  build() {
    Column() {
      Button("修改密码")
        .width("180vp")
        .height("80vp")
        .fontColor(Color.White)
    }
  }
}