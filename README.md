<dependency>
    <groupId>org.glassfish.jersey.inject</groupId>
    <artifactId>jersey-hk2</artifactId>
</dependency>

is necessary. If absent, the following error will appear:

2018 03 06 17:24:12#+00#ERROR#org.apache.catalina.core.ContainerBase.[Catalina].[localhost].[/MinJersey-1.0-SNAPSHOT].[az.minjersey.DemoApplication]##anonymous#https-jsse-nio-8041-exec-6#na#p0123456789trial#minjersey#web#p0123456789trial#na#na#na#na#Allocate exception for servlet [az.minjersey.DemoApplication] java.lang.IllegalStateException: InjectionManagerFactory not found.
	at org.glassfish.jersey.internal.inject.Injections.lambda$lookupInjectionManagerFactory$0(Injections.java:98)
	at java.util.Optional.orElseThrow(Optional.java:290)
	at org.glassfish.jersey.internal.inject.Injections.lookupInjectionManagerFactory(Injections.java:98)
	at org.glassfish.jersey.internal.inject.Injections.createInjectionManager(Injections.java:93)
	at org.glassfish.jersey.server.ApplicationHandler.<init>(ApplicationHandler.java:282)
	at org.glassfish.jersey.servlet.WebComponent.<init>(WebComponent.java:335)
	at org.glassfish.jersey.servlet.ServletContainer.init(ServletContainer.java:178)
	at org.glassfish.jersey.servlet.ServletContainer.init(ServletContainer.java:370)
	at javax.servlet.GenericServlet.init(GenericServlet.java:158)
	at org.apache.catalina.core.StandardWrapper.initServlet(StandardWrapper.java:1183)
	at org.apache.catalina.core.StandardWrapper.allocate(StandardWrapper.java:795)
	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:133)
	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)
	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:504)
	at com.sap.cloud.runtime.impl.bridge.security.AbstractAuthenticator.invoke(AbstractAuthenticator.java:206)
	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)
	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:650)
	at com.sap.core.tenant.valve.TenantValidationValve.invokeNextValve(TenantValidationValve.java:182)
	at com.sap.core.tenant.valve.TenantValidationValve.invoke(TenantValidationValve.java:97)
	at com.sap.js.statistics.tomcat.valve.RequestTracingValve.callNextValve(RequestTracingValve.java:101)
	at com.sap.js.statistics.tomcat.valve.RequestTracingValve.invoke(RequestTracingValve.java:57)
	at com.sap.core.js.monitoring.tomcat.valve.RequestTracingValve.invoke(RequestTracingValve.java:27)
	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)
	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)
	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)
	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)
	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)
	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)
	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1459)
	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)
	at java.lang.Thread.run(Thread.java:808)
|

See also

	https://stackoverflow.com/questions/44088493/jersey-stopped-working-with-injectionmanagerfactory-not-found

----

    <properties>
        <sap.cloud.runtime>neo-java-web</sap.cloud.runtime>
        <sap.cloud.java.version>8</sap.cloud.java.version>
        <maven.compiler.source>1.8</maven.compiler.source>
        <maven.compiler.target>1.8</maven.compiler.target>

help to avoid 

	has been compiled by a more recent version of the Java Runtime (class file version 52.0), this version of the Java Runtime only recognizes class file versions up to 51.0

error

2018 03 06 17:12:55#+00#ERROR#org.apache.catalina.core.ContainerBase##anonymous#localhost-startStop-1#na#p0123456789trial#minjersey#web##na#na#na#na#ContainerBase.addChild: start:  org.apache.catalina.LifecycleException: Failed to start component [StandardEngine[Catalina].StandardHost[localhost].StandardContext[/MinJersey]]
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:167)
	at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:752)
	at org.apache.catalina.core.ContainerBase.addChild(ContainerBase.java:728)
	at org.apache.catalina.core.StandardHost.addChild(StandardHost.java:734)
	at org.apache.catalina.startup.HostConfig.deployWAR(HostConfig.java:986)
	at org.apache.catalina.startup.HostConfig$DeployWar.run(HostConfig.java:1857)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1152)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:622)
	at java.lang.Thread.run(Thread.java:807)
Caused by: java.lang.UnsupportedClassVersionError: org/glassfish/jersey/servlet/init/JerseyServletContainerInitializer has been compiled by a more recent version of the Java Runtime (class file version 52.0), this version of the Java Runtime only recognizes class file versions up to 51.0 (unable to load class [org.glassfish.jersey.servlet.init.JerseyServletContainerInitializer])
	at org.apache.catalina.loader.WebappClassLoaderBase.findClassInternal(WebappClassLoaderBase.java:2288)
	at org.apache.catalina.loader.WebappClassLoaderBase.findClass(WebappClassLoaderBase.java:811)
	at org.apache.catalina.loader.WebappClassLoaderBase.loadClass(WebappClassLoaderBase.java:1260)
	at org.apache.catalina.loader.WebappClassLoaderBase.loadClass(WebappClassLoaderBase.java:1119)
	at java.lang.Class.forName0(Native Method)
	at java.lang.Class.forNameFW(Class.java:288)
	at java.lang.Class.forName(Class.java:281)
	at org.apache.catalina.startup.WebappServiceLoader.loadServices(WebappServiceLoader.java:188)
	at org.apache.catalina.startup.WebappServiceLoader.load(WebappServiceLoader.java:159)
	at org.apache.catalina.startup.ContextConfig.processServletContainerInitializers(ContextConfig.java:1622)
	at org.apache.catalina.startup.ContextConfig.webConfig(ContextConfig.java:1135)
	at org.apache.catalina.startup.ContextConfig.configureStart(ContextConfig.java:775)
	at org.apache.catalina.startup.ContextConfig.lifecycleEvent(ContextConfig.java:299)
	at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:94)
	at org.apache.catalina.core.StandardContext.startInternal(StandardContext.java:5105)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:150)
	... 10 common frames omitted
|
2018 03 06 17:12:55#+00#ERROR#org.apache.catalina.startup.HostConfig##anonymous#localhost-startStop-1#na#p0123456789trial#minjersey#web##na#na#na#na#Error deploying web application archive [/usr/sap/ljs/webapps/MinJersey.war] java.lang.IllegalStateException: ContainerBase.addChild: start: org.apache.catalina.LifecycleException: Failed to start component [StandardEngine[Catalina].StandardHost[localhost].StandardContext[/MinJersey]]
	at org.apache.catalina.core.ContainerBase.addChildInternal(ContainerBase.java:756)
	at org.apache.catalina.core.ContainerBase.addChild(ContainerBase.java:728)
	at org.apache.catalina.core.StandardHost.addChild(StandardHost.java:734)
	at org.apache.catalina.startup.HostConfig.deployWAR(HostConfig.java:986)
	at org.apache.catalina.startup.HostConfig$DeployWar.run(HostConfig.java:1857)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1152)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:622)
	at java.lang.Thread.run(Thread.java:807)
|

See also
	https://answers.sap.com/questions/41330/hcp-java-runtime-510-vs-520.html
	https://stackoverflow.com/questions/10382929/how-to-fix-java-lang-unsupportedclassversionerror-unsupported-major-minor-versi

Java SE 9 = 53,
Java SE 8 = 52,
Java SE 7 = 51,
Java SE 6.0 = 50,
Java SE 5.0 = 49,
JDK 1.4 = 48,
JDK 1.3 = 47,
JDK 1.2 = 46,
JDK 1.1 = 45

----

Links
	https://tools.hana.ondemand.com/