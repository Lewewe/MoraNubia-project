.class public interface abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment$MyCallback;
.super Ljava/lang/Object;
.source "WallPaperHubMoreFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/fragment/WallPaperHubMoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MyCallback"
.end annotation


# virtual methods
.method public abstract gotoPreview(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/PreviewCallback;)V
.end method

.method public abstract markAsNotNewAdd(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;)Z
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
