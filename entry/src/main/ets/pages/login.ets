import { login_submit } from '../api/api'

@Entry
@Component
struct Login {
  onPageShow(): void {
    login_submit({
      userName: "13689587452",
      passWord: "123456"
    }).then((data) => {
      console.log('输入obj：' + JSON.stringify(data));
    })
  }

  build() {

  }
}