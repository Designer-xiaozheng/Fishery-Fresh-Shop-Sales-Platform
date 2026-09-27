<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','release_teacher') || $check_field('add','release_teacher') || $check_field('set','release_teacher')" :xs="24" :sm="12" :lg="8">
				<el-form-item label=" 发布教师" prop="release_teacher">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_release_teacher(form['release_teacher']) }}
							<!--<el-input id="business_name" v-model="form['release_teacher']" placeholder="请输入 发布教师"-->
							<!--v-if="user_group === '管理员' || (form['job_release_id'] && $check_field('set','release_teacher')) || (!form['job_release_id'] && $check_field('add','release_teacher'))" :disabled="disabledObj['release_teacher_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','release_teacher')">{{form['release_teacher']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['job_release_id'] && $check_field('set','release_teacher')) || (!form['job_release_id'] && $check_field('add','release_teacher'))" id="release_teacher" v-model="form['release_teacher']" :disabled="disabledObj['release_teacher_isDisabled']">
								<el-option v-for="o in list_user_release_teacher" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','release_teacher')" id="release_teacher" v-model="form['release_teacher']" :disabled="true">
								<el-option v-for="o in list_user_release_teacher" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="release_teacher" v-model="form['release_teacher']" :disabled="disabledObj['release_teacher_isDisabled']">
							<el-option v-for="o in list_user_release_teacher" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','job_name') || $check_field('add','job_name') || $check_field('set','job_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="作业名称" prop="job_name">
					<el-input id="job_name" v-model="form['job_name']" placeholder="请输入作业名称"
							  v-if="user_group === '管理员' || (form['job_release_id'] && $check_field('set','job_name')) || (!form['job_release_id'] && $check_field('add','job_name'))" :disabled="disabledObj['job_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','job_name')">{{form['job_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','job_file') || $check_field('add','job_file') || $check_field('set','job_file')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="作业文件" prop="job_file">
					<div v-if="disabledObj['job_file_isDisabled']">
						<div v-if="$check_field('get','job_file')">
							<el-button type="primary" @click="$download($fullUrl(form['job_file']),form['job_file'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
					<div v-else>
						<el-upload v-if="user_group === '管理员' || (form['job_release_id'] && $check_field('set','job_file')) || (!form['job_release_id'] && $check_field('add','job_file'))" class="upload-demo" drag
								   action="" style="max-width: 300px;width: 100%;" :http-request="upload_job_file" :limit="1" accept="">
							<i class="el-icon-upload"></i>
							<div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
						</el-upload>
						<div v-else-if="$check_field('get','job_file')">
							<el-button type="primary" @click="$download($fullUrl(form['job_file']),form['job_file'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','release_time') || $check_field('add','release_time') || $check_field('set','release_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="发布时间" prop="release_time">
					<el-date-picker :disabled="disabledObj['release_time_isDisabled']" v-if="user_group === '管理员' || (form['job_release_id'] && $check_field('set','release_time')) || (!form['job_release_id'] && $check_field('add','release_time'))" id="release_time"
						v-model="form['release_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','release_time')">{{form['release_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','required_time') || $check_field('add','required_time') || $check_field('set','required_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="要求时间" prop="required_time">
					<el-date-picker :disabled="disabledObj['required_time_isDisabled']" v-if="user_group === '管理员' || (form['job_release_id'] && $check_field('set','required_time')) || (!form['job_release_id'] && $check_field('add','required_time'))" id="required_time"
						v-model="form['required_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','required_time')">{{form['required_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','job_details') || $check_field('add','job_details') || $check_field('set','job_details')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="作业详情" prop="job_details">
					<el-input type="textarea" id="job_details" v-model="form['job_details']" placeholder="请输入作业详情"
						v-if="user_group === '管理员' || (form['job_release_id'] && $check_field('set','job_details')) || (!form['job_release_id'] && $check_field('add','job_details'))" :disabled="disabledObj['job_details_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','job_details')">{{form['job_details']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "job_release_id",
				url_add: "~/api/job_release/add?",
				url_set: "~/api/job_release/set?",
				url_get_obj: "~/api/job_release/get_obj?",
				url_upload: "~/api/job_release/upload?",

				query: {
					"job_release_id": 0,
				},

				form: {
					"release_teacher": 0, //  发布教师
					"job_name":'', // 作业名称
					"job_file":'', // 作业文件
					"release_time":'', // 发布时间
					"required_time":'', // 要求时间
					"job_details":'', // 作业详情
					"job_release_id": 0, // ID

				},
				disabledObj:{
					"release_teacher_isDisabled": false,
					"job_name_isDisabled": false,
					"job_file_isDisabled": false,
					"release_time_isDisabled": false,
					"required_time_isDisabled": false,
					"job_details_isDisabled": false,
				},
				// 用户列表
				list_user_release_teacher: [],
				// 用户组
				group_user_release_teacher: "",

			}
		},
		methods: {
			/**
			 * 获取教师用户用户列表
			 */
			async get_list_user_release_teacher() {
                // if(this.user_group !== "管理员" && this.form["release_teacher"] === 0) {
                //     this.form["release_teacher"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=教师用户");
                if(json.result && json.result.list){
                    this.list_user_release_teacher = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			/**
			 * 获取教师用户用户组
			 */
			async get_group_user_release_teacher() {
				this.form["release_teacher"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=教师用户");
				if(json.result && json.result.obj){
					this.group_user_release_teacher = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_release_teacher(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_release_teacher.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
							for (var j=0;j<arrForm.length;j++){
								if (arr[i]===arrForm[j]){
									if (arr[i]!=="release_teacher") {
										_this.form[arrForm[j]] = res.result.obj[arr[i]]
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
										break;
									}else {
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
									}
								}
							}
						}
					}
				});
			},
			get_user_release_teacher(id){
				var obj = this.list_user_release_teacher.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			/**
			 * 上传作业文件
			 * @param {Object} param文件参数
			 */
			upload_job_file(param){
				this.uploadFile(param.file, "job_file");
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
				this.form["release_time"] = this.$toTime(parseInt(this.form["release_time"]),"yyyy-MM-dd hh:mm:ss")
				this.form["required_time"] = this.$toTime(parseInt(this.form["required_time"]),"yyyy-MM-dd hh:mm:ss")
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
				if(parseInt(this.form["release_time"]) > 9999){
					this.form["release_time"] = this.$toTime(parseInt(this.form["release_time"]),"yyyy-MM-dd hh:mm:ss")
				}
				if(parseInt(this.form["required_time"]) > 9999){
					this.form["required_time"] = this.$toTime(parseInt(this.form["required_time"]),"yyyy-MM-dd hh:mm:ss")
				}

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/job_release/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/job_release/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/job_release/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/job_release/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/job_release/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_user_release_teacher();
			this.get_group_user_release_teacher();
		}
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
