<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    <#if isActivity>
    tools:context="${packageName}.${className}Activity"
    </#if>
    <#if isFragment>
    tools:context="${packageName}.${className}Fragment"
    </#if>
    >

    <!-- TODO: Update blank fragment layout -->
    <TextView
            android:id="@+id/first_text"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:text="HARD CODED STRING :)"/>

</FrameLayout>
