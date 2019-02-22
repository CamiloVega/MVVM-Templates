package ${packageName}.renderer;

import android.view.View
import android.view.ViewGroup
import kotlinx.android.synthetic.main.${itemLayoutName}.view.*
import javax.inject.Inject

class ${itemName}Renderer @Inject constructor(): ItemRenderer<${itemName}RecyclerItem> {

    override fun getLayoutId(): Int =
        R.layout.${itemLayoutName}

    override fun createView(parent: ViewGroup): View =
        parent.inflate(getLayoutId(), false) //this is a kotlin extension

    override fun render(itemView: View, item: ${itemName}RecyclerItem) =
        bind(itemView, item)

    private fun bind(view: View, data: ${itemName}RecyclerItem) {
        view.text_view.text = "What's up world"
       //Populate the data in your view
    }

    companion object {
        const val RENDER_KEY = "${itemName}Renderer"
    }
}