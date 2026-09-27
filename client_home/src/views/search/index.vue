<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="校园资讯"
				source_table="article"
			  ></list_result_search>
				<!-- 论坛搜索结果 -->
			  <list_result_search
				:list="result_forum"
				title="论坛交流"
				source_table="forum"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/student_user/list', 'get')"
				:list="result_student_user_student_number"
				title="学生用户学生学号"
				source_table="student_user"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/teacher_user/list', 'get')"
				:list="result_teacher_user_teacher_job_number"
				title="教师用户教师工号"
				source_table="teacher_user"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/job_release/list', 'get')"
				:list="result_job_release_job_name"
				title="作业发布作业名称"
				source_table="job_release"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/achievement_information/list', 'get')"
				:list="result_achievement_information_test_paper_name"
				title="成绩信息试卷名称"
				source_table="achievement_information"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_article": [],
	  "result_forum": [],
			"result_student_user_student_number":[],
			"result_teacher_user_teacher_job_number":[],
			"result_job_release_job_name":[],
			"result_achievement_information_test_paper_name":[],
	};
  },
  methods: {
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取论坛交流
	 */
	get_forum() {
	  this.$get("~/api/forum/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_forum = json.result.list;
		}
	  });
	},
	/**
	 * 获取student_number
	 */
	get_student_user_student_number(){
		this.$get("~/api/student_user/get_list?like=0", { page: 1, size: 10, "student_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_student_user_student_number = json.result.list;
			result_student_user_student_number.map(o => o.title = o['student_number'])
	  			this.result_student_user_student_number = result_student_user_student_number
		 	}
		});
	},
	/**
	 * 获取teacher_job_number
	 */
	get_teacher_user_teacher_job_number(){
		this.$get("~/api/teacher_user/get_list?like=0", { page: 1, size: 10, "teacher_job_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_teacher_user_teacher_job_number = json.result.list;
			result_teacher_user_teacher_job_number.map(o => o.title = o['teacher_job_number'])
	  			this.result_teacher_user_teacher_job_number = result_teacher_user_teacher_job_number
		 	}
		});
	},
	/**
	 * 获取job_name
	 */
	get_job_release_job_name(){
		this.$get("~/api/job_release/get_list?like=0", { page: 1, size: 10, "job_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_job_release_job_name = json.result.list;
			result_job_release_job_name.map(o => o.title = o['job_name'])
	  			this.result_job_release_job_name = result_job_release_job_name
		 	}
		});
	},
	/**
	 * 获取test_paper_name
	 */
	get_achievement_information_test_paper_name(){
		this.$get("~/api/achievement_information/get_list?like=0", { page: 1, size: 10, "test_paper_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_achievement_information_test_paper_name = json.result.list;
			result_achievement_information_test_paper_name.map(o => o.title = o['test_paper_name'])
	  			this.result_achievement_information_test_paper_name = result_achievement_information_test_paper_name
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_article();
	this.get_forum();
		this.get_student_user_student_number();
		this.get_teacher_user_teacher_job_number();
		this.get_job_release_job_name();
		this.get_achievement_information_test_paper_name();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_article();
	  this.get_forum();
	  this.get_student_user_student_number();
	  this.get_teacher_user_teacher_job_number();
	  this.get_job_release_job_name();
	  this.get_achievement_information_test_paper_name();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
