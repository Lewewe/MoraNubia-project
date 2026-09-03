.class public Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "PowerChargeVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_PLAY_VIDEO:I = 0x1

.field private static final SCALE_FOCUSED:F = 1.0f

.field private static final SCALE_UNFOCUSED:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "VideoPlayerActivity"

.field public static VIDEO_PATH_KEY:Ljava/lang/String; = "VIDEO_PATH_KEY"


# instance fields
.field private chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

.field private focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

.field private handler:Landroid/os/Handler;

.field private ivPreviewStyleOne:Landroid/widget/ImageView;

.field private ivPreviewStyleOneSelected:Landroid/widget/ImageView;

.field private ivPreviewStyleTwo:Landroid/widget/ImageView;

.field private ivPreviewStyleTwoSelected:Landroid/widget/ImageView;

.field private layoutBack:Landroid/view/View;

.field private layoutFront:Landroid/view/View;

.field private layoutStyleOne:Landroid/view/View;

.field private layoutStyleTwo:Landroid/view/View;

.field private mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

.field private tvCommit:Landroid/widget/TextView;

.field private tvUsingOne:Landroid/widget/TextView;

.field private tvUsingTwo:Landroid/widget/TextView;

.field private videoPathBase:Ljava/lang/String;

.field private videoPathBaseLandscape:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 42
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity$1;-><init>(Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->performPlayVideo()V

    return-void
.end method

.method private focusInAnim(Landroid/view/View;)V
    .locals 7

    .line 218
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x64

    .line 219
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 220
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 221
    new-array v1, v0, [Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v2

    const-string v6, "scaleX"

    invoke-static {p1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    new-array v0, v0, [F

    aput v3, v0, v4

    aput v5, v0, v2

    const-string v3, "scaleY"

    invoke-static {p1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 222
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private focusOutAnim(Landroid/view/View;)V
    .locals 7

    .line 226
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x64

    .line 227
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 228
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 229
    new-array v1, v0, [Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    const v5, 0x3f666666    # 0.9f

    aput v5, v3, v2

    const-string v6, "scaleX"

    invoke-static {p1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    new-array v0, v0, [F

    aput v3, v0, v4

    aput v5, v0, v2

    const-string v3, "scaleY"

    invoke-static {p1, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 230
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private getSettingsInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 301
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initData()V
    .locals 4

    .line 128
    new-instance v0, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->findChargeStyle(I)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleOne:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getTechcenterThumbnailResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleOneSelected:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getTechcenterThumbnailSelectedResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->findChargeStyle(I)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleTwo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getTechcenterThumbnailResId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleTwoSelected:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getTechcenterThumbnailSelectedResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyle()Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    .line 137
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->updateFocusedStyle(Z)V

    .line 138
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->updateUsingStyle()V

    .line 139
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->updateCommitState()V

    return-void
.end method

.method private static isValidPath(Ljava/lang/String;)Z
    .locals 1

    .line 144
    const-string v0, "^[a-zA-Z0-9._%+-]+(/[^/\\\\:]*?)*$"

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private performPlayVideo()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBaseLandscape:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBaseLandscape:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getTechcenterVideoName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBase:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getTechcenterVideoName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/util/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/util/VideoView;->openVideo(Ljava/lang/String;)V

    return-void
.end method

.method private putSettingsInt(Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 296
    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private updateCommitState()V
    .locals 3

    .line 192
    const-string v0, "magic_power_charge"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getSettingsInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyle()Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 194
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvCommit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvCommit:Landroid/widget/TextView;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_btn_disable:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvCommit:Landroid/widget/TextView;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->app_start_commit_btn_selector:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvCommit:Landroid/widget/TextView;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->app_start_commit_btn_selector:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateFocusedStyle(Z)V
    .locals 5

    .line 166
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutStyleOne:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusOutAnim(Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutStyleTwo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusInAnim(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleOne:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleOneSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleTwoSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutStyleOne:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusInAnim(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutStyleTwo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusOutAnim(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleOne:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleOneSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleTwoSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_1

    .line 184
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->performPlayVideo()V

    goto :goto_1

    .line 186
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method private updateUsingStyle()V
    .locals 4

    .line 149
    const-string v0, "magic_power_charge"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getSettingsInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyle()Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvUsingOne:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvUsingTwo:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvUsingOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvUsingTwo:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvUsingOne:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvUsingTwo:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 2

    .line 82
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_front:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutFront:Landroid/view/View;

    .line 83
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutBack:Landroid/view/View;

    .line 84
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_style_one:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutStyleOne:Landroid/view/View;

    .line 86
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_style_two:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutStyleTwo:Landroid/view/View;

    .line 88
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_style_one:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleOne:Landroid/widget/ImageView;

    .line 90
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_style_one_selected:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleOneSelected:Landroid/widget/ImageView;

    .line 91
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_style_two:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleTwo:Landroid/widget/ImageView;

    .line 92
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_style_two_selected:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->ivPreviewStyleTwoSelected:Landroid/widget/ImageView;

    .line 93
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_using_one:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvUsingOne:Landroid/widget/TextView;

    .line 94
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_using_two:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvUsingTwo:Landroid/widget/TextView;

    .line 95
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_commit:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->tvCommit:Landroid/widget/TextView;

    .line 96
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->videoview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/util/VideoView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->mVideoview:Lcn/nubia/redmagickyi/util/VideoView;

    .line 98
    new-instance v1, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity$2;-><init>(Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/VideoView;->setOnPlayListener(Lcn/nubia/redmagickyi/util/VideoView$OnPlayListener;)V

    .line 124
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->ll_root:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 283
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 236
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit:I

    if-ne p1, v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 238
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->ll_root:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 239
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutFront:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 240
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutFront:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutFront:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutFront:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->layoutFront:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 246
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_commit:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    .line 247
    const-string p1, "magic_power_charge"

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getSettingsInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getChargeStyle()Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 248
    :cond_3
    invoke-direct {p0, p1, v2}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->putSettingsInt(Ljava/lang/String;I)V

    .line 249
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {p1, v0, v2}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->setChargeStyle(Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;Z)V

    .line 250
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->updateUsingStyle()V

    .line 251
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->updateCommitState()V

    .line 252
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->finish()V

    goto :goto_0

    .line 254
    :cond_4
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_style_one:I

    if-ne p1, v0, :cond_5

    .line 255
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->findChargeStyle(I)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    .line 256
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 257
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    .line 258
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->updateFocusedStyle(Z)V

    .line 259
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->updateCommitState()V

    goto :goto_0

    .line 261
    :cond_5
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_style_two:I

    if-ne p1, v0, :cond_6

    .line 263
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->chargeStyleManager:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->findChargeStyle(I)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 265
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    .line 266
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->updateFocusedStyle(Z)V

    .line 267
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->updateCommitState()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 59
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->setRequestedOrientationFromAndroid(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 61
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->setRequestedOrientationFromAndroid(I)V

    .line 63
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->activity_video_player_power_charge:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->setContentView(I)V

    if-eqz p1, :cond_1

    .line 65
    sget-object v0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->VIDEO_PATH_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBase:Ljava/lang/String;

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->VIDEO_PATH_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBase:Ljava/lang/String;

    .line 70
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBase:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->isValidPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 73
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBase:Ljava/lang/String;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBase:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_landscape"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBase:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBaseLandscape:Ljava/lang/String;

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->initView()V

    .line 78
    invoke-direct {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->initData()V

    goto :goto_2

    .line 71
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->finish()V

    :goto_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 274
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 276
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 278
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->VIDEO_PATH_KEY:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->videoPathBase:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 288
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    .line 289
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/PowerChargeVideoPlayerActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
