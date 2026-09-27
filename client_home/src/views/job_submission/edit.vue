<template>
	<div class="diy_edit page_job_submission" id="job_submission_edit">
		<div class='warp'>
			<div class='container'>
				<div class='row diy_edit_content_box'>
					<div v-if="$check_field('set','release_teacher') || $check_field('add','release_teacher') || $check_field('get','release_teacher')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span> 发布教师:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_release_teacher" :disabled="disabledObj['release_teacher_isDisabled']" v-model="form['release_teacher']" v-if="(form['release_teacher'] && $check_field('set','release_teacher')) || (!form['release_teacher'] && $check_field('add','release_teacher'))" >
								<option v-for="o in list_user_release_teacher" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','release_teacher')">{{ form['release_teacher'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','job_name') || $check_field('add','job_name') || $check_field('get','job_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>作业名称:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_job_name" v-model="form['job_name']" placeholder="请输入作业名称" v-if="(form['job_name'] && $check_field('set','job_name')) || (!form['job_name'] && $check_field('add','job_name'))"  :disabled="disabledObj['job_name_isDisabled']"/>
							<span v-else-if="$check_field('get','job_name')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','release_time') || $check_field('add','release_time') || $check_field('get','release_time')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>发布时间:
							</span>
						</div>
						<!-- 日长 -->
						<div class="diy_field diy_datetime">
							<input type="datetime-local" :disabled="disabledObj['release_time_isDisabled']" id="form_release_time" v-model="form['release_time']" placeholder="请输入发布时间" v-if="(form['release_time'] && $check_field('set','release_time')) || (!form['release_time'] && $check_field('add','release_time'))" />
							<span v-else-if="$check_field('get','release_time')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','required_time') || $check_field('add','required_time') || $check_field('get','required_time')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>要求时间:
							</span>
						</div>
						<!-- 日长 -->
						<div class="diy_field diy_datetime">
							<input type="datetime-local" :disabled="disabledObj['required_time_isDisabled']" id="form_required_time" v-model="form['required_time']" placeholder="请输入要求时间" v-if="(form['required_time'] && $check_field('set','required_time')) || (!form['required_time'] && $check_field('add','required_time'))" />
							<span v-else-if="$check_field('get','required_time')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','student_user') || $check_field('add','student_user') || $check_field('get','student_user')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>学生用户:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_student_user" :disabled="disabledObj['student_user_isDisabled']" v-model="form['student_user']" v-if="(form['student_user'] && $check_field('set','student_user')) || (!form['student_user'] && $check_field('add','student_user'))" >
								<option v-for="o in list_user_student_user" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','student_user')">{{ form['student_user'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','submit_job') || $check_field('add','submit_job') || $check_field('get','submit_job')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>提交作业:
							</span>
						</div>
						<!-- 文件 -->
						<input type="file" style="display: none;" id="form_file_submit_job" title="submit_job" @change="change_file($event.target.files,'submit_job')"/>
						<!-- 修改权限 -->
						<div class="diy_field diy_img" v-if="form['submit_job'] && $check_field('set','submit_job')">
							<label for="form_file_submit_job">
								<!--<span>{{form['submit_job']}} </span>-->
								<a :href="$fullUrl(form['submit_job'])" target="_blank" style="color: rgb(64, 158, 255);">点击下载</a>
							</label>
						</div>
						<!-- 添加权限 -->
						<div class="diy_field diy_img" v-else-if="!form['submit_job'] && $check_field('add','submit_job')">
							<label for="form_file_submit_job">
								<div class="btn_add_img">
									<span>+</span>
								</div>
							</label>
						</div>
						<!-- 查询权限 -->
						<div class="diy_field diy_img" v-else-if="$check_field('get','submit_job')">
							<span>{{form['submit_job']}} </span>
						</div>
					</div>
					<div v-if="$check_field('set','submission_time') || $check_field('add','submission_time') || $check_field('get','submission_time')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>提交时间:
							</span>
						</div>
						<!-- 日长 -->
						<div class="diy_field diy_datetime">
							<input type="datetime-local" :disabled="disabledObj['submission_time_isDisabled']" id="form_submission_time" v-model="form['submission_time']" placeholder="请输入提交时间" v-if="(form['submission_time'] && $check_field('set','submission_time')) || (!form['submission_time'] && $check_field('add','submission_time'))" />
							<span v-else-if="$check_field('get','submission_time')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','job_details') || $check_field('add','job_details') || $check_field('get','job_details')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>作业详情:
							</span>
						</div>
						<!-- 多文本 -->
						<div class="diy_field diy_desc">
							<textarea id="form_job_details" v-model="form['job_details']" v-if="(form['job_details'] && $check_field('set','job_details')) || (!form['job_details'] && $check_field('add','job_details'))" :disabled="disabledObj['job_details_isDisabled']" />
							<span v-else-if="$check_field('get','job_details')">{{ form[''] }}</span>
						</div>
					</div>
				</div>
				<div class="diy_edit_submit_box row">
					<div class="col-12">
						<div class="btn_box">
							<button class="btn_submit" @click="submit()">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import mixin from "@/mixins/page.js";
	export default {
		mixins: [mixin],
		components: {},
		data() {
			return {
				url_get_obj: "~/api/job_submission/get_obj?",
				url_add: "~/api/job_submission/add?",
				url_set: "~/api/job_submission/set?",

				// 登录权限
				oauth: {
					"signIn": true,
					"user_group": []
				},

				// 查询条件
				query: {
					"release_teacher": 0,
					"job_name": "",
					"release_time": "",
					"required_time": "",
					"student_user": 0,
					"submit_job": "",
					"submission_time": "",
					"job_details": "",
					"job_submission_id": 0,
				},

				obj: {
					"release_teacher": 0, //  发布教师
					"job_name":'', // 作业名称
					"release_time": "1970-01-01 00:00:00",
					"required_time": "1970-01-01 00:00:00",
					"student_user": 0, // 学生用户
					"submit_job":'', // 提交作业
					"submission_time": "1970-01-01 00:00:00",
					"job_details":'', // 作业详情
					"job_submission_id": 0,
				},

				// 表单字段
				form: {
					"release_teacher": 0, //  发布教师
					"job_name":'', // 作业名称
					"release_time": "1970-01-01 00:00:00",
					"required_time": "1970-01-01 00:00:00",
					"student_user": 0, // 学生用户
					"submit_job":'', // 提交作业
					"submission_time": "1970-01-01 00:00:00",
					"job_details":'', // 作业详情
					"job_submission_id": 0,

				},
				disabledObj:{
					"release_teacher_isDisabled": false,
					"job_name_isDisabled": false,
					"release_time_isDisabled": false,
					"required_time_isDisabled": false,
					"student_user_isDisabled": false,
					"submit_job_isDisabled": false,
					"submission_time_isDisabled": false,
					"job_details_isDisabled": false,
				},
				// 用户列表
				list_user_release_teacher: [],
				// 用户列表
				list_user_student_user: [],

				// ID字段
				field: "job_submission_id",
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
			 * 获取学生用户用户列表
			 */
			async get_list_user_student_user() {
				// if(this.user_group !== "管理员" && this.form["student_user"] === 0) {
				//     this.form["student_user"] = this.user.user_id;
				// }
				var json = await this.$get("~/api/user/get_list?user_group=学生用户");
				if(json.result && json.result.list){
					this.list_user_student_user = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			async get_user_session_student_user(){
				var _this = this;
				var json = await this.$get("~/api/user_group/get_obj?name=学生用户");
				if(json.result && json.result.obj){
					var source_table = json.result.obj.source_table;
					var user_id = _this.$store.state.user.user_id;
					if (user_id){
						var url = "~/api/"+source_table+"/get_obj?"
						this.$get(url, {"user_id":_this.$store.state.user.user_id}, function(res) {
							if (res.result && res.result.obj) {
								var arr = []
								for (let key in res.result.obj) {
									arr.push(key)
								}
								var arrForm = []
								for (let key in _this.form) {
									arrForm.push(key)
								}
								_this.form["student_user"] = user_id
								_this.disabledObj['student_user' + '_isDisabled'] = true
								for (var i=0;i<arr.length;i++){
									for (var j=0;j<arrForm.length;j++){
										if (arr[i]===arrForm[j]){
											if (arr[i]!=="student_user") {
												_this.form[arrForm[j]] = res.result.obj[arr[i]]
												_this.disabledObj[arrForm[j] + '_isDisabled'] = true
												break;
											}
										}
									}
								}
							}
						});
					}
				}
				else if(json.error){
					console.error(json.error);
				}
			},

			/**
			 * 修改文件
			 * @param { Object } files 上传文件对象
			 * @param { String } str 表单的属性名
			 */
			change_file(files, str) {
				var form = new FormData();
				form.append("file", files[0]);
				this.$post("~/api/job_submission/upload?", form, (res) => {
					if (res.result) {
						this.form[str] = res.result.url;
					} else if (res.error) {
						this.$toast(res.error.message);
					}
				});
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_before(param){
				var form = $.db.get("form");
				if (form) {
					this.obj = $.push(this.obj ,form);
					this.form = $.push(this.form ,form);
				}
				var arr = []
				for (let key in form) {
					arr.push(key)
				}
				for (var i=0;i<arr.length;i++){
					this.disabledObj[arr[i] + '_isDisabled'] = true
				}
				this.form["release_time"] = this.$toTime(parseInt(this.form["release_time"]),"yyyy-MM-ddThh:mm")
				this.form["required_time"] = this.$toTime(parseInt(this.form["required_time"]),"yyyy-MM-ddThh:mm")
				this.form["submission_time"] = this.$toTime(parseInt(this.form["submission_time"]),"yyyy-MM-ddThh:mm")
				return param;
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json ,func){
				var form = $.db.get("form");
				var obj = Object.assign({} ,form ,this.obj);
				if (form) {
					this.obj = $.push(this.obj ,obj);
				}
				if (form) {
					this.form = $.push(this.form ,form);
				}
				if(func){
					func(json);
				}
			},

		},
		created() {
			this.get_list_user_release_teacher();
			this.get_user_session_student_user();
			this.get_list_user_student_user();
		}
	}
</script>

<style>
</style>
