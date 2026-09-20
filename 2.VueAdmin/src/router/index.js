	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import yezhu from '@/views/yezhu/list'
	import address from '@/views/address/list'
	import shangpinxinxi from '@/views/shangpinxinxi/list'
	import weixiuxinxi from '@/views/weixiuxinxi/list'
	import storeup from '@/views/storeup/list'
	import shangjia from '@/views/shangjia/list'
	import tousuxinxi from '@/views/tousuxinxi/list'
	import wuyerenyuan from '@/views/wuyerenyuan/list'
	import jiankongshebei from '@/views/jiankongshebei/list'
	import fangwuxinxi from '@/views/fangwuxinxi/list'
	import jiaofeixinxi from '@/views/jiaofeixinxi/list'
	import cheliangchuchang from '@/views/cheliangchuchang/list'
	import weixiushenqing from '@/views/weixiushenqing/list'
	import shangpinfenlei from '@/views/shangpinfenlei/list'
	import discussshangpinxinxi from '@/views/discussshangpinxinxi/list'
	import jiaofeileixing from '@/views/jiaofeileixing/list'
	import orders from '@/views/orders/list'
	import yikatong from '@/views/yikatong/list'
	import xiaoquxinxi from '@/views/xiaoquxinxi/list'
	import config from '@/views/config/list'
	import tingchechang from '@/views/tingchechang/list'
	import duijiangxinxi from '@/views/duijiangxinxi/list'
	import cheliangruchang from '@/views/cheliangruchang/list'
	import shangjiaRegister from '@/views/shangjia/register'
	import shangjiaCenter from '@/views/shangjia/center'
	import wuyerenyuanRegister from '@/views/wuyerenyuan/register'
	import wuyerenyuanCenter from '@/views/wuyerenyuan/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/shangjiaCenter',
			name: '商家个人中心',
			component: shangjiaCenter
		}
		,{
			path: '/wuyerenyuanCenter',
			name: '物业人员个人中心',
			component: wuyerenyuanCenter
		}
		,{
			path: '/news',
			name: '资讯信息',
			component: news
		}
		,{
			path: '/yezhu',
			name: '业主',
			component: yezhu
		}
		,{
			path: '/address',
			name: '地址',
			component: address
		}
		,{
			path: '/shangpinxinxi',
			name: '商品信息',
			component: shangpinxinxi
		}
		,{
			path: '/weixiuxinxi',
			name: '维修信息',
			component: weixiuxinxi
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/shangjia',
			name: '商家',
			component: shangjia
		}
		,{
			path: '/tousuxinxi',
			name: '投诉信息',
			component: tousuxinxi
		}
		,{
			path: '/wuyerenyuan',
			name: '物业人员',
			component: wuyerenyuan
		}
		,{
			path: '/jiankongshebei',
			name: '监控设备',
			component: jiankongshebei
		}
		,{
			path: '/fangwuxinxi',
			name: '房屋信息',
			component: fangwuxinxi
		}
		,{
			path: '/jiaofeixinxi',
			name: '缴费信息',
			component: jiaofeixinxi
		}
		,{
			path: '/cheliangchuchang',
			name: '车辆出场',
			component: cheliangchuchang
		}
		,{
			path: '/weixiushenqing',
			name: '维修申请',
			component: weixiushenqing
		}
		,{
			path: '/shangpinfenlei',
			name: '商品分类',
			component: shangpinfenlei
		}
		,{
			path: '/discussshangpinxinxi',
			name: '商品信息评论',
			component: discussshangpinxinxi
		}
		,{
			path: '/jiaofeileixing',
			name: '缴费类型',
			component: jiaofeileixing
		}
		,{
			path: '/orders',
			name: '订单管理',
			component: orders
		}
		,{
			path: '/yikatong',
			name: '一卡通',
			component: yikatong
		}
		,{
			path: '/xiaoquxinxi',
			name: '小区信息',
			component: xiaoquxinxi
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/tingchechang',
			name: '停车场',
			component: tingchechang
		}
		,{
			path: '/duijiangxinxi',
			name: '对讲信息',
			component: duijiangxinxi
		}
		,{
			path: '/cheliangruchang',
			name: '车辆入场',
			component: cheliangruchang
		}
		]
	},
	{
		path: '/shangjiaRegister',
		name: '商家注册',
		component: shangjiaRegister
	},
	{
		path: '/wuyerenyuanRegister',
		name: '物业人员注册',
		component: wuyerenyuanRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
