layui.use(['element','jquery'],function () {
    var $ = layui.jquery;
    var element = layui.element;
    $(".website-nav li:eq(0)").addClass("layui-this")
    $("#leftList .card").mouseenter(function () {
        $(this).addClass("border-left-green")
    }).mouseleave(function () {
        $(this).removeClass("border-left-green")
    })
})