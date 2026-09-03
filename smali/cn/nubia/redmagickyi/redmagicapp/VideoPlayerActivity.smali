.class public Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static DELAYED_FINISH_KEY:Ljava/lang/String; = "DELAYED_FINISH_KEY"

.field private static final TAG:Ljava/lang/String; = "VideoPlayerActivity"

.field static VIDEO_PATH_KEY:Ljava/lang/String; = "VIDEO_PATH_KEY"


# instance fields
.field private delayedFinishDuration:I

.field private handler:Landroid/os/Handler;

.field private mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

.field private videoPath:Ljava/lang/String;

.field private videoPathLandscape:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->delayedFinishDuration:I

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;)I
    .locals 0

    .line 19
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->delayedFinishDuration:I

    return p0
.end method


# virtual methods
.method public initView()V
    .locals 4

    .line 63
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->videoview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/util/VideoView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

    .line 64
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->setFullScreen(Z)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPathLandscape:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPathLandscape:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/VideoView;->setOnPlayListener(Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;)V

    .line 104
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->ll_root:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->delayedFinishDuration:I

    if-lez v0, :cond_2

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->handler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->ll_root:I

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 39
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->setRequestedOrientationFromAndroid(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 41
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->setRequestedOrientationFromAndroid(I)V

    .line 43
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->activity_video_player:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->setContentView(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 45
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->VIDEO_PATH_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPath:Ljava/lang/String;

    .line 46
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->DELAYED_FINISH_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->delayedFinishDuration:I

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->VIDEO_PATH_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPath:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->DELAYED_FINISH_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->delayedFinishDuration:I

    .line 52
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPath:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->finish()V

    goto :goto_1

    .line 55
    :cond_3
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_landscape"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPathLandscape:Ljava/lang/String;

    .line 59
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->initView()V

    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 122
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 124
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->VIDEO_PATH_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->DELAYED_FINISH_KEY:Ljava/lang/String;

    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/VideoPlayerActivity;->delayedFinishDuration:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
