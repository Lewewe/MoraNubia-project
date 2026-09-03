.class public interface abstract Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;
.super Ljava/lang/Object;
.source "BaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/base/BaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditorPlayerListener"
.end annotation


# virtual methods
.method public abstract getInfo()Lcn/nubia/redmagickyi/crop/VideoEditorInfo;
.end method

.method public abstract onFinish()V
.end method

.method public abstract onPlayPause()V
.end method

.method public abstract onSetAreaCrop(Z)V
.end method

.method public abstract onSetVideoCropArea(Landroid/graphics/RectF;)V
.end method

.method public abstract onTrim(IILandroid/view/View;)V
.end method
