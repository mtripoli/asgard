<%--

    Copyright 2012 Netflix, Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <title>Instance Types</title>
</head>
<body>
  <div class="body">
    <h1>Instance types and hourly prices in ${region.description}</h1>
    <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
    </g:if>
    <div class="list">
      <div class="buttons"></div>
      <table class="sortable instanceType">
        <tr>
          <th>Name</th>
          <th>Family</th>
          <th>Group</th>
          <th>Size</th>
          <th>Arch</th>
          <th>vCPU</th>
          <th>ECU</th>
          <th>Mem<br/>(GB)</th>
          <th>Storage<br/>(GB)</th>
          <th>EBS<br/>Optim<br/>Avail</th>
          <th>Network<br/>Perf</th>
          <th>Linux<br/>On<br/>Dem</th>
          <th>Linux<br/>Res</th>
          <th>Linux<br/>Spot</th>
          <th>Win<br/>On<br/>Dem</th>
          <th>Win<br/>Res</th>
          <th>Win<br/>Spot</th>
        </tr>
        <g:each in="${instanceTypes}" var="instanceType">
          <tr>
            <td>${instanceType.name}</td>
            <td class="family">${instanceType.hardwareProfile?.family}</td>
            <td class="group">${instanceType.hardwareProfile?.group}</td>
            <td class="size">${instanceType.hardwareProfile?.size}</td>
            <td class="architecture">${instanceType.hardwareProfile?.arch}</td>
            <td class="cpu">${instanceType.hardwareProfile?.vCpu}</td>
            <td>${instanceType.hardwareProfile?.ecu}</td>
            <td>${instanceType.hardwareProfile?.mem}</td>
            <td class="storage">${instanceType.hardwareProfile?.storage}</td>
            <td>${instanceType.hardwareProfile?.ebsOptim}</td>
            <td class="netPerf">${instanceType.hardwareProfile?.netPerf}</td>
            <td><g:formatNumber number="${instanceType.linuxOnDemandPrice}" type="currency" currencyCode="USD" /></td>
            <td><g:formatNumber number="${instanceType.linuxReservedPrice}" type="currency" currencyCode="USD" /></td>
            <td><g:formatNumber number="${instanceType.linuxSpotPrice}" type="currency" currencyCode="USD" /></td>
            <td><g:formatNumber number="${instanceType.windowsOnDemandPrice}" type="currency" currencyCode="USD" /></td>
            <td><g:formatNumber number="${instanceType.windowsReservedPrice}" type="currency" currencyCode="USD" /></td>
            <td><g:formatNumber number="${instanceType.windowsSpotPrice}" type="currency" currencyCode="USD" /></td>
          </tr>
        </g:each>
      </table>
    </div>
  </div>
</body>
</html>
