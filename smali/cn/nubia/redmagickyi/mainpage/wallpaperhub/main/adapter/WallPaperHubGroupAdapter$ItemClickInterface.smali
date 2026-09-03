.class public interface abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;
.super Ljava/lang/Object;
.source "WallPaperHubGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemClickInterface"
.end annotation


# virtual methods
.method public abstract onItemClick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public abstract onMoreClick(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSwitchCheckClick(Landroid/view/View;Z)V
.end method

.method public abstract onSwitchCheckTouch(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;Landroid/view/MotionEvent;)Z
.end method
