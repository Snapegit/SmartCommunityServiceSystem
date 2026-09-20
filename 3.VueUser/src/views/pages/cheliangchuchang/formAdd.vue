
<template>
	<div class="app-contain" :style='{"minHeight":"100vh","padding":"0","margin":"20px auto 60px","borderRadius":"20px","background":"#fff","width":"64%","position":"relative","height":"100%"}'>
		<div class="bread_view">
			<el-breadcrumb separator="/" class="breadcrumb">
				<el-breadcrumb-item class="first_breadcrumb" :to="{ path: '/' }">首页</el-breadcrumb-item>
				<el-breadcrumb-item class="second_breadcrumb" v-for="(item,index) in breadList" :key="index">{{item.name}}</el-breadcrumb-item>
			</el-breadcrumb>
		</div>
		<el-form ref="formRef" :model="form" class="add_form" label-width="120px" :rules="rules">
			<el-row>
				<el-col :span="12">
					<el-form-item label="停车场名称" prop="tingchechangmingcheng">
						<el-input class="list_inp" v-model="form.tingchechangmingcheng" placeholder="停车场名称"
							 type="text" 							:readonly="!isAdd||disabledForm.tingchechangmingcheng?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="车位数" prop="cheweishu">
						<el-input class="list_inp" v-model.number="form.cheweishu" placeholder="车位数"
							 type="text" 							:readonly="!isAdd||disabledForm.cheweishu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="类型" prop="leixing">
						<el-input class="list_inp" v-model="form.leixing" placeholder="类型"
							 type="text" 							:readonly="!isAdd||disabledForm.leixing?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="车主" prop="chezhu">
						<el-input class="list_inp" v-model="form.chezhu" placeholder="车主"
							 type="text" 							:readonly="!isAdd||disabledForm.chezhu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="停车时长" prop="tingcheshizhang">
						<el-input class="list_inp" v-model.number="form.tingcheshizhang" placeholder="停车时长"
							 type="text" 							:readonly="!isAdd||disabledForm.tingcheshizhang?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="停车费" prop="tingchefei">
						<el-input class="list_inp" v-model="tingchefei" placeholder="停车费" readonly></el-input>
					</el-form-item>
				</el-col>
				<el-col :span="12">
					<el-form-item label="物业账号" prop="wuyezhanghao">
						<el-input class="list_inp" v-model="form.wuyezhanghao" placeholder="物业账号"
							 type="text" 							:readonly="!isAdd||disabledForm.wuyezhanghao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="物业姓名" prop="wuyexingming">
						<el-input class="list_inp" v-model="form.wuyexingming" placeholder="物业姓名"
							 type="text" 							:readonly="!isAdd||disabledForm.wuyexingming?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="出场时间" prop="chuchangshijian">
						<el-date-picker
							class="list_date"
							v-model="form.chuchangshijian"
							format="YYYY-MM-DD HH:mm:ss"
							value-format="YYYY-MM-DD HH:mm:ss"
							type="datetime"
							style="width:100%;"
							:readonly="!isAdd||disabledForm.chuchangshijian?true:false"
							placeholder="请选择出场时间" />
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="每小时价" prop="jiage">
						<el-input v-model="form.jiage" placeholder="每小时价" type="textarea"
						:readonly="!isAdd||disabledForm.jiage?true:false"
						/>
					</el-form-item>
				</el-col>
			</el-row>
			<div class="formModel_btn_box">
				<el-button class="formModel_cancel" @click="backClick">取消</el-button>
				<el-button class="formModel_confirm" @click="save"
					type="success"
					>
					保存
				</el-button>
			</div>
		</el-form>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		watch,
		onUnmounted,
		onMounted,
		nextTick,
		computed
	} from 'vue';
	import {
		useRoute,
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const route = useRoute()
	const router = useRouter()
	//基础信息
	const tableName = 'cheliangchuchang'
	const formName = '车辆出场'
	//基础信息
	const breadList = ref([{
		name: formName
	}])
	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//form表单
	const form = ref({
		tingchechangmingcheng: '',
		cheweishu: '',
		leixing: '',
		chezhu: '',
		jiage: '',
		tingcheshizhang: '',
		tingchefei: '',
		wuyezhanghao: '',
		wuyexingming: '',
		chuchangshijian: '',
		ispay: '未支付',
	})
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	const disabledForm = ref({
		tingchechangmingcheng : false,
		cheweishu : false,
		leixing : false,
		chezhu : false,
		jiage : false,
		tingcheshizhang : false,
		tingchefei : false,
		wuyezhanghao : false,
		wuyexingming : false,
		chuchangshijian : false,
		ispay : false,
	})
	const isAdd = ref(false)
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		tingchechangmingcheng: [
		],
		cheweishu: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		leixing: [
		],
		chezhu: [
		],
		jiage: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		tingcheshizhang: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		tingchefei: [
		],
		wuyezhanghao: [
		],
		wuyexingming: [
		],
		chuchangshijian: [
		],
		ispay: [
		],
	})
	const tingchefei =computed(()=>{
		let c = form.value
		let a = c.jiage*c.tingcheshizhang
		form.value.tingchefei = a?a.toFixed(2):0
		return a?a.toFixed(2):0
	})
	//methods

	//methods
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init = (formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null) => {
			form.value.chuchangshijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			// getInfo()
			for(let x in row){
				if(x=='tingchechangmingcheng'){
					form.value.tingchechangmingcheng = row[x];
					disabledForm.value.tingchechangmingcheng = true;
					continue;
				}
				if(x=='cheweishu'){
					form.value.cheweishu = row[x];
					disabledForm.value.cheweishu = true;
					continue;
				}
				if(x=='leixing'){
					form.value.leixing = row[x];
					disabledForm.value.leixing = true;
					continue;
				}
				if(x=='chezhu'){
					form.value.chezhu = row[x];
					disabledForm.value.chezhu = true;
					continue;
				}
				if(x=='jiage'){
					form.value.jiage = row[x];
					disabledForm.value.jiage = true;
					continue;
				}
				if(x=='tingcheshizhang'){
					form.value.tingcheshizhang = row[x];
					disabledForm.value.tingcheshizhang = true;
					continue;
				}
				if(x=='tingchefei'){
					form.value.tingchefei = row[x];
					disabledForm.value.tingchefei = true;
					continue;
				}
				if(x=='wuyezhanghao'){
					form.value.wuyezhanghao = row[x];
					disabledForm.value.wuyezhanghao = true;
					continue;
				}
				if(x=='wuyexingming'){
					form.value.wuyexingming = row[x];
					disabledForm.value.wuyexingming = true;
					continue;
				}
				if(x=='chuchangshijian'){
					form.value.chuchangshijian = row[x];
					disabledForm.value.chuchangshijian = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.ispay='未支付'
		}
		context?.$http({
			url: `${context?.$toolUtil.storageGet('frontSessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('yezhuzhanghao') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.chezhu = json.yezhuzhanghao
				disabledForm.value.chezhu = true;
			}
		})
	}
	//初始化
	//取消
	const backClick = () => {
		history.back()
	}
	//提交
	const save=()=>{
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									history.back()
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							history.back()
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
	onMounted(()=>{
		type.value = route.query.type?route.query.type:'add'
		let row = null
		let table = null
		let statusColumnName = null
		let tips = null
		let statusColumnValue = null
		if(type.value == 'cross'){
			row = context?.$toolUtil.storageGet('crossObj')?JSON.parse(context?.$toolUtil.storageGet('crossObj')):{}
			table = context?.$toolUtil.storageGet('crossTable')
			statusColumnName = context?.$toolUtil.storageGet('crossStatusColumnName')
			tips = context?.$toolUtil.storageGet('crossTips')
			statusColumnValue = context?.$toolUtil.storageGet('crossStatusColumnValue')
		}
		init(route.query.id?route.query.id:null, type.value,'', row, table, statusColumnName, tips, statusColumnValue)
	})
	
</script>
<style lang="scss" scoped>
	// 面包屑盒子
	.bread_view {
		border-radius: 0px;
		padding: 10px 20px;
		margin: 0px auto;
		background: none;
		width: 100%;
		border-color: #eee;
		border-width: 0 0 1px;
		position: relative;
		border-style: solid;
		:deep(.breadcrumb) {
			font-size: 14px;
			line-height: 1;
			.el-breadcrumb__separator {
				margin: 0 9px;
				color: #999;
				font-weight: 500;
			}
			.first_breadcrumb {
				.el-breadcrumb__inner {
					color: #999;
					display: inline-block;
				}
			}
			.second_breadcrumb {
				.el-breadcrumb__inner {
					color: #999;
					display: inline-block;
				}
			}
		}
	}
	// 表单
	.add_form{
		border: 1px solid #27bacc30;
		border-radius: 0px;
		padding: 30px 7%;
		background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(242,254,255,1) 100%);
		// form item
		:deep(.el-form-item) {
			border: 0px solid #eee;
			padding: 6px 0;
			margin: 0 0 20px 0;
			background: none;
			display: flex;
			//label
			.el-form-item__label {
			 background: none;
			 display: block;
			 width: auto;
			 min-width: 150px;
			 text-align: right;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 150px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					padding: 0 10px;
					background: none;
					width: auto;
					border-color: #ddd;
					border-width: 0 0 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 350px;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border-radius: 0px;
					background: none;
					width: auto;
					border-color: #ddd;
					border-width: 0 0 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 300px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 长文本
				.el-textarea__inner {
					border: 1px solid #ddd;
					border-radius: 8px;
					padding: 12px;
					color: #666;
					background: none;
					width: 100%;
					font-size: 14px;
					min-height: 120px;
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		padding: 0 150px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 1px solid #27bacc;
			cursor: pointer;
			border-radius: 8px;
			padding: 0 40px;
			margin: 0 20px 0 0;
			outline: none;
			color: #27bacc;
			background: none;
			width: auto;
			font-size: 14px;
			line-height: 40px;
			height: 40px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 8px;
			padding: 0 40px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: #27bacc;
			width: auto;
			font-size: 14px;
			line-height: 40px;
			height: 40px;
		}
		.formModel_confirm:hover {
		}
	}
</style>