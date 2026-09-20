
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
					<el-form-item label="业主账号" prop="yezhuzhanghao">
						<el-input class="list_inp" v-model="form.yezhuzhanghao" placeholder="业主账号"
							 type="text" 							:readonly="!isAdd||disabledForm.yezhuzhanghao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="业主姓名" prop="yezhuxingming">
						<el-input class="list_inp" v-model="form.yezhuxingming" placeholder="业主姓名"
							 type="text" 							:readonly="!isAdd||disabledForm.yezhuxingming?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="楼栋号" prop="loudonghao">
						<el-input class="list_inp" v-model="form.loudonghao" placeholder="楼栋号"
							 type="text" 							:readonly="!isAdd||disabledForm.loudonghao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="楼房号" prop="loufanghao">
						<el-input class="list_inp" v-model="form.loufanghao" placeholder="楼房号"
							 type="text" 							:readonly="!isAdd||disabledForm.loufanghao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="语音" prop="yuyin">
						<uploads
							:disabled="!isAdd||disabledForm.yuyin?true:false"
							type="file"
							action="file/upload" 
							tip="请上传语音" 
							:limit="1" 
							style="width: 100%;text-align: left;"
							:fileUrls="form.yuyin?form.yuyin:''" 
							@change="yuyinUploadSuccess">
						</uploads>
					</el-form-item>
				</el-col>
				<el-col :span="12">
					<el-form-item label="对讲人" prop="duijiangren">
						<el-input class="list_inp" v-model="form.duijiangren" placeholder="对讲人"
							 type="text" 							:readonly="!isAdd||disabledForm.duijiangren?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="对讲时间" prop="duijiangshijian">
						<el-date-picker
							class="list_date"
							v-model="form.duijiangshijian"
							format="YYYY-MM-DD HH:mm:ss"
							value-format="YYYY-MM-DD HH:mm:ss"
							type="datetime"
							style="width:100%;"
							:readonly="!isAdd||disabledForm.duijiangshijian?true:false"
							placeholder="请选择对讲时间" />
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="对讲内容" prop="duijiangneirong">
						<el-input v-model="form.duijiangneirong" placeholder="对讲内容" type="textarea"
						:readonly="!isAdd||disabledForm.duijiangneirong?true:false"
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
	const tableName = 'duijiangxinxi'
	const formName = '对讲信息'
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
		yezhuzhanghao: '',
		yezhuxingming: '',
		loudonghao: '',
		loufanghao: '',
		duijiangneirong: '',
		yuyin: '',
		duijiangren: '',
		duijiangshijian: '',
	})
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	const disabledForm = ref({
		yezhuzhanghao : false,
		yezhuxingming : false,
		loudonghao : false,
		loufanghao : false,
		duijiangneirong : false,
		yuyin : false,
		duijiangren : false,
		duijiangshijian : false,
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
		yezhuzhanghao: [
		],
		yezhuxingming: [
		],
		loudonghao: [
		],
		loufanghao: [
		],
		duijiangneirong: [
		],
		yuyin: [
		],
		duijiangren: [
		],
		duijiangshijian: [
		],
	})
	//语音上传回调
	const yuyinUploadSuccess=(e)=>{
		form.value.yuyin = e
	}
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
			form.value.duijiangshijian = context?.$toolUtil.getCurDateTime()
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
				if(x=='yezhuzhanghao'){
					form.value.yezhuzhanghao = row[x];
					disabledForm.value.yezhuzhanghao = true;
					continue;
				}
				if(x=='yezhuxingming'){
					form.value.yezhuxingming = row[x];
					disabledForm.value.yezhuxingming = true;
					continue;
				}
				if(x=='loudonghao'){
					form.value.loudonghao = row[x];
					disabledForm.value.loudonghao = true;
					continue;
				}
				if(x=='loufanghao'){
					form.value.loufanghao = row[x];
					disabledForm.value.loufanghao = true;
					continue;
				}
				if(x=='duijiangneirong'){
					form.value.duijiangneirong = row[x];
					disabledForm.value.duijiangneirong = true;
					continue;
				}
				if(x=='yuyin'){
					form.value.yuyin = row[x];
					disabledForm.value.yuyin = true;
					continue;
				}
				if(x=='duijiangren'){
					form.value.duijiangren = row[x];
					disabledForm.value.duijiangren = true;
					continue;
				}
				if(x=='duijiangshijian'){
					form.value.duijiangshijian = row[x];
					disabledForm.value.duijiangshijian = true;
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
		}
		context?.$http({
			url: `${context?.$toolUtil.storageGet('frontSessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('yezhuzhanghao') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.yezhuzhanghao = json.yezhuzhanghao
				disabledForm.value.yezhuzhanghao = true;
			}
			if(json.hasOwnProperty('yezhuxingming') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.yezhuxingming = json.yezhuxingming
				disabledForm.value.yezhuxingming = true;
			}
			if(json.hasOwnProperty('loudonghao') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.loudonghao = json.loudonghao
				disabledForm.value.loudonghao = true;
			}
			if(json.hasOwnProperty('loufanghao') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.loufanghao = json.loufanghao
				disabledForm.value.loufanghao = true;
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
		if(form.value.yuyin!=null) {
			form.value.yuyin = form.value.yuyin.replace(new RegExp(context?.$config.url,"g"),"");
		}
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
				//文件上传样式
				.upload-demo {
					width: 100%;
					//外部盒子
					.el-upload-dragger {
						border: 1px solid #ddd;
						cursor: pointer;
						border-radius: 8px;
						padding: 6px 0;
						margin: 0;
						overflow: hidden;
						background: none;
						width: 360px;
						box-sizing: border-box;
						text-align: center;
						height: auto;
					}
					//图标
					.el-icon--upload {
						padding: 0;
						margin: 0;
						color: #27bacc;
						font-size: 48px;
						line-height: auto;
					}
					//提示文字
					.el-upload__text {
						padding: 0;
						margin: 0;
						color: #999;
						font-size: 14px;
						em {
							color: #27bacc;
						}
					}
					//提示文字
					.el-upload__tip {
						padding: 0;
						margin: 0;
						color: #999;
						font-size: 14px;
					}
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