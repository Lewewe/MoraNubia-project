.class public interface abstract Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$MediaPlayerControl;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerControl"
.end annotation


# virtual methods
.method public abstract doPause()Z
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayerShortcut()Landroid/graphics/Bitmap;
.end method

.method public abstract getSavedProgress()Lcn/nubia/redmagickyi/view/videoplayer/progress/ProgressEntry;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getViewToBindedController()Landroid/view/View;
.end method

.method public abstract isCurrentPage()Z
.end method

.method public abstract isInDownloadMode()Z
.end method

.method public abstract loadThumbnail(Landroid/widget/ImageView;)V
.end method

.method public abstract onClickList()V
.end method

.method public abstract onClickRotate()V
.end method

.method public abstract onClickWallpaper()Z
.end method

.method public abstract pauseOrResume()Ljava/lang/Boolean;
.end method

.method public abstract seekTo(F)V
.end method

.method public abstract updateTextView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end method
