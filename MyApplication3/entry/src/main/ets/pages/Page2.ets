import prompt from '@ohos.prompt'
import router from '@ohos.router'

@Entry
@Component
struct Page2 {
  @State message: string = 'Hello World'
  @State user:string =''
  @State password:string =''
  build() {
    Column() {
      Column() {
        Text("登录")
          .width("200vp")
          .height("60vp")
          .offset({ x: "0vp", y: "128.58vp" })
          .textAlign(TextAlign.Center)
          .fontColor(Color.Black)
          .fontSize("48fp")
        Row() {
          Text("手机验证码登录")
            .width("144.21vp")
            .height("60vp")
            .fontColor(Color.Black)
            .fontSize("12fp")
            .onClick(()=> {
              router.replaceUrl({
                url: 'pages/Index'
              });
            })
          Text("忘记密码")
            .width("144.21vp")
            .height("60vp")
            .offset({ x: "71.46vp", y: "5.96vp" })
            .fontColor(Color.Black)
            .textAlign(TextAlign.End)
            .fontSize("12fp")
        }
        .width("360vp")
        .height("72.08vp")
        .offset({ x: "0vp", y: "343.36vp" })
        Button("登录")
          .width("180vp")
          .height("80vp")
          .offset({ x: "0vp", y: "365.11vp" })
          .fontColor(Color.White)
          .onClick(()=> {
            if (this.user == '' || this.password == '') {
              prompt.showToast({
                message: '用户名和密码不能为空!',
                duration: 4000
              });
            } else {
              if (this.user != 'admin' || this.password != 'admin') {
                prompt.showToast({
                  message: '用户名密码输入错误!',
                  duration: 4000
                });
              } else {
                router.replaceUrl({
                  url: 'pages/Home'
                });
              }
            }
          })
        Button("退出")
          .width("180vp")
          .height("80vp")
          .offset({ x: "0vp", y: "391.69vp" })
          .fontColor(Color.White)

          .onClick(()=> {
            router.replaceUrl({
              url: 'pages/Shopping'
            })
          })
      }
      .width("100%")
      .height("100%")
      .offset({ x: "0vp", y: "0vp" })
      .backgroundImage($r('app.media.login'), ImageRepeat.XY)
      TextInput({ placeholder: "输入密码：" })
        .width("100%")
        .height("60vp")
        .offset({ x: "0vp", y: "-450vp" })
        .type(InputType.Password)
        .onChange((value:string) => {
          this.password = value;
        })
      TextInput({ placeholder: "输入用户名：" })
        .width("100%")
        .height("60vp")
        .offset({ x: "0vp", y: "-577.13vp" })
        .onChange((value: string) => {
          this.user = value;
        })
      Row() {
        Image("")
          .width("33%")
          .height("63.63vp")
          .offset({ x: "14.37vp", y: "0.32vp" })
          .backgroundImage($r('app.media.huawei'))
        Image("")
          .width("33%")
          .height("63.63vp")
          .offset({ x: "31.05vp", y: "0.32vp" })
          .backgroundImage($r('app.media.weixin'))
        Image("")
          .width("33%")
          .height("63.63vp")
          .offset({ x: "43.26vp", y: "0.32vp" })
          .backgroundImage($r('app.media.QQ'))
      }
      .width("360vp")
      .height("64.33vp")
      .offset({ x: "0vp", y: "-184.33vp" })
    }
    .width("100%")
    .height("100%")
  }
}
