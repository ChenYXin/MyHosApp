import { getHomeData, return_home_type } from '../api/api'

@Component
export struct home {
  @State homeData: return_home_type | null = null

  aboutToAppear(): void {
    getHomeData().then(data => {
      this.homeData = data
    })
  }

  build() {
    Text('首页')
  }
}

export default home