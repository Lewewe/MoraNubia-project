.class final Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$DefaultMediaPlayerControl;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultMediaPlayerControl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$1;)V
    .locals 0

    .line 452
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$DefaultMediaPlayerControl;-><init>()V

    return-void
.end method


# virtual methods
.method public doPause()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlayerShortcut()Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSavedProgress()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewToBindedController()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCurrentPage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInDownloadMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public onClickList()V
    .locals 0

    return-void
.end method

.method public onClickRotate()V
    .locals 0

    return-void
.end method

.method public onClickWallpaper()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pauseOrResume()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public seekTo(F)V
    .locals 0

    return-void
.end method

.method public updateTextView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method
