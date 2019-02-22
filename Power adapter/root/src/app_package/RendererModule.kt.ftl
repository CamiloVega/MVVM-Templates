package ${packageName}.module;

import dagger.Binds
import dagger.Module
import dagger.multibindings.IntoMap
import dagger.multibindings.StringKey

import ${packageName}.renderer.${itemName}Renderer.Companion.RENDER_KEY

@Module
abstract class ${itemName}RenderModule {
    Add module to the list of modules on your activity/fragment 

    @Binds
    @IntoMap
    @StringKey(RENDER_KEY)
    internal abstract fun bindRenderer(template: ${itemName}Renderer): ItemRenderer<out RecyclerItem>


<#if includeAdapter>
    Paste this in fragment/activity 
    @Inject
    lateinit var dataSource: RecyclerDataSource

    lateinit var adapter: RecyclerAdapter

    adapter = RecyclerAdapter(dataSource)
    #recycler_view.layoutManager = LinearLayoutManager(this.activity)
    #recycler_view.adapter = adapter
    </#if>
}