.class Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$1;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ContentLayer.java"


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
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$1;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-direct {p0, p2, p3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$1;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$1;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->access$000(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;->getOrCreateFragment(Landroid/app/Activity;Landroid/os/Bundle;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 68
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer$1;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/ContentLayer;)Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator;->getFragments()[Lcn/nubia/redmagickyi/mainpage/main/util/FragmentCreator$Fragments;

    move-result-object p0

    array-length p0, p0

    return p0
.end method
