# SSM-Enterprise_Permission_Management_System
这是一个企业权限管理系统，主要包括用户管理、角色管理、资源权限管理、权限关联控制、产品管理、订单管理、日志查询等功能。

## 环境

- Java版本：1.8
- 数据库：Oracle 10g
- 服务器：Tomcat
- 开发工具：IDEA 2019
- 版本管理工具：Maven

## 项目技术架构(Spring + SpringMVC + Mybatis)

- Maven
- Spring
- SpringMVC
- Spring Security（登录认证、账户权限管理）
- MyBatis
- Bootstrap

## 目录结构

..\ENTERPRISE_PERMISSION_MANAGEMENT_SYSTEM<br>
├─managementsys_dao									// DAO<br>
│  │  pom.xml<br>
│  │  table_create.sql								// 项目中使用的表<br>
│  └─src<br>
│      ├─main<br>
│      │  ├─java<br>
│      │  │  └─shu<br>
│      │  │      └─dao<br>
│      │  │              IMemberDao.java		 // 用户表操作
│      │  │              IOrdersDao.java		 // 订单表操作
│      │  │              IPermissionDao.java	 // 权限表操作
│      │  │              IProductDao.java		 // 产品表操作
│      │  │              IRoleDao.java			 // 角色表操作
│      │  │              ISysLogDao.java		 // 日志表操作
│      │  │              ITravellerDao.java	     // 旅客表操作
│      │  │              IUserDao.java		     // 用户表操作
│      │  └─resources
│      └─test
│          └─java
├─managementsys_domain					// 实体类
│  │  pom.xml
│  └─src
│      ├─main
│      │  ├─java
│      │  │  └─shu
│      │  │      └─domain
│      │  │              Member.java			// 会员
│      │  │              Orders.java			// 订单				
│      │  │              Permission.java	    // 权限
│      │  │              Product.java			// 产品
│      │  │              Role.java				// 角色
│      │  │              SysLog.java			// 日志
│      │  │              Traveller.java		    // 旅客
│      │  │              UserInfo.java		    // 用户
│      │  └─resources
│      └─test
│          └─java
├─managementsys_service			// 业务层
│  │  pom.xml
│  └─src
│      ├─main
│      │  ├─java
│      │  │  └─shu
│      │  │      └─service
│      │  │          │  IOrdersService.java
│      │  │          │  IPermissionService.java
│      │  │          │  IProductService.java
│      │  │          │  IRoleService.java
│      │  │          │  ISysLogService.java
│      │  │          │  IUserService.java
│      │  │          └─impl
│      │  │                  OrdersServiceImpl.java
│      │  │                  PermissionServiceImpl.java
│      │  │                  ProductServiceImpl.java
│      │  │                  RoleServiceImpl.java
│      │  │                  SysLogServiceImpl.java
│      │  │                  UserServiceImpl.java
│      │  └─resources
│      └─test
│          └─java
├─managementsys_utils			// 工具类
│  │  pom.xml
│  │  
│  └─src
│      ├─main
│      │  ├─java
│      │  │  └─shu
│      │  │      └─utils
│      │  │              BCryptPasswordEncoderUtils.java
│      │  │              DateUtils.java
│      │  └─resources
│      └─test
│          └─java
├─managementsys_web
│  │  pom.xml
│  └─src
│      └─main
│          ├─java
│          │  └─shu
│          │      └─controller
│          │              LogAop.java
│          │              OrdersController.java
│          │              PermissionController.java
│          │              ProductController.java
│          │              RoleController.java
│          │              SysLogController.java
│          │              UserController.java
│          ├─resources
│          │      applicationContext.xml	    // Spring配置文件
│          │      db.properties					// 数据库相关文件
│          │      log4j.properties
│          │      spring-mvc.xml				// SpringMVC配置文件
│          │      spring-security.xml		    // Spring-Security配置文件
│          └─webapp
│              │  403.jsp
│              │  failer.jsp
│              │  index.jsp
│              │  login.jsp
│              ├─css				
│              ├─img
│              ├─pages			        // 页面
│              │      aside.jsp
│              │      header.jsp
│              │      main.jsp
│              │      orders-list.jsp
│              │      orders-page-list.jsp
│              │      orders-show.jsp
│              │      permission-add.jsp
│              │      permission-list.jsp
│              │      permission-show.jsp
│              │      product-add.jsp
│              │      product-list.jsp
│              │      role-add.jsp
│              │      role-list.jsp
│              │      role-permission-add.jsp
│              │      role-show.jsp
│              │      syslog-list.jsp
│              │      user-add.jsp
│              │      user-list.jsp
│              │      user-role-add.jsp
│              │      user-show.jsp
│              ├─plugins				// 插件
│              └─WEB-INF
│                      web.xml
└─src
    ├─main
    │  ├─java
    │  └─resources
    └─test
        └─java

