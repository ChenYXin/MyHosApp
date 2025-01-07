import request from './request'

export interface hospitals {
  avatar_url: string
  id: number
  intro: string
  label: string
  name: string
  rank: string
}

export interface nav2s {
  pic_image_url: string
}

export interface slides {
  pic_image_url: string
}

export interface return_home_type {
  hospitals: Array<hospitals>
  nav2s: Array<nav2s>
  slides: Array<slides>
}

export function getHomeData() {

  return request<return_home_type>({
    url: 'Index/index',
    method: 'get'
  })
}