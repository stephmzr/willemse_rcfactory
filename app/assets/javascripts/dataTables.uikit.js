/*!
 DataTables UIkit 3 integration
*/
(function(b) {
    "function" === typeof define&&define.amd?
        define(["jquery","datatables.net"], function(a){return b(a,window,document)}) : "object" === typeof exports?
            module.exports = function(a,c) {
                a||(a=window);
                if (!c||!c.fn.dataTable)
                    c = require("datatables.net")(a,c).$;
                return b(c,a,a.document)
            } : b(jQuery,window,document)
})
(function(b,a,c) {
    var g = b.fn.dataTable;
    b.extend(!0,g.defaults,{dom:"<'row uk-grid'<'uk-width-1-2'<'toolbar'>l><'uk-width-1-2'f>><'row uk-grid dt-merge-grid'<'uk-width-1-1'tr>><'row uk-grid dt-merge-grid'<'uk-width-2-5'i><'uk-width-3-5'p>>", renderer:"uikit"});
    b.extend(g.ext.classes,{sWrapper:"dataTables_wrapper uk-form dt-uikit",sFilterInput:"uk-input uk-width",sLengthSelect:"uk-form-small",sProcessing:"dataTables_processing uk-panel"});
    g.ext.renderer.pageButton.uikit = function(a,h,r,m,j,n) {var o=new g.Api(a),s=a.oClasses,k=a.oLanguage.oPaginate,t=a.oLanguage.oAria.paginate||{},f,d,p=0, q = function(c,g){var l,h,i,e,m=function(a){a.preventDefault();
    !b(a.currentTarget).hasClass("disabled") && o.page()!=a.data.action&&o.page(a.data.action).draw("page")};
    l=0;
    for(h=g.length;l<h;l++)
        if(e=g[l],b.isArray(e))
            q(c,e);
        else {
            d=f="";
            switch(e) {
                case "ellipsis":
                    f='<i class="uk-icon-ellipsis-h"></i>';
                    d="uk-disabled disabled";
                    break;
                case "first":
                    f='<i class="uk-icon-angle-double-left"></i> '+k.sFirst;
                    d=0<j?"":" uk-disabled disabled";
                    break;
                case "previous":
                    f='<i class="uk-icon-angle-left"></i> '+k.sPrevious;
                    d=0<j?"":"uk-disabled disabled";
                    break;
                case "next":
                    f=k.sNext+' <i class="uk-icon-angle-right"></i>';
                    d=j<n-1?"":"uk-disabled disabled";
                    break;
                case "last":
                    f=k.sLast+ ' <i class="uk-icon-angle-double-right"></i>';d=j<n-1?"":" uk-disabled disabled";
                    break;
                default:
                    f=e+1,d=j===e?"uk-active":""}f&&(i=b("<li>",{"class":s.sPageButton+" "+d,id:0===r&&"string"===typeof e?a.sTableId+"_"+e:null}).append(b(-1!=d.indexOf("disabled")||-1!=d.indexOf("active")?"<span>":"<a>",{href:"#","aria-controls":a.sTableId,"aria-label":t[e],"data-dt-idx":p,tabindex:a.iTabIndex}).html(f)).appendTo(c),a.oApi._fnBindAction(i,{action:e},m),p++)}},i;
    try{
        i=b(h).find(c.activeElement).data("dt-idx")
    } catch(u){}
    q(b(h).empty().html('<ul class="uk-pagination uk-pagination-right uk-flex-right"/>').children("ul"), m);
    i&&b(h).find("[data-dt-idx="+i+"]").focus()};
    return g
});