import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yezhuList from '@/views/pages/yezhu/list'
import yezhuDetail from '@/views/pages/yezhu/formModel'
import yezhuAdd from '@/views/pages/yezhu/formAdd'
import yezhuRegister from '@/views/pages/yezhu/register'
import yezhuCenter from '@/views/pages/yezhu/center'
import shangjiaList from '@/views/pages/shangjia/list'
import shangjiaDetail from '@/views/pages/shangjia/formModel'
import shangjiaAdd from '@/views/pages/shangjia/formAdd'
import wuyerenyuanList from '@/views/pages/wuyerenyuan/list'
import wuyerenyuanDetail from '@/views/pages/wuyerenyuan/formModel'
import wuyerenyuanAdd from '@/views/pages/wuyerenyuan/formAdd'
import newsList from '@/views/pages/news/list'
import shangpinfenleiList from '@/views/pages/shangpinfenlei/list'
import shangpinfenleiDetail from '@/views/pages/shangpinfenlei/formModel'
import shangpinfenleiAdd from '@/views/pages/shangpinfenlei/formAdd'
import shangpinxinxiList from '@/views/pages/shangpinxinxi/list'
import shangpinxinxiDetail from '@/views/pages/shangpinxinxi/formModel'
import shangpinxinxiAdd from '@/views/pages/shangpinxinxi/formAdd'
import storeupList from '@/views/pages/storeup/list'
import cartList from '@/views/pages/shop_order/cart'
import addressList from '@/views/pages/shop_address/list'
import weixiushenqingList from '@/views/pages/weixiushenqing/list'
import weixiushenqingDetail from '@/views/pages/weixiushenqing/formModel'
import weixiushenqingAdd from '@/views/pages/weixiushenqing/formAdd'
import weixiuxinxiList from '@/views/pages/weixiuxinxi/list'
import weixiuxinxiDetail from '@/views/pages/weixiuxinxi/formModel'
import weixiuxinxiAdd from '@/views/pages/weixiuxinxi/formAdd'
import xiaoquxinxiList from '@/views/pages/xiaoquxinxi/list'
import xiaoquxinxiDetail from '@/views/pages/xiaoquxinxi/formModel'
import xiaoquxinxiAdd from '@/views/pages/xiaoquxinxi/formAdd'
import fangwuxinxiList from '@/views/pages/fangwuxinxi/list'
import fangwuxinxiDetail from '@/views/pages/fangwuxinxi/formModel'
import fangwuxinxiAdd from '@/views/pages/fangwuxinxi/formAdd'
import jiaofeileixingList from '@/views/pages/jiaofeileixing/list'
import jiaofeileixingDetail from '@/views/pages/jiaofeileixing/formModel'
import jiaofeileixingAdd from '@/views/pages/jiaofeileixing/formAdd'
import jiaofeixinxiList from '@/views/pages/jiaofeixinxi/list'
import jiaofeixinxiDetail from '@/views/pages/jiaofeixinxi/formModel'
import jiaofeixinxiAdd from '@/views/pages/jiaofeixinxi/formAdd'
import tousuxinxiList from '@/views/pages/tousuxinxi/list'
import tousuxinxiDetail from '@/views/pages/tousuxinxi/formModel'
import tousuxinxiAdd from '@/views/pages/tousuxinxi/formAdd'
import tingchechangList from '@/views/pages/tingchechang/list'
import tingchechangDetail from '@/views/pages/tingchechang/formModel'
import tingchechangAdd from '@/views/pages/tingchechang/formAdd'
import cheliangchuchangList from '@/views/pages/cheliangchuchang/list'
import cheliangchuchangDetail from '@/views/pages/cheliangchuchang/formModel'
import cheliangchuchangAdd from '@/views/pages/cheliangchuchang/formAdd'
import cheliangruchangList from '@/views/pages/cheliangruchang/list'
import cheliangruchangDetail from '@/views/pages/cheliangruchang/formModel'
import cheliangruchangAdd from '@/views/pages/cheliangruchang/formAdd'
import yikatongList from '@/views/pages/yikatong/list'
import yikatongDetail from '@/views/pages/yikatong/formModel'
import yikatongAdd from '@/views/pages/yikatong/formAdd'
import jiankongshebeiList from '@/views/pages/jiankongshebei/list'
import jiankongshebeiDetail from '@/views/pages/jiankongshebei/formModel'
import jiankongshebeiAdd from '@/views/pages/jiankongshebei/formAdd'
import duijiangxinxiList from '@/views/pages/duijiangxinxi/list'
import duijiangxinxiDetail from '@/views/pages/duijiangxinxi/formModel'
import duijiangxinxiAdd from '@/views/pages/duijiangxinxi/formAdd'
import order_confirm from '@/views/pages/shop_order/confirm'
import ordersList from '@/views/pages/shop_order/list'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yezhuList',
			component: yezhuList
		}, {
			path: 'yezhuDetail',
			component: yezhuDetail
		}, {
			path: 'yezhuAdd',
			component: yezhuAdd
		}
		, {
			path: 'yezhuCenter',
			component: yezhuCenter
		}
		, {
			path: 'shangjiaList',
			component: shangjiaList
		}, {
			path: 'shangjiaDetail',
			component: shangjiaDetail
		}, {
			path: 'shangjiaAdd',
			component: shangjiaAdd
		}
		, {
			path: 'wuyerenyuanList',
			component: wuyerenyuanList
		}, {
			path: 'wuyerenyuanDetail',
			component: wuyerenyuanDetail
		}, {
			path: 'wuyerenyuanAdd',
			component: wuyerenyuanAdd
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'shangpinfenleiList',
			component: shangpinfenleiList
		}, {
			path: 'shangpinfenleiDetail',
			component: shangpinfenleiDetail
		}, {
			path: 'shangpinfenleiAdd',
			component: shangpinfenleiAdd
		}
		, {
			path: 'shangpinxinxiList',
			component: shangpinxinxiList
		}, {
			path: 'shangpinxinxiDetail',
			component: shangpinxinxiDetail
		}, {
			path: 'shangpinxinxiAdd',
			component: shangpinxinxiAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'cartList',
			component: cartList
		}
		, {
			path: 'addressList',
			component: addressList
		}
		, {
			path: 'weixiushenqingList',
			component: weixiushenqingList
		}, {
			path: 'weixiushenqingDetail',
			component: weixiushenqingDetail
		}, {
			path: 'weixiushenqingAdd',
			component: weixiushenqingAdd
		}
		, {
			path: 'weixiuxinxiList',
			component: weixiuxinxiList
		}, {
			path: 'weixiuxinxiDetail',
			component: weixiuxinxiDetail
		}, {
			path: 'weixiuxinxiAdd',
			component: weixiuxinxiAdd
		}
		, {
			path: 'xiaoquxinxiList',
			component: xiaoquxinxiList
		}, {
			path: 'xiaoquxinxiDetail',
			component: xiaoquxinxiDetail
		}, {
			path: 'xiaoquxinxiAdd',
			component: xiaoquxinxiAdd
		}
		, {
			path: 'fangwuxinxiList',
			component: fangwuxinxiList
		}, {
			path: 'fangwuxinxiDetail',
			component: fangwuxinxiDetail
		}, {
			path: 'fangwuxinxiAdd',
			component: fangwuxinxiAdd
		}
		, {
			path: 'jiaofeileixingList',
			component: jiaofeileixingList
		}, {
			path: 'jiaofeileixingDetail',
			component: jiaofeileixingDetail
		}, {
			path: 'jiaofeileixingAdd',
			component: jiaofeileixingAdd
		}
		, {
			path: 'jiaofeixinxiList',
			component: jiaofeixinxiList
		}, {
			path: 'jiaofeixinxiDetail',
			component: jiaofeixinxiDetail
		}, {
			path: 'jiaofeixinxiAdd',
			component: jiaofeixinxiAdd
		}
		, {
			path: 'tousuxinxiList',
			component: tousuxinxiList
		}, {
			path: 'tousuxinxiDetail',
			component: tousuxinxiDetail
		}, {
			path: 'tousuxinxiAdd',
			component: tousuxinxiAdd
		}
		, {
			path: 'tingchechangList',
			component: tingchechangList
		}, {
			path: 'tingchechangDetail',
			component: tingchechangDetail
		}, {
			path: 'tingchechangAdd',
			component: tingchechangAdd
		}
		, {
			path: 'cheliangchuchangList',
			component: cheliangchuchangList
		}, {
			path: 'cheliangchuchangDetail',
			component: cheliangchuchangDetail
		}, {
			path: 'cheliangchuchangAdd',
			component: cheliangchuchangAdd
		}
		, {
			path: 'cheliangruchangList',
			component: cheliangruchangList
		}, {
			path: 'cheliangruchangDetail',
			component: cheliangruchangDetail
		}, {
			path: 'cheliangruchangAdd',
			component: cheliangruchangAdd
		}
		, {
			path: 'yikatongList',
			component: yikatongList
		}, {
			path: 'yikatongDetail',
			component: yikatongDetail
		}, {
			path: 'yikatongAdd',
			component: yikatongAdd
		}
		, {
			path: 'jiankongshebeiList',
			component: jiankongshebeiList
		}, {
			path: 'jiankongshebeiDetail',
			component: jiankongshebeiDetail
		}, {
			path: 'jiankongshebeiAdd',
			component: jiankongshebeiAdd
		}
		, {
			path: 'duijiangxinxiList',
			component: duijiangxinxiList
		}, {
			path: 'duijiangxinxiDetail',
			component: duijiangxinxiDetail
		}, {
			path: 'duijiangxinxiAdd',
			component: duijiangxinxiAdd
		}
		, {
			path: 'order_confirm',
			component: order_confirm
		}
		, {
			path: 'ordersList',
			component: ordersList
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yezhuRegister',
		component: yezhuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
