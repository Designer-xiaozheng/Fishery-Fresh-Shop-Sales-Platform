<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','test_paper_name') || $check_field('add','test_paper_name') || $check_field('set','test_paper_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="试卷名称" prop="test_paper_name">
					<el-input id="test_paper_name" v-model="form['test_paper_name']" placeholder="请输入试卷名称"
							  v-if="user_group === '管理员' || (form['achievement_information_id'] && $check_field('set','test_paper_name')) || (!form['achievement_information_id'] && $check_field('add','test_paper_name'))" :disabled="disabledObj['test_paper_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','test_paper_name')">{{form['test_paper_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','examination_time') || $check_field('add','examination_time') || $check_field('set','examination_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="考试时间" prop="examination_time">
					<el-date-picker :disabled="disabledObj['examination_time_isDisabled']" v-if="user_group === '管理员' || (form['achievement_information_id'] && $check_field('set','examination_time')) || (!form['achievement_information_id'] && $check_field('add','examination_time'))" id="examination_time"
						v-model="form['examination_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','examination_time')">{{form['examination_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','end_time') || $check_field('add','end_time') || $check_field('set','end_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="结束时间" prop="end_time">
					<el-date-picker :disabled="disabledObj['end_time_isDisabled']" v-if="user_group === '管理员' || (form['achievement_information_id'] && $check_field('set','end_time')) || (!form['achievement_information_id'] && $check_field('add','end_time'))" id="end_time"
						v-model="form['end_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','end_time')">{{form['end_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','total_score_of_test_paper') || $check_field('add','total_score_of_test_paper') || $check_field('set','total_score_of_test_paper')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="试卷总分" prop="total_score_of_test_paper">
					<el-input-number id="total_score_of_test_paper" v-model.number="form['total_score_of_test_paper']"
						v-if="user_group === '管理员' || (form['achievement_information_id'] && $check_field('set','total_score_of_test_paper')) || (!form['achievement_information_id'] && $check_field('add','total_score_of_test_paper'))"></el-input-number>
					<div v-else-if="$check_field('get','total_score_of_test_paper')">{{form['total_score_of_test_paper']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','student_number') || $check_field('add','student_number') || $check_field('set','student_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="学生学号" prop="student_number">
						<el-select v-if="user_group === '管理员' || (form['achievement_information_id'] && $check_field('set','student_number')) || (!form['achievement_information_id'] && $check_field('add','student_number'))" id="student_number" v-model="form['student_number']" :disabled="disabledObj['student_number_isDisabled']">
							<el-option v-for="o in list_user_student_number" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','student_number')" id="student_number" v-model="form['student_number']" :disabled="true">
							<el-option v-for="o in list_user_student_number" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','student_name') || $check_field('add','student_name') || $check_field('set','student_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="学生姓名" prop="student_name">
					<el-input id="student_name" v-model="form['student_name']" placeholder="请输入学生姓名"
							  v-if="user_group === '管理员' || (form['achievement_information_id'] && $check_field('set','student_name')) || (!form['achievement_information_id'] && $check_field('add','student_name'))" :disabled="disabledObj['student_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','student_name')">{{form['student_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','student_score') || $check_field('add','student_score') || $check_field('set','student_score')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="学生分数" prop="student_score">
					<el-input-number id="student_score" v-model.number="form['student_score']"
						v-if="user_group === '管理员' || (form['achievement_information_id'] && $check_field('set','student_score')) || (!form['achievement_information_id'] && $check_field('add','student_score'))"></el-input-number>
					<div v-else-if="$check_field('get','student_score')">{{form['student_score']}}</div>
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
				field: "achievement_information_id",
				url_add: "~/api/achievement_information/add?",
				url_set: "~/api/achievement_information/set?",
				url_get_obj: "~/api/achievement_information/get_obj?",
				url_upload: "~/api/achievement_information/upload?",

				query: {
					"achievement_information_id": 0,
				},

				form: {
					"test_paper_name":'', // 试卷名称
					"examination_time":'', // 考试时间
					"end_time":'', // 结束时间
					"total_score_of_test_paper":0, // 试卷总分
					"student_number": 0, // 学生学号
					"student_name":'', // 学生姓名
					"student_score":0, // 学生分数
					"achievement_information_id": 0, // ID

				},
				disabledObj:{
					"test_paper_name_isDisabled": false,
					"examination_time_isDisabled": false,
					"end_time_isDisabled": false,
					"student_number_isDisabled": false,
					"student_name_isDisabled": false,
				},
				// 用户列表
				list_user_student_number: [],

			}
		},
		methods: {
			/**
			 * 获取学生用户用户列表
			 */
			async get_list_user_student_number() {
                // if(this.user_group !== "管理员" && this.form["student_number"] === 0) {
                //     this.form["student_number"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=学生用户");
                if(json.result && json.result.list){
                    this.list_user_student_number = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			get_user_student_number(id){
				var obj = this.list_user_student_number.getObj({"user_id":id});
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
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "学生学号":
							if(param["student_number"] > 0){
								param["student_number"] = this.user.user_id;
							}
							break;
					}
				}
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
				this.form["examination_time"] = this.$toTime(parseInt(this.form["examination_time"]),"yyyy-MM-dd hh:mm:ss")
				this.form["end_time"] = this.$toTime(parseInt(this.form["end_time"]),"yyyy-MM-dd hh:mm:ss")
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
				if(parseInt(this.form["examination_time"]) > 9999){
					this.form["examination_time"] = this.$toTime(parseInt(this.form["examination_time"]),"yyyy-MM-dd hh:mm:ss")
				}
				if(parseInt(this.form["end_time"]) > 9999){
					this.form["end_time"] = this.$toTime(parseInt(this.form["end_time"]),"yyyy-MM-dd hh:mm:ss")
				}

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/achievement_information/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/achievement_information/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/achievement_information/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/achievement_information/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/achievement_information/view','get');
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
			this.get_list_user_student_number();
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
