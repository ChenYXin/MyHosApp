import request from './request'

export interface return_login_type {
  token: string,
  userInfo: userInfo
}

export interface userInfo {
  avatar: string,
  name: string
}

interface login_type {
  passWord: string,
  userName: string
}

export function login_submit(data: login_type) {
  return request<return_login_type>({
    url: '/login',
    method: 'post',
    data
  })
}