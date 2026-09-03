.class public interface abstract Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;
.super Ljava/lang/Object;
.source "RedmagicBroadcastSceneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BroadcastSceneClickInterface"
.end annotation


# virtual methods
.method public abstract isPausePlaying()Z
.end method

.method public abstract onBroadcastSceneCheckboxTouch(Landroid/view/View;Ljava/util/List;ILandroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;I",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract onBroadcastSceneCheckedChanged(Landroid/view/View;Ljava/util/List;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract onBroadcastSceneClick(Landroid/view/View;Ljava/util/List;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract onBroadcastSceneRepeatClick(Landroid/view/View;Ljava/util/List;IZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;",
            ">;IZ)Z"
        }
    .end annotation
.end method
