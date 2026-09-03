.class public Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;
.super Ljava/lang/Object;
.source "ResourceUpdateLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;,
        Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$State;
    }
.end annotation


# static fields
.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_READY:I


# instance fields
.field private context:Landroid/app/Activity;

.field private inflate:Landroid/view/View;

.field private ivUpdateIcon:Landroid/widget/ImageView;

.field private onEventListener:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;

.field private resourceUpgradeManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

.field private rootInAnimation:Landroid/view/animation/Animation;

.field private rootOutAnimation:Landroid/view/animation/Animation;

.field private state:I

.field private updateProgressBar:Lcn/nubia/redmagickyi/view/UpdateProgressBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->context:Landroid/app/Activity;

    .line 42
    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->onEventListener:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;

    .line 43
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->rootInAnimation:Landroid/view/animation/Animation;

    .line 44
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->rootOutAnimation:Landroid/view/animation/Animation;

    .line 45
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    if-nez p1, :cond_0

    .line 46
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->initView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initState(I)V
    .locals 3

    .line 84
    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->state:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->startDownload()V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->updateProgressBar:Lcn/nubia/redmagickyi/view/UpdateProgressBar;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->context:Landroid/app/Activity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->resource_update_layout_ready_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->context:Landroid/app/Activity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->resource_update_layout_ready_detail:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->setProgressAndText(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->ivUpdateIcon:Landroid/widget/ImageView;

    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_download_update:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    .line 74
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_resource_update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pb_update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/UpdateProgressBar;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->updateProgressBar:Lcn/nubia/redmagickyi/view/UpdateProgressBar;

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->context:Landroid/app/Activity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->resource_update_layout_ready_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->context:Landroid/app/Activity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->resource_update_layout_ready_detail:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->updateProgressBar:Lcn/nubia/redmagickyi/view/UpdateProgressBar;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->setMax(I)V

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->ivUpdateIcon:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setProgress(I)V
    .locals 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->updateProgressBar:Lcn/nubia/redmagickyi/view/UpdateProgressBar;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getMin()I

    move-result v1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->updateProgressBar:Lcn/nubia/redmagickyi/view/UpdateProgressBar;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->getMax()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    div-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->updateProgressBar:Lcn/nubia/redmagickyi/view/UpdateProgressBar;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->context:Landroid/app/Activity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->resource_update_layout_downloading_detail:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->setProgressAndText(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startDownload()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->ivUpdateIcon:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_pause_update:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->setProgress(I)V

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->resourceUpgradeManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;->startDownload(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager$OnUpgradeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss(Z)Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 67
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->rootOutAnimation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 68
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->rootOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getState()I
    .locals 0

    .line 163
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->state:I

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 167
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 103
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_update:I

    if-ne p1, v0, :cond_0

    .line 104
    iget p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->state:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->initState(I)V

    goto :goto_0

    .line 107
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_resource_update:I

    if-ne p1, v0, :cond_1

    .line 108
    iget p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->state:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->onEventListener:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;

    if-eqz p1, :cond_1

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->resourceUpgradeManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;->onClicked(Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDownloadFailed()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->ivUpdateIcon:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_error_update:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->updateProgressBar:Lcn/nubia/redmagickyi/view/UpdateProgressBar;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->context:Landroid/app/Activity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->resource_update_layout_downloading_error:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->context:Landroid/app/Activity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->resource_update_layout_downloading_detail:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/view/UpdateProgressBar;->setText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 0

    const/16 p1, 0x3e7

    .line 138
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->setProgress(I)V

    return-void
.end method

.method public onDownloading(I)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->ivUpdateIcon:Landroid/widget/ImageView;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_pause_update:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v0, 0x3e7

    .line 133
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->setProgress(I)V

    return-void
.end method

.method public onUnzipFailed()V
    .locals 0

    return-void
.end method

.method public onUnzipSuccess(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 151
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->setProgress(I)V

    .line 152
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->onEventListener:Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;

    if-eqz p0, :cond_0

    .line 153
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer$OnEventListener;->onUpdateFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public performClick()V
    .locals 0

    .line 171
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public show(ILcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;)Z
    .locals 1

    .line 51
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->resourceUpgradeManager:Lcn/nubia/redmagickyi/unity/resource/network/manager/ResourceUpgradeManager;

    .line 52
    iget-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->initState(I)V

    .line 56
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->inflate:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/ResourceUpdateLayer;->rootInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p0, 0x1

    return p0
.end method
