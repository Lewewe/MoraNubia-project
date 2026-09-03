.class public Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "WallPaperPetActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COUNT_DOWN_KEYS:[Ljava/lang/String;

.field private static final MSG_SEND_CONFIG:I = 0x1

.field private static final SCALE_FOCUSED:F = 1.0f

.field private static final SCALE_UNFOCUSED:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "VideoPlayerActivity"


# instance fields
.field private commitLatch:Ljava/util/concurrent/CountDownLatch;

.field private config:Ljava/lang/String;

.field private focusedStyleBean:Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

.field private handler:Landroid/os/Handler;

.field private isEnableCommitLatch:Z

.field private isUnityPlayerDestroyed:Z

.field private ivPreviewStyleOne:Landroid/widget/ImageView;

.field private ivPreviewStyleOneSelected:Landroid/widget/ImageView;

.field private ivPreviewStyleTwo:Landroid/widget/ImageView;

.field private ivPreviewStyleTwoSelected:Landroid/widget/ImageView;

.field private layoutBack:Landroid/view/View;

.field private layoutFront:Landroid/view/View;

.field private layoutStyleGroup:Landroid/view/View;

.field private layoutStyleOne:Landroid/view/View;

.field private layoutStyleTwo:Landroid/view/View;

.field private loadingText:Landroid/widget/TextView;

.field private loadingView:Landroid/widget/LinearLayout;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private modleinitfinish:Z

.field private petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

.field private rotate:Landroid/widget/ImageView;

.field private tvCommit:Landroid/widget/TextView;

.field private tvUsingOne:Landroid/widget/TextView;

.field private tvUsingTwo:Landroid/widget/TextView;

.field private unityView:Landroid/view/ViewGroup;

.field private wallpaperForgoundView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WallpaperDoll3DBG"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WallpaperDoll3DLock"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->COUNT_DOWN_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->config:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isUnityPlayerDestroyed:Z

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->modleinitfinish:Z

    .line 79
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isEnableCommitLatch:Z

    .line 81
    new-instance v0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$1;-><init>(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->performChangeSkin(Z)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->commitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->COUNT_DOWN_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isEnableCommitLatch:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->setWallPaperInner()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->loadingView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->wallpaperForgoundView:Landroid/view/View;

    return-object p0
.end method

.method private destroyUnity()V
    .locals 1

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isUnityPlayerDestroyed:Z

    .line 448
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method private focusInAnim(Landroid/view/View;)V
    .locals 7

    .line 241
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x64

    .line 242
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 243
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 244
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

    .line 245
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private focusOutAnim(Landroid/view/View;)V
    .locals 7

    .line 249
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x64

    .line 250
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 251
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    .line 252
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

    .line 253
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 169
    new-instance v0, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    .line 170
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->finish()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutStyleGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutStyleGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->findPetStyle(I)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object v0

    .line 178
    iget-object v2, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleOne:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getTechcenterThumbnailResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->findPetStyle(I)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object v0

    .line 180
    iget-object v2, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleTwo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getTechcenterThumbnailResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    .line 184
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->updateFocusedStyle(Z)V

    .line 185
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->updateUsingStyle()V

    .line 186
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->updateCommitState()V

    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 368
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 p1, 0x0

    const/4 v1, 0x0

    move v2, p1

    .line 369
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 371
    const-string v4, "msgID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_0

    .line 373
    :cond_0
    const-string v4, "config"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 380
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    const/16 v0, 0x7d0

    if-ne v2, v0, :cond_3

    .line 382
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isUnityPlayerDestroyed:Z

    if-nez v0, :cond_3

    .line 383
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    :cond_3
    const/16 v0, 0x7d7

    if-ne v2, v0, :cond_4

    .line 386
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isUnityPlayerDestroyed:Z

    if-nez v0, :cond_4

    .line 387
    new-instance v0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$4;-><init>(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->performChangeSkin(Z)V

    .line 397
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 398
    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getOpenAntiAliasing()Z

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->setOpenAntiAliasing(ZZ)V

    .line 399
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->sendPreviewMessageToUnity(Z)V

    .line 401
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->modleinitfinish:Z

    :cond_4
    const/16 p1, 0x7d8

    if-ne v2, p1, :cond_5

    .line 404
    iput-object v1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->config:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method private performChangeSkin(Z)V
    .locals 2

    .line 230
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->modleinitfinish:Z

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->setPetStyle(IZ)V

    .line 234
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->sendSceneConfigToUnity(Landroid/content/Context;)V

    return-void
.end method

.method private setWallPaperInner()V
    .locals 5

    .line 306
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isEnableCommitLatch:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->COUNT_DOWN_KEYS:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->commitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 309
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->sendPreviewMessageToUnity(Z)V

    .line 310
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->config:Ljava/lang/String;

    const-string v2, "VideoPlayerActivity"

    if-eqz v0, :cond_2

    .line 311
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSystemApplication()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->config:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->saveWallPaperConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_1
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->config:Ljava/lang/String;

    invoke-virtual {v0, p0, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->saveWallPaperConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "saveWallPaperConfig success, config = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->config:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 318
    :cond_2
    const-string v0, "no need to saveWallPaperConfig"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_1
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->performChangeSkin(Z)V

    .line 321
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->commitLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setIamgeWallpaper(Landroid/content/Context;)V

    .line 324
    :cond_3
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaper(Landroid/content/Context;ZZ)V

    .line 325
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->updateUsingStyle()V

    .line 326
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->updateCommitState()V

    .line 327
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result v2

    const-string v3, "mora_pet_setting"

    const-string v4, "pet_name"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 332
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->commitLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_5

    .line 333
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 338
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->finish()V

    return-void
.end method

.method private updateCommitState()V
    .locals 0

    return-void
.end method

.method private updateFocusedStyle(Z)V
    .locals 4

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutStyleOne:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusOutAnim(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutStyleTwo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusInAnim(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleOneSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleTwoSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutStyleOne:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusInAnim(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutStyleTwo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusOutAnim(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleOneSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleTwoSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_1

    .line 221
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->performChangeSkin(Z)V

    goto :goto_1

    .line 223
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method private updateUsingStyle()V
    .locals 4

    .line 190
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 194
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->tvUsingOne:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->tvUsingTwo:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->tvUsingOne:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->tvUsingTwo:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->tvUsingOne:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->tvUsingTwo:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 523
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 524
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 526
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTouch action = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isUnityPlayerDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 535
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 3

    .line 420
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->finish()V

    .line 422
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from_mainpage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    .line 426
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_enter:I

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->overridePendingTransition(II)V

    .line 428
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->destroyUnity()V

    .line 429
    const-string p0, "VideoPlayerActivity"

    const-string v0, "onBackPressed end"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 96
    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    move-result-object p1

    new-instance p2, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$2;-><init>(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->setCallback(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;)Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    move-result-object p0

    return-object p0
.end method

.method public initView()V
    .locals 2

    .line 132
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_front:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutFront:Landroid/view/View;

    .line 133
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutBack:Landroid/view/View;

    .line 134
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_style_group:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutStyleGroup:Landroid/view/View;

    .line 136
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_style_one:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutStyleOne:Landroid/view/View;

    .line 137
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_style_two:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutStyleTwo:Landroid/view/View;

    .line 139
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_style_one:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleOne:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_style_one_selected:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleOneSelected:Landroid/widget/ImageView;

    .line 142
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_style_two:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleTwo:Landroid/widget/ImageView;

    .line 143
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_preview_style_two_selected:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->ivPreviewStyleTwoSelected:Landroid/widget/ImageView;

    .line 144
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_using_one:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->tvUsingOne:Landroid/widget/TextView;

    .line 145
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_using_two:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->tvUsingTwo:Landroid/widget/TextView;

    .line 146
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_commit:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->tvCommit:Landroid/widget/TextView;

    .line 147
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->ll_root:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wallpaper_foreground:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->wallpaperForgoundView:Landroid/view/View;

    .line 151
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->loadingView:Landroid/widget/LinearLayout;

    .line 152
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_rotate:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->rotate:Landroid/widget/ImageView;

    .line 153
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->rotate:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 155
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_text:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->loadingText:Landroid/widget/TextView;

    .line 156
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_loading_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    invoke-direct {v0, p0, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 160
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->unityView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 161
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->unityView:Landroid/view/ViewGroup;

    .line 162
    iget-object v1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 165
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 259
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit:I

    if-ne p1, v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 261
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->ll_root:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 262
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutFront:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 263
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutFront:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 264
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutFront:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 266
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutFront:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->layoutFront:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 269
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_commit:I

    if-ne p1, v0, :cond_5

    .line 270
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 271
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->setWallPaperInner()V

    goto :goto_0

    .line 273
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->isDesktopPetNeedRemindSetWallPaper()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 274
    new-instance p1, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;

    new-instance v0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$3;-><init>(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;)V

    .line 282
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->show()V

    goto :goto_0

    .line 284
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->setWallPaperInner()V

    goto :goto_0

    .line 287
    :cond_5
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_style_one:I

    if-ne p1, v0, :cond_6

    .line 288
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->findPetStyle(I)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 290
    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    .line 291
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->updateFocusedStyle(Z)V

    .line 292
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->updateCommitState()V

    goto :goto_0

    .line 294
    :cond_6
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_preview_style_two:I

    if-ne p1, v0, :cond_7

    .line 296
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->petStyleManager:Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->findPetStyle(I)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 298
    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->focusedStyleBean:Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    .line 299
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->updateFocusedStyle(Z)V

    .line 300
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->updateCommitState()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 510
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 511
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->wallpaper_layout_pet:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->initView()V

    .line 128
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 436
    const-string v0, "onDestroy begin"

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isUnityPlayerDestroyed:Z

    if-eqz v0, :cond_0

    .line 438
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    goto :goto_0

    .line 440
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->destroyUnity()V

    .line 442
    :goto_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 443
    const-string p0, "onDestroy end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 494
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onLowMemory()V

    .line 495
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 343
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 349
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->setIntent(Landroid/content/Intent;)V

    .line 350
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    .line 351
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 463
    const-string v0, "VideoPlayerActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isUnityPlayerDestroyed:Z

    if-eqz v0, :cond_0

    .line 465
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_1

    .line 468
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    .line 470
    :cond_1
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    :goto_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 485
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 486
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isUnityPlayerDestroyed:Z

    if-nez p1, :cond_0

    .line 487
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/PetFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 477
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 478
    const-string v0, "VideoPlayerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 480
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 453
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    .line 454
    const-string v0, "VideoPlayerActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 501
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 503
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 517
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onWindowFocusChanged(Z)V

    .line 518
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method
