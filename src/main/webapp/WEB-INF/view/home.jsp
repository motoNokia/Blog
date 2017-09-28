<%--
  Created by IntelliJ IDEA.
  User: yjf44568
  Date: 2017/9/27
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        String path = request.getContextPath();
    %>
    <script>
        var path = "<%=request.getContextPath()%>";
    </script>
    <script src="<%=path%>/resources/layui/layui.js"></script>
    <script src="<%=path%>/resources/js/home.js"></script>
    <link rel="stylesheet" href="<%=path%>/resources/layui/css/layui.css"/>
    <link rel="stylesheet" href="<%=path%>/resources/css/util.css">
    <style>
        body {
            background-color: #000000;
            margin: 0px;
            overflow: hidden;
        }

        a {
            color:#0078ff;
        }
    </style>
</head>
<body>
<div class="layui-fluid layui-bg-black website-header">
    <div class="layui-container">
        <a class="website-name layui-hide-xs" href="<%=path%>/home">Richard</a>
        <ul class="layui-nav layui-hide-xs website-nav" lay-filter="nav">
            <li class="layui-nav-item">
                <a href="<%=path%>/index"><i class="layui-icon icon_size">&#xe68e;</i>网站首页</a>
            </li>
            <li class="layui-nav-item">
                <a href="<%=path%>/article"><i class="layui-icon icon_size">&#xe705;</i>博客文章</a>
            </li>
            <li class="layui-nav-item">
                <a href="<%=path%>/source"><i class="layui-icon icon_size">&#xe641;</i>资源分享</a>
            </li>
            <li class="layui-nav-item">
                <a href="<%=path%>/community"><i class="layui-icon icon_size">&#xe857;</i>社区</a>
            </li>
            <li class="layui-nav-item">
                <a href="<%=path%>/website"><i class="layui-icon icon_size">&#xe60b;</i>关于本站</a>
            </li>
        </ul>
        <ul class="layui-nav website-user">
            <li class="layui-nav-item">
                <a href=""><img src="http://t.cn/RCzsdCq" class="layui-nav-img">我</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">修改信息</a></dd>
                    <dd><a href="javascript:;">安全管理</a></dd>
                    <dd><a href="javascript:;">退了</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>
    <script src="<%=path%>/resources/three.min.js"></script>
    <script>

        var SEPARATION = 100, AMOUNTX = 50, AMOUNTY = 50;

        var container;
        var camera, scene, renderer;

        var particles, particle, count = 0;

        var mouseX = 0, mouseY = 0;

        var windowHalfX = window.innerWidth / 2;
        var windowHalfY = window.innerHeight / 2;

        init();
        animate();

        function init() {

            container = document.createElement( 'div' );
            document.body.appendChild( container );

            camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 1, 10000 );
            camera.position.z = 1000;

            scene = new THREE.Scene();

            particles = new Array();

            var PI2 = Math.PI * 2;
            var material = new THREE.ParticleCanvasMaterial( {

                color: 0xffffff,
                program: function ( context ) {

                    context.beginPath();
                    context.arc( 0, 0, 1, 0, PI2, true );
                    context.fill();

                }

            } );

            var i = 0;

            for ( var ix = 0; ix < AMOUNTX; ix ++ ) {

                for ( var iy = 0; iy < AMOUNTY; iy ++ ) {

                    particle = particles[ i ++ ] = new THREE.Particle( material );
                    particle.position.x = ix * SEPARATION - ( ( AMOUNTX * SEPARATION ) / 2 );
                    particle.position.z = iy * SEPARATION - ( ( AMOUNTY * SEPARATION ) / 2 );
                    scene.add( particle );

                }

            }

            renderer = new THREE.CanvasRenderer();
            renderer.setSize( window.innerWidth, window.innerHeight );
            container.appendChild( renderer.domElement );

            document.addEventListener( 'mousemove', onDocumentMouseMove, false );
            document.addEventListener( 'touchstart', onDocumentTouchStart, false );
            document.addEventListener( 'touchmove', onDocumentTouchMove, false );

            //

            window.addEventListener( 'resize', onWindowResize, false );

        }

        function onWindowResize() {

            windowHalfX = window.innerWidth / 2;
            windowHalfY = window.innerHeight / 2;

            camera.aspect = window.innerWidth / window.innerHeight;
            camera.updateProjectionMatrix();

            renderer.setSize( window.innerWidth, window.innerHeight );

        }

        //

        function onDocumentMouseMove( event ) {

            mouseX = event.clientX - windowHalfX;
            mouseY = event.clientY - windowHalfY;

        }

        function onDocumentTouchStart( event ) {

            if ( event.touches.length === 1 ) {

                event.preventDefault();

                mouseX = event.touches[ 0 ].pageX - windowHalfX;
                mouseY = event.touches[ 0 ].pageY - windowHalfY;

            }

        }

        function onDocumentTouchMove( event ) {

            if ( event.touches.length === 1 ) {

                event.preventDefault();

                mouseX = event.touches[ 0 ].pageX - windowHalfX;
                mouseY = event.touches[ 0 ].pageY - windowHalfY;

            }

        }

        //

        function animate() {

            requestAnimationFrame( animate );

            render();


        }

        function render() {

            camera.position.x += ( mouseX - camera.position.x ) * .05;
            camera.position.y += ( - mouseY - camera.position.y ) * .05;
            camera.lookAt( scene.position );

            var i = 0;

            for ( var ix = 0; ix < AMOUNTX; ix ++ ) {

                for ( var iy = 0; iy < AMOUNTY; iy ++ ) {

                    particle = particles[ i++ ];
                    particle.position.y = ( Math.sin( ( ix + count ) * 0.3 ) * 50 ) + ( Math.sin( ( iy + count ) * 0.5 ) * 50 );
                    particle.scale.x = particle.scale.y = ( Math.sin( ( ix + count ) * 0.3 ) + 1 ) * 2 + ( Math.sin( ( iy + count ) * 0.5 ) + 1 ) * 2;

                }

            }

            renderer.render( scene, camera );

            count += 0.1;

        }

    </script>
</body>
</html>
