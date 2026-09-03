.class Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$3;
.super Ljava/lang/Object;
.source "ContentLayer.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$3;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 2

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$3;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getTabName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 95
    iget-object p0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setLongClickable(Z)V

    .line 97
    const-string p2, ""

    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getChildCount()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
