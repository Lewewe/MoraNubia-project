.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$DefaultMediaPlayerControl;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaController"


# instance fields
.field private ivCover:Landroid/widget/ImageView;

.field private loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

.field private mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$MediaPlayerControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$DefaultMediaPlayerControl;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$DefaultMediaPlayerControl;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$MediaPlayerControl;

    return-void
.end method


# virtual methods
.method public getCoverView()Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->ivCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_loading:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/LoadingView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

    .line 42
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_cover:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->ivCover:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewHolderAttachedFromWindow()V
    .locals 2

    .line 55
    const-string v0, "MediaController"

    const-string v1, "onViewAttachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->updateLoadingUI(Z)V

    .line 57
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$MediaPlayerControl;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$MediaPlayerControl;->loadImageResource()V

    return-void
.end method

.method public onViewHolderDetachedFromWindow()V
    .locals 2

    .line 61
    const-string v0, "MediaController"

    const-string v1, "onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->updateLoadingUI(Z)V

    return-void
.end method

.method public setMediaPlayer(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$MediaPlayerControl;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->mediaPlayerControl:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController$MediaPlayerControl;

    return-void
.end method

.method public updateLoadingUI(Z)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->loadingView:Lcn/nubia/redmagickyi/view/LoadingView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/LoadingView;->setVisibility(I)V

    return-void
.end method
