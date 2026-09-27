<template>
	<div class="diy_list page_job_release" id="job_release_list">
		<div class="warp">
			<div class="container diy_list_container">
				<div class="diy_list_title">
					<div class="col">
						<span class="title">作业发布列表</span>
					</div>
				</div>
				<div class="row diy_list_search">
					<div class="col">
						<!-- 搜索栏 -->
						<div class="view">							
							<span class="diy_list_search_title">关键字搜索：</span>
							<b-form-input size="sm" class="mr-sm-2" placeholder=" 发布教师搜索" v-model="query['release_teacher']" />
							<b-form-input size="sm" class="mr-sm-2" placeholder="作业名称搜索" v-model="query['job_name']" />
							<b-button size="sm" @click="search()" >
								<b-icon icon="search"/>
							</b-button>
						</div>
						<!-- /搜索栏 -->
					</div>
				</div>
				<div class="diy_list_select_box">
					<span class="diy_list_select_title">下拉搜索：</span>
						<div class="diy_list_dropdown_box">
						<div class="col">
							<!-- 筛选 -->
							<div class="view">
								<b-dropdown text=" 发布教师" variant="outline-dark" left>
									<b-dropdown-item @click="filter_set('全部','release_teacher')">全部</b-dropdown-item>
									<b-dropdown-item v-for="o in list_release_teacher" :key="o['user_id']" @click="filter_set(o['user_id'],'release_teacher')">
										{{ o['nickname'] + '-' + o['username'] }}
									</b-dropdown-item>
								</b-dropdown>
							</div>
							<!-- /筛选 -->
						</div>
					</div>
					<div class="diy_list_sort_box">
						<div class="col">
							<!-- 排序 -->
							<div class="view">
								<b-dropdown text="排序" variant="outline-dark" left>
										<b-dropdown-item v-for="(o, i) in list_sort" :key="i" @click="set_sort(o)" >
												{{ o.name }}
										</b-dropdown-item>
								</b-dropdown>
							</div>
							<!--/排序 -->
						</div>
					</div>
				</div>
				<div class="row diy_list_box">
					<div class="col">
						<!-- 列表 -->
						<list_job_release :list="list" />
						<!-- /列表 -->
					</div>
				</div>
				<div class="row diy_list_page_box">
					<div class="col overflow-auto flex_cc">
						<!-- 分页器 -->
						<diy_pager v-model="query['page']" :size="query['size']" :count="count" v-on:toPage="toPage" v-on:toSize="toSize" ></diy_pager>
						<!-- /分页器 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import list_job_release from "@/components/diy/list_job_release.vue";
	import diy_pager from "@/components/diy/diy_pager";
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		components: {
			diy_pager,
			list_job_release
		},
		data() {
			return {
				url_get_list: "~/api/job_release/get_list?like=0",

				// 查询条件
				query: {
					keyword: "",
					page: 1,
					size: 10,
					"release_teacher": 0, //  发布教师
					"job_name": "", // 作业名称
				},

				// 排序内容
				list_sort: [{
						name: "创建时间从高到低",
						value: "`create_time` desc",
					},
					{
						name: "创建时间从低到高",
						value: "`create_time` asc",
					},
					{
						name: "更新时间从高到低",
						value: "`update_time` desc",
					},
					{
						name: "更新时间从低到高",
						value: "`update_time` asc",
					},
					{
						name: " 发布教师正序",
						value: "`release_teacher` asc",
					},
					{
						name: " 发布教师倒序",
						value: "`release_teacher` desc",
					},
					{
						name: "作业名称正序",
						value: "`job_name` asc",
					},
					{
						name: "作业名称倒序",
						value: "`job_name` desc",
					},
				],
				list_release_teacher: [],
			}
		},
		methods: {
			/**
			 * 筛选选择
			 */
			filter_set(o,key) {
			    if (o == "全部") {
			        this.query[key] = "";
			    } else {
			        this.query[key] = o;
			    }
			    this.search();
			},

			/**
			 * 排序
			 */
			set_sort(o) {
			    this.query.orderby = o.value;
			    this.search();
			},

			/**
			 * 筛选
			 */
			/**
			 * 获取 发布教师列表
			 */
			async get_list_release_teacher() {
				var json = await this.$get("~/api/user/get_list?user_group=教师用户");
				if(json.result && json.result.list){
					this.list_release_teacher = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},

			/**
			 * 重置
			 */
			reset() {
				this.query.release_teacher = ""
				this.query.job_name = ""
				this.search();
			},

			// 返回条数
			toSize(i){
				this.query.size = i;
				this.first();
			},

			// 返回页数
			toPage(i){
				this.query.page = i;
				this.first();
			},
		},
		computed: {
		},
		created() {
			this.get_list_release_teacher();
		}
	}
</script>

<style>
</style>
