package ${packageName}.model

import ${packageName}.renderer.${itemName}Renderer.Companion.RENDER_KEY

//The Id must be Unique!
data class ${itemName}DisplayData (val id: Int): RecyclerItem {
    override fun getId(): Long =
        id.toLong()

    override fun getRendererKey(): String =
        RENDER_KEY

     override fun getItemsHash(): Int =
         hashCode()
}