(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-6b111f8c"],{"0cf7":function(e,t,r){"use strict";r.r(t);var a=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"active-work-edit-page"},[r("el-page-header",{staticStyle:{padding:"10px 20px 20px"},attrs:{content:"default"===e.$route.params.activeId?"新增作品":"修改作品"},on:{back:function(t){return e.$router.go(-1)}}}),e._v(" "),e.loading?e._e():r("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"110px","label-position":"right"}},[r("el-form-item",{staticStyle:{display:"none"},attrs:{prop:"id"}},[r("el-input",{attrs:{size:"small"},model:{value:e.form.id,callback:function(t){e.$set(e.form,"id",t)},expression:"form.id"}})],1),e._v(" "),r("el-form-item",{staticStyle:{display:"none"},attrs:{prop:"activityId"}},[r("el-input",{attrs:{size:"small"},model:{value:e.form.activityId,callback:function(t){e.$set(e.form,"activityId",t)},expression:"form.activityId"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"作品名称",prop:"name"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入作品名称"},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"封面",prop:"image"}},[r("upload-image",{attrs:{"file-list":e.fileList},model:{value:e.form.image,callback:function(t){e.$set(e.form,"image",t)},expression:"form.image"}}),e._v(" "),r("el-input",{staticStyle:{display:"none"},model:{value:e.form.image,callback:function(t){e.$set(e.form,"image",t)},expression:"form.image"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"作者",prop:"author"}},[r("el-input",{attrs:{size:"small",placeholder:"请输入作者"},model:{value:e.form.author,callback:function(t){e.$set(e.form,"author",t)},expression:"form.author"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"视频",prop:"video"}},[r("upload-file",{attrs:{"file-list":e.fileList2},model:{value:e.form.video,callback:function(t){e.$set(e.form,"video",t)},expression:"form.video"}}),e._v(" "),r("el-input",{staticStyle:{display:"none"},model:{value:e.form.video,callback:function(t){e.$set(e.form,"video",t)},expression:"form.video"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"正文"}},[r("tinymce",{ref:"edit",attrs:{text:e.form.content}}),e._v(" "),r("el-input",{staticStyle:{display:"none"},attrs:{type:"textarea"},model:{value:e.form.content,callback:function(t){e.$set(e.form,"content",t)},expression:"form.content"}})],1),e._v(" "),r("el-form-item",[r("el-button",{attrs:{size:"small",type:"primary"},on:{click:e.onSubmit}},[e._v("提交")])],1)],1)],1)},n=[],i=r("15fd"),o=(r("7f7f"),r("96cf"),r("1da1")),l=r("9b41"),c={name:"WorkEdit",components:{UploadImage:function(){return r.e("chunk-7466f0f8").then(r.bind(null,"30c9"))},UploadFile:function(){return r.e("chunk-6030f636").then(r.bind(null,"c411"))},Tinymce:function(){return Promise.all([r.e("chunk-322af662"),r.e("chunk-2d0b15b6")]).then(r.bind(null,"2002"))}},data:function(){return{form:{id:"",activityId:this.$route.params.activeId,author:"",content:"",image:"",name:"",video:""},rules:{id:[],activityId:[{required:!0}],author:[],content:[],image:[{required:!0,message:"请上传封面图"}],name:[{required:!0,message:"请填写作品名称"}],video:[]},imageUploadUrl:"/api/upload/uploadImage",fileList:[],fileList2:[],loading:!0}},created:function(){var e=Object(o["a"])(regeneratorRuntime.mark((function e(){var t,r,a,n,i,o,c,s,u,m;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(t=this.$route.params.workId,"default"!==t){e.next=5;break}this.loading=!1,e.next=20;break;case 5:return e.prev=5,e.next=8,Object(l["c"])(t);case 8:r=e.sent,a=r.data,n=a.id,i=a.author,o=a.content,c=a.image,s=a.name,u=a.video,m=a.activityId,this.form={id:n,activityId:m,author:i,content:o,image:c,name:s,video:u},c&&(this.fileList=[{name:"image",url:""+c}],this.fileList2=[{name:u,url:""+u}]),e.next=17;break;case 14:e.prev=14,e.t0=e["catch"](5),console.log(e.t0);case 17:return e.prev=17,this.loading=!1,e.finish(17);case 20:case"end":return e.stop()}}),e,this,[[5,14,17,20]])})));function t(){return e.apply(this,arguments)}return t}(),methods:{onSubmit:function(){var e=this;this.$refs.form.validate(function(){var t=Object(o["a"])(regeneratorRuntime.mark((function t(r){var a,n,o,c,s;return regeneratorRuntime.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(r){t.next=2;break}return t.abrupt("return",!1);case 2:return e.form.id?(a=l["f"],n=Object.assign(e.form,{})):(a=l["a"],o=e.form,o.id,c=Object(i["a"])(o,["id"]),n=c),n.content=e.$refs.edit.getContent(),e._globalLoading(),t.next=7,a(n);case 7:s=t.sent,e.$message.success(s.msg||"成功"),e.$router.go(-1);case 10:case"end":return t.stop()}}),t)})));return function(e){return t.apply(this,arguments)}}())}}},s=c,u=r("2877"),m=Object(u["a"])(s,a,n,!1,null,"19565e23",null);t["default"]=m.exports},"15fd":function(e,t,r){"use strict";function a(e,t){if(null==e)return{};var r,a,n={},i=Object.keys(e);for(a=0;a<i.length;a++)r=i[a],t.indexOf(r)>=0||(n[r]=e[r]);return n}function n(e,t){if(null==e)return{};var r,n,i=a(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(n=0;n<o.length;n++)r=o[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(i[r]=e[r])}return i}r.d(t,"a",(function(){return n}))},"9b41":function(e,t,r){"use strict";r.d(t,"d",(function(){return f})),r.d(t,"a",(function(){return d})),r.d(t,"f",(function(){return p})),r.d(t,"b",(function(){return b})),r.d(t,"e",(function(){return v})),r.d(t,"c",(function(){return h}));var a=r("b775"),n=r("4328"),i=r.n(n),o="/api/back/work/listByPage",l="/api/back/work/add",c="/api/back/work/update",s="/api/back/work/deleteById",u="/api/back/work/status",m="/api/back/work/selectById";function f(e,t,r,n,i){return Object(a["a"])({url:o,method:"GET",params:{pageSize:e,pageNumber:t,activityId:r,selectType1:n,selectType2:i}})}function d(e){return Object(a["a"])({url:l,method:"POST",data:i.a.stringify(e)})}function p(e){return Object(a["a"])({url:c,method:"POST",data:i.a.stringify(e)})}function b(e){return Object(a["a"])({url:s,method:"GET",params:{id:e}})}function v(e){return Object(a["a"])({url:u,method:"GET",params:{id:e}})}function h(e){return Object(a["a"])({url:m,method:"GET",params:{id:e}})}}}]);