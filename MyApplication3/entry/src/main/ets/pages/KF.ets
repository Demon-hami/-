import { Backend } from '@hw-agconnect/hmcore/src/main/ets/server/Backend'

@Entry
@Component
struct KF {
  @State message: string = 'Hello World'
  @State services: Array<string> = ['问题1', '问题2', '问题3', '问题4', '问题5', '问题6', '问题7', '问题8', '问题9', '问题10']
  build() {
    Column() {
      Column() {
        Text("客服")
          .width("200vp")
          .height("60vp")
          .offset({ x: "0vp", y: "-181.09vp" })
          .fontColor(Color.Black)
          .textAlign(TextAlign.Center)
          .fontSize("25fp")
        Row() {
          Image($r('app.media.kefu'))
            .width("20%")
            .height("100%")
          Text("：您好，有什么问题吗？")
            .width("80%")
            .height("100%")
            .fontColor(Color.Black)
        }        
        .width("100%")
        .height("58.22vp")
        .offset({ x: "0vp", y: "-108.88vp" })
        Row() {
          Image($r('app.media.touxiang'))
            .width("20%")
            .height("100%")
            .offset({ x: "288vp", y: "0vp" })
          Text("没问题：")
            .width("80%")
            .height("100%")
            .offset({ x: "-72vp", y: "0vp" })
            .fontColor(Color.Black)
            .textAlign(TextAlign.End)
        }        
        .width("100%")
        .height("58.22vp")
        .offset({ x: "0vp", y: "-65.51vp" })
        Column(){
          Grid() {
            ForEach(this.services, (service: string, index) => {
              GridItem() {
                Text(service)
              }
              .width('25%')
              .height("50%")
            }, (service:string):string => service)
          }
          .rowsTemplate('1fr 1fr') // 只设置rowsTemplate属性，当内容超出Grid区域时，可水平滚动。
          .rowsGap(15)
        }
          .width("100%")
          .height("150vp")
          .offset({ x: "0vp", y: "171.08vp" })
        Row() {
          TextInput()
            .width("60%")
            .height("100%")
          Button("发送")
            .width("20%")
            .height("80vp")
            .fontColor(Color.White)
          Image($r('app.media.tianjia'))
            .width("20%")
            .height("100%")
        }        
        .width("360vp")
        .height("82.92vp")
        .offset({ x: "0vp", y: "172.34vp" })
      }      
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }    
    .width("100%")
    .height("100%")
  }
}
