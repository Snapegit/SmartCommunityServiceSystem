
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
					<el-form-item label="小区名称" prop="xiaoqumingcheng">
						<el-input class="list_inp" v-model="form.xiaoqumingcheng" placeholder="小区名称"
							 type="text" 							:readonly="!isAdd||disabledForm.xiaoqumingcheng?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="小区类型" prop="xiaoquleixing">
						<el-select
							class="list_sel"
							:disabled="!isAdd||disabledForm.xiaoquleixing?true:false"
							v-model="form.xiaoquleixing" 
							placeholder="请选择小区类型"
							style="width:100%;"
							>
							<el-option v-for="(item,index) in xiaoquleixingLists" :label="item"
								:value="item"
								>
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :span="12">
					<el-form-item label="小区地址" prop="xiaoqudizhi">
						<el-input class="list_inp" v-model="form.xiaoqudizhi" placeholder="小区地址"
							 type="text" 							:readonly="!isAdd||disabledForm.xiaoqudizhi?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="建筑面积" prop="jianzhumianji">
						<el-input class="list_inp" v-model.number="form.jianzhumianji" placeholder="建筑面积"
							 type="number" 							:readonly="!isAdd||disabledForm.jianzhumianji?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="总户数" prop="zonghushu">
						<el-input class="list_inp" v-model.number="form.zonghushu" placeholder="总户数"
							 type="text" 							:readonly="!isAdd||disabledForm.zonghushu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="停车位数量" prop="tingcheweishuliang">
						<el-input class="list_inp" v-model="form.tingcheweishuliang" placeholder="停车位数量"
							 type="text" 							:readonly="!isAdd||disabledForm.tingcheweishuliang?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="小区图片" prop="xiaoqutupian">
						<uploads
							:disabled="!isAdd||disabledForm.xiaoqutupian?true:false"
							action="file/upload" 
							tip="请上传小区图片" 
							:limit="3" 
							style="width: 100%;text-align: left;"
							:fileUrls="form.xiaoqutupian?form.xiaoqutupian:''" 
							@change="xiaoqutupianUploadSuccess">
						</uploads>
					</el-form-item>
				</el-col>
				<el-col :span="12">
					<el-form-item label="楼栋数" prop="loudongshu">
						<el-input class="list_inp" v-model.number="form.loudongshu" placeholder="楼栋数"
							 type="text" 							:readonly="!isAdd||disabledForm.loudongshu?true:false" />
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

				<el-col :span="24">
					<el-form-item label="周围环境" prop="zhouweihuanjing">
						<editor class="list_editor" :value="form.zhouweihuanjing" placeholder="请输入周围环境" :readonly="!isAdd||disabledForm.zhouweihuanjing?true:false"
							@change="(e)=>editorChange(e,'zhouweihuanjing')"></editor>
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
	const tableName = 'xiaoquxinxi'
	const formName = '小区信息'
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
		xiaoqumingcheng: '',
		xiaoquleixing: '',
		xiaoqudizhi: '',
		jianzhumianji: '',
		zonghushu: '',
		tingcheweishuliang: '',
		xiaoqutupian: '',
		zhouweihuanjing: '',
		loudongshu: '',
		wuyezhanghao: '',
		wuyexingming: '',
	})
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	const disabledForm = ref({
		xiaoqumingcheng : false,
		xiaoquleixing : false,
		xiaoqudizhi : false,
		jianzhumianji : false,
		zonghushu : false,
		tingcheweishuliang : false,
		xiaoqutupian : false,
		zhouweihuanjing : false,
		loudongshu : false,
		wuyezhanghao : false,
		wuyexingming : false,
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
		xiaoqumingcheng: [
		],
		xiaoquleixing: [
		],
		xiaoqudizhi: [
		],
		jianzhumianji: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		zonghushu: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		tingcheweishuliang: [
		],
		xiaoqutupian: [
		],
		zhouweihuanjing: [
		],
		loudongshu: [
			{ validator: validateIntNumber, trigger: 'blur' },
		],
		wuyezhanghao: [
		],
		wuyexingming: [
		],
	})
	//小区类型列表
	const xiaoquleixingLists = ref([])
	//小区图片上传回调
	const xiaoqutupianUploadSuccess=(e)=>{
		form.value.xiaoqutupian = e
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
			res.data.data.zhouweihuanjing = res.data.data.zhouweihuanjing.replace(reg,'../../../cl0608701/file');
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
				if(x=='xiaoqumingcheng'){
					form.value.xiaoqumingcheng = row[x];
					disabledForm.value.xiaoqumingcheng = true;
					continue;
				}
				if(x=='xiaoquleixing'){
					form.value.xiaoquleixing = row[x];
					disabledForm.value.xiaoquleixing = true;
					continue;
				}
				if(x=='xiaoqudizhi'){
					form.value.xiaoqudizhi = row[x];
					disabledForm.value.xiaoqudizhi = true;
					continue;
				}
				if(x=='jianzhumianji'){
					form.value.jianzhumianji = row[x];
					disabledForm.value.jianzhumianji = true;
					continue;
				}
				if(x=='zonghushu'){
					form.value.zonghushu = row[x];
					disabledForm.value.zonghushu = true;
					continue;
				}
				if(x=='tingcheweishuliang'){
					form.value.tingcheweishuliang = row[x];
					disabledForm.value.tingcheweishuliang = true;
					continue;
				}
				if(x=='xiaoqutupian'){
					form.value.xiaoqutupian = row[x];
					disabledForm.value.xiaoqutupian = true;
					continue;
				}
				if(x=='zhouweihuanjing'){
					form.value.zhouweihuanjing = row[x];
					disabledForm.value.zhouweihuanjing = true;
					continue;
				}
				if(x=='loudongshu'){
					form.value.loudongshu = row[x];
					disabledForm.value.loudongshu = true;
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
			if(json.hasOwnProperty('wuyezhanghao') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.wuyezhanghao = json.wuyezhanghao
				disabledForm.value.wuyezhanghao = true;
			}
			if(json.hasOwnProperty('wuyexingming') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.wuyexingming = json.wuyexingming
				disabledForm.value.wuyexingming = true;
			}
		})
		xiaoquleixingLists.value = "住宅小区,公寓小区,商业小区".split(',')
	}
	//初始化
	//取消
	const backClick = () => {
		history.back()
	}
	//富文本数据回调
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		if(form.value.xiaoqutupian!=null) {
			form.value.xiaoqutupian = form.value.xiaoqutupian.replace(new RegExp(context?.$config.url,"g"),"");
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
				// 下拉框
				.list_sel {
					border-radius: 0px;
					padding: 0 10px;
					background: none;
					width: auto;
					border-color: #ddd;
					border-width: 0 0 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 300px;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
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
					}
				}
				// 富文本
				.list_editor {
					border-radius: 0;
					padding: 0;
					margin: 0;
					background: none;
					width: 99%;
					min-height: 250px;
					border-color: #eee;
					border-width: 0;
					border-style: solid;
					height: auto;
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						display: flex;
						font-size: 14px;
						justify-content: flex-start;
						align-items: center;
					}
					//外部盒子
					.el-upload--picture-card {
						border: 1px solid #ddd;
						cursor: pointer;
						border-radius: 8px;
						background: none;
						width: 150px;
						line-height: 90px;
						text-align: center;
						height: 80px;
						//图标
						.el-icon{
							color: #999;
							font-size: 24px;
						}
					}
					.el-upload-list__item {
						border: 1px solid #ddd;
						cursor: pointer;
						border-radius: 8px;
						background: none;
						width: 150px;
						line-height: 90px;
						text-align: center;
						height: 80px;
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