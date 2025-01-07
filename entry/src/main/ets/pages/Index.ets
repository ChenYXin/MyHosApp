import home from './home'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        home()
      }
      .tabBar('首页')

      TabContent() {

      }
      .tabBar('订单')

      TabContent() {
      }
      .tabBar('我的')
    }
  }
}