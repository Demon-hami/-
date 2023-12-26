import Router from '@system.router'
import router from '@ohos.router'

@Entry
@Component
struct welcome {
  @State message: string = 'Hello World'

  aboutToAppear(){
    setTimeout(function(){
      router.replaceUrl({
        url:'pages/Page2'
      })
    },10000)
  }
  build() {
    Column() {
      Column() {
        Swiper() {
          Stack({ alignContent: Alignment.Top }) {
            Image($r('app.media.F1'))
              .width("100%")
              .height("100%")
            Text("电影城")
              .fontSize(30)
              .padding(50)
          }
          Stack({ alignContent: Alignment.Top }) {
            Image($r('app.media.F2'))
              .width("100%")
              .height("100%")
            Text("电影城")
              .fontSize(30)
              .padding(50)

          }
          Stack({ alignContent: Alignment.Top }) {
            Image($r('app.media.F3'))
              .width("100%")
              .height("100%")
            Text("电影城")
              .fontSize(30)
              .padding(50)

          }
        }
        .width("100%")
        .height("100%")
        .autoPlay(true)
        .vertical(false)
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }
}