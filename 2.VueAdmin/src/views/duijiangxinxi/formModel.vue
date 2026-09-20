<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="24">
						<el-form-item label="业主账号" prop="yezhuzhanghao">
							<el-input class="list_inp" v-model="form.yezhuzhanghao" placeholder="业主账号"
								 type="text" 								:readonly="!isAdd||disabledForm.yezhuzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="业主姓名" prop="yezhuxingming">
							<el-input class="list_inp" v-model="form.yezhuxingming" placeholder="业主姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.yezhuxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="楼栋号" prop="loudonghao">
							<el-input class="list_inp" v-model="form.loudonghao" placeholder="楼栋号"
								 type="text" 								:readonly="!isAdd||disabledForm.loudonghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="楼房号" prop="loufanghao">
							<el-input class="list_inp" v-model="form.loufanghao" placeholder="楼房号"
								 type="text" 								:readonly="!isAdd||disabledForm.loufanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
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
					<el-col :span="24">
						<el-form-item label="对讲人" prop="duijiangren">
							<el-input class="list_inp" v-model="form.duijiangren" placeholder="对讲人"
								 type="text" 								:readonly="!isAdd||disabledForm.duijiangren?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="对讲时间" prop="duijiangshijian">
							<el-date-picker
								class="list_date"
								v-model="form.duijiangshijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
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
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'duijiangxinxi'
	const formName = '对讲信息'
	//基础信息
	//form表单
	const form = ref({})
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
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
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
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//语音上传回调
	const yuyinUploadSuccess=(e)=>{
		form.value.yuyin = e
	}
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			yezhuzhanghao: '',
			yezhuxingming: '',
			loudonghao: '',
			loufanghao: '',
			duijiangneirong: '',
			yuyin: '',
			duijiangren: '',
			duijiangshijian: '',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.duijiangshijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
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
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('yezhuzhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.yezhuzhanghao = json.yezhuzhanghao
				disabledForm.value.yezhuzhanghao = true;
			}
			if(json.hasOwnProperty('yezhuxingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.yezhuxingming = json.yezhuxingming
				disabledForm.value.yezhuxingming = true;
			}
			if(json.hasOwnProperty('loudonghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.loudonghao = json.loudonghao
				disabledForm.value.loudonghao = true;
			}
			if(json.hasOwnProperty('loufanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.loufanghao = json.loufanghao
				disabledForm.value.loufanghao = true;
			}
		})
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
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
									formVisible.value = false
									emit('formModelChange')
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
							formVisible.value = false
							emit('formModelChange')
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
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border: 1px solid rgba(254, 182, 203, 0.5);
		border-radius: 0px;
		padding: 40px 30px;
		margin: 0;
		background: #fff;
		// form item
		:deep(.el-form-item) {
			margin: 0 150px 20px 0;
			background: none;
			display: flex;
			//label
			.el-form-item__label {
			 color: #666;
			 background: none;
			 font-weight: 500;
			 display: block;
			 width: 150px;
			 text-align: right;
			 min-width: 150px;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 0px solid rgba(255, 255, 255, 0.25);
					border-radius: 0px;
					padding: 0 10px;
					color: #666;
					background: rgba(0, 0, 0, 0.1);
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
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
					border: 1px solid rgba(255, 255, 255, 0.25);
					border-radius: 0px;
					color: #666;
					background: rgba(0, 0, 0, 0.1);
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
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
					border: 1px solid rgba(255, 255, 255, 0.25);
					border-radius: 0;
					padding: 12px;
					color: #666;
					background: rgba(0, 0, 0, 0.1);
					width: auto;
					font-size: 14px;
					min-height: 120px;
					min-width: 350px;
				}
				//文件上传样式
				.upload-demo {
					width: 100%;
					//外部盒子
					.el-upload-dragger {
						border: 1px solid rgba(255, 255, 255, 0.25);
						cursor: pointer;
						border-radius: 0px;
						overflow: hidden;
						background: rgba(0, 0, 0, 0.1);
						width: 360px;
						box-sizing: border-box;
						text-align: center;
						height: auto;
					}
					//图标
					.el-icon--upload {
						margin: 0;
						color: rgba(92, 184, 92, 1);
						font-size: 48px;
						line-height: 48px;
					}
					//提示文字
					.el-upload__text {
						margin: 0px 0 0;
						color: #999;
						font-size: 14px;
						em {
							color: rgba(92, 184, 92, 1);
						}
					}
					//提示文字
					.el-upload__tip {
						margin: 0px 0 0;
						color: #999;
						font-size: 14px;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 1px solid #d43f3a;
			cursor: pointer;
			border-radius: 3px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: rgba(217, 83, 79, 0.45);
			width: auto;
			font-size: 14px;
			min-width: 100px;
			height: 36px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
			border: 1px solid #357ebd;
			cursor: pointer;
			border-radius: 3px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: rgba(66, 139, 202, 0.55);
			width: auto;
			font-size: 14px;
			min-width: 100px;
			height: 36px;
		}
		.formModel_confirm:hover {
		}
	}
</style>