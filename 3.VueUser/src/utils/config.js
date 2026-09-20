const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '房源信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'房屋信息',
							url:'/index/fangwuxinxiList'
						},
					]
				},
				{
					name: '购物车管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'购物车',
							url:'/index/cartList'
						},
					]
				},
				{
					name: '停车场管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'停车场',
							url:'/index/tingchechangList'
						},
					]
				},
				{
					name: '商品信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'商品信息',
							url:'/index/shangpinxinxiList'
						},
					]
				},
				{
					name: '小区信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'小区信息',
							url:'/index/xiaoquxinxiList'
						},
					]
				},
				{
					name: '资讯信息',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'资讯信息',
							url:'/index/newsList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "基于Springcloud的智能社区服务系统"
        } 
    }
}
export default config
