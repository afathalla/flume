<!--
 Licensed to Cloudera, Inc. under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  Cloudera, Inc. licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
-->
<html><head>
<!-- Copyright (c) 2010 Cloudera, Inc.  All rights reserved. -->
<!-- Retro web 1.0 flume Agent configuration display -->
<%@ page
	contentType="text/html; charset=UTF-8"
	import="javax.servlet.*"
	import="javax.servlet.http.*"
	import="java.io.*"
	import="java.util.*"
	import="java.text.DecimalFormat"
	import="com.cloudera.flume.VersionInfo"
	import="com.cloudera.flume.agent.FlumeNode"
%>
<link rel="stylesheet" type="text/css" href="/flume.css" />

</head>
<body>
<jsp:include page="menu_agent.jsp" />

<h1> Flume Agent </h1>

<%--
<b>Started:</b> <%= new Date(tracker.getStartTime())%><br>
--%>
<b>Version:</b> <%= VersionInfo.getVersion()%>,
								r<%= VersionInfo.getRevision()%><br>
<b>Compiled:</b> <%= VersionInfo.getDate()%> by
								 <%= VersionInfo.getUser()%><br>
<%--
<b>Identifier:</b> <%= tracker.getTrackerIdentifier()%><br>
--%>



<%= FlumeNode.getInstance().report() %>

</body></html>
