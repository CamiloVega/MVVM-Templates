<?xml version="1.0"?>
<globals>
<#include "root://other/common/globals.xml.ftl" />
<#include "root://activities/common/kotlin_globals.xml.ftl" />
 <global id="resOut" value="${resDir}" />
 <global id="testOut" value="${testDir}/${slashedPackageName(packageName)}" />
 <global id="androidTest" value="${escapeXmlAttribute(projectOut)}/src/androidTest/java/${slashedPackageName(packageName)}" />
 <global id="unitTestOut" value="${escapeXmlAttribute(projectOut)}/src/test/java/${slashedPackageName(packageName)}" />
 <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
 <global id="modelDirectory" value="${srcDir}/${slashedPackageName(packageName)}/model" />
</globals>