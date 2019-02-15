<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />


        <instantiate from="root/res/layout/item_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(itemLayoutName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(itemLayoutName)}.xml" />


    <mkdir at="${escapeXmlAttribute(srcOut)}/renderer" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/model" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/module" />


    <instantiate from="root/src/app_package/RecyclerItem.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${itemName}RecyclerItem.kt" />

    <instantiate from="root/src/app_package/ItemRenderer.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/renderer/${itemName}Renderer.kt" />
                   
    <instantiate from="root/src/app_package/RendererModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/module/${itemName}RenderModule.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/model/${itemName}RecyclerItem.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/renderer/${itemName}Renderer.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/module/${itemName}RenderModule.kt" />

</recipe>
