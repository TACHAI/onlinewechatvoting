(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d0b15b6"],{2002:function(e,t,a){"use strict";a.r(t);var i=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("editor",{attrs:{init:e.options,disabled:e.disabled,"api-key":e.apiKey},model:{value:e.myValue,callback:function(t){e.myValue=t},expression:"myValue"}})},n=[],o=(a("3b2b"),a("7f7f"),a("b54a"),a("c5f6"),a("e562"),a("ca72")),l=(a("46c3"),a("0d68"),a("0902"),a("d2dc"),a("2fec"),a("ffbe"),a("64d8"),a("c3d7"),a("07d7"),a("2d33"),a("f557"),a("855b"),a("69e4"),a("4cb4"),a("3154"),a("0aa0"),a("2b07"),a("4ea8"),a("fbbd"),a("4bd0"),a("8863"),a("4237"),a("84ec"),a("eda9"),a("cfb0"),a("ebac"),a("bc54"),a("0a9d"),a("840a"),a("6957"),a("62e5"),a("dcb7"),a("07d1"),a("0335"),a("34de"),a("78e4"),a("ef37"),a("0efa"),a("365e"),a("9434"),a("d558"),a("1932"),a("e3a9"),a("bc3a")),s=a.n(l),r=a("5f87"),c={components:{Editor:o["a"]},props:{disabled:{type:Boolean,default:!1},text:{type:String,default:""},apiKey:{type:String,default:"sdaqmazereqem861n4uaysygqucac1dajacyf3igpqg32azi"},plugins:{type:[String,Array],default:"lists advlist anchor autolink autosave code charmap codesample colorpicker directionality emoticons fullscreen help hr image imagetools importcss insertdatetime link nonbreaking noneditable pagebreak paste preview print save searchreplace spellchecker table template textcolor textpattern toc visualblocks visualchars wordcount bdmap indent2em lineheight"},toolbar:{type:[String,Array],default:"undo redo | formatselect | bold italic underline | fontselect fontsizeselect | alignleft aligncenter alignright alignjustify | lineheight | indent2em | ltr rtl | forecolor backcolor | textcolor | table tabledelete | bullist numlist outdent indent | textpattern | image imagetools | link | emoticons | charmap | codesample | bdmap | insertdatetime | hr | nonbreaking | pagebreak | visualblocks | visualchars | removeformat | toc | anchor | paste | code | searchreplace | template | fullscreen | preview | print | save | restoredraft | wordcount | help"},autoFocus:{type:Boolean,default:!1},imagesUploadBasePath:{type:String,default:""},setup:{type:Function,default:function(){return function(e){}}},initInstanceCallback:{type:Function,default:function(){return function(e){}}},placeholder:{type:String,default:"说点什么吧..."},height:{type:Number,default:600},minHeight:{type:Number,default:450},fontsizeFormats:{type:String,default:"12px 13px 14px 15px 16px 17px 18px 19px 20px 24px 36px 48px"},fontFormats:{type:String,default:"微软雅黑=Microsoft YaHei,Helvetica Neue,PingFang SC,sans-serif;苹果苹方=PingFang SC,Microsoft YaHei,sans-serif;宋体=simsun,serif;仿宋体=FangSong,serif;黑体=SimHei,sans-serif;Arial=arial,helvetica,sans-serif;Arial Black=arial black,avant garde;Book Antiqua=book antiqua,palatino;"}},data:function(){var e=this;return{options:{language_url:"/tinymce/tinymce_languages/langs/zh_CN.js",language:"zh_CN",skin_url:"/tinymce/skins/ui/oxide",content_css:"/tinymce/skins/content/default/content.min.css",auto_focus:this.auto_focus,cache_suffix:"?v=5",toolbar_mode:"wrap",image_caption:!0,image_advtab:!0,imagetools_toolbar:"rotateleft rotateright | flipv fliph | editimage imageoptions",inline:!1,hidden_input:!1,height:this.height,min_height:this.minHeight,fontsize_formats:this.fontsizeFormats,font_formats:this.fontFormats,importcss_append:!0,branding:!0,contextmenu:"bold italic underline anchor undo redo copy",contextmenu_never_use_native:!0,elementpath:!0,menubar:"file edit insert view format table tools help",quickbars_selection_toolbar:"bold italic | forecolor backcolor | quicklink h2 h3 blockquote",placeholder:this.placeholder,images_reuse_filename:!0,toolbar:this.toolbar,plugins:this.plugins,images_upload_base_path:this.imagesUploadBasePath,setup:this.setup,init_instance_callback:this.initInstanceCallback,images_upload_handler:function(t,a,i){var n=new FormData;n.append("file",t.blob()),s()({url:"/api/upload/uploadImage",headers:{"Content-Type":"multipart/form-data",Authorization:e.$store.getters.token||Object(r["b"])()},method:"POST",data:n}).then((function(e){var t=e.data;200===t.status?a(""+t.link):i(t.msg||"上传失败")})).catch((function(e){i(e.msg||"上传失败")}))},file_picker_callback:function(t,a,i){var n="/api/upload/uploadFile",o=".pdf, .txt, .zip, .rar, .7z, .doc, .docx, .xls, .xlsx, .ppt, .pptx, .mp3, .mp4";switch(i.filetype){case"image":o=".jpg, .jpeg, .png, .gif",n="/api/upload/uploadImage";break;case"file":default:}var l=document.createElement("input");l.setAttribute("type","file"),l.setAttribute("accept",o),l.click(),l.addEventListener("change",(function(){var a=l.files[0],c=a.name.substring(a.name.lastIndexOf(".")+1),u=a.name.substring(0,a.name.lastIndexOf("."));if(!new RegExp(c).test(o))return e.$message.error("请上传正确的文件格式");var p=e.$loading({lock:!0,text:"正在上传",spinner:"el-icon-loading",background:"rgba(0, 0, 0, 0)"}),d=new FormData;d.append("file",a),s()({url:n,headers:{"Content-Type":"multipart/form-data",Authorization:e.$store.getters.token||Object(r["b"])()},method:"POST",data:d}).then((function(a){p.close(),e.$message.success("上传成功");var n=a.data;if(200===n.status)switch(i.filetype){case"image":t(""+n.link,{alt:u});break;default:t(""+n.link,{text:u});break}})).catch((function(){p.close(),e.$message.error("上传失败")}))}))}},myValue:""}},created:function(){this.myValue=this.text},methods:{clear:function(){this.myValue="",console.log(this.myValue)},getContent:function(){return this.myValue}}},u=c,p=a("2877"),d=Object(p["a"])(u,i,n,!1,null,null,null);t["default"]=d.exports}}]);