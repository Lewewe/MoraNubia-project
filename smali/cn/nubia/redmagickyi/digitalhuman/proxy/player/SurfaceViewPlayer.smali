.class public Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;
.super Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;
.source "SurfaceViewPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;,
        Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Client-SurfaceViewPlayer"


# instance fields
.field private backgroundView:Landroid/view/SurfaceView;

.field private myView:Landroid/view/ViewGroup;

.field private parentView:Landroid/view/ViewGroup;

.field private scene:Ljava/lang/Integer;

.field private thumbnailView:Landroid/view/SurfaceView;

.field private unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;

.field private unityView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;)V

    .line 38
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;

    .line 42
    const-string p0, "Client-SurfaceViewPlayer"

    const-string p1, "create player"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->checkIfModelRendered()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;)Ljava/lang/Integer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->scene:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;)Landroid/view/SurfaceView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;)Landroid/view/SurfaceView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method private checkIfModelRendered()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->scene:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->onSwitchScene(Ljava/lang/Integer;)V

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;->isModelRendered()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 283
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 287
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 288
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 291
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setScaleX(F)V

    .line 293
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setScaleY(F)V

    .line 296
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;->isModelReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->onModelReady()V

    :cond_3
    :goto_0
    return-void
.end method

.method private createSurfaceView(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)Landroid/view/SurfaceView;
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createSurfaceView, type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client-SurfaceViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 268
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 269
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v1, -0x3

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 271
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    .line 272
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/ViewGroup;Ljava/lang/Boolean;Z)V
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindView, parentView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addViewAgin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client-SurfaceViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->parentView:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 49
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->parentView:Landroid/view/ViewGroup;

    .line 50
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    .line 52
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_8

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    if-nez v0, :cond_2

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Background:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->createSurfaceView(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    if-nez v0, :cond_4

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Thumbnail:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->createSurfaceView(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    if-nez v0, :cond_6

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->createSurfaceView(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    goto :goto_2

    .line 71
    :cond_6
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    :cond_7
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->checkIfModelRendered()V

    :cond_8
    if-nez p3, :cond_a

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 81
    :cond_9
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_a

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    :goto_3
    if-eqz p3, :cond_c

    .line 87
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    if-eqz p3, :cond_c

    .line 89
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_b

    .line 91
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 92
    :cond_b
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eq p3, p1, :cond_c

    .line 93
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_c
    :goto_4
    if-eqz p2, :cond_e

    .line 98
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_5

    .line 101
    :cond_d
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->show()V

    goto :goto_6

    :cond_e
    :goto_5
    const/4 p1, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->hide(Z)V

    :goto_6
    return-void
.end method

.method public clearState()V
    .locals 2

    .line 249
    const-string v0, "Client-SurfaceViewPlayer"

    const-string v1, "clearState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->parentView:Landroid/view/ViewGroup;

    .line 251
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 254
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;

    if-eqz p0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;->restoreState()V

    :cond_1
    return-void
.end method

.method public hide(Z)V
    .locals 2

    .line 207
    const-string v0, "Client-SurfaceViewPlayer"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->setHidden(Z)V

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->parentView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    .line 218
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_2

    .line 219
    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 221
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_3

    .line 222
    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 224
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    if-eqz p0, :cond_4

    .line 225
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onModelReady()V
    .locals 0

    .line 261
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;->onModelReady()V

    return-void
.end method

.method public onSwitchScene(Ljava/lang/Integer;)V
    .locals 6

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSwitchScene, scene: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client-SurfaceViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->scene:Ljava/lang/Integer;

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v2, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v2, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_1

    .line 114
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 115
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 116
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 117
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 124
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v2, :cond_2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v2, :cond_2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v4, :cond_2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_3

    .line 125
    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 126
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 127
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 128
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 129
    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_5

    .line 134
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 135
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v2, :cond_4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v2, :cond_4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v4, :cond_4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_5

    .line 136
    :cond_4
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 137
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 138
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 139
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 140
    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanConstants$Scene;->isAvatarScene(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 146
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {p1, v0, v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->getAvatarLayoutParams(FF)[F

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 148
    aget v0, p1, v3

    float-to-int v0, v0

    .line 149
    aget v2, p1, v2

    float-to-int v2, v2

    const/4 v4, 0x2

    .line 150
    aget v4, p1, v4

    move p1, v2

    move v2, v0

    goto :goto_0

    :cond_6
    move p1, v2

    .line 156
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_8

    .line 157
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 158
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v5, v2, :cond_7

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, p1, :cond_7

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v5, :cond_7

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getScaleX()F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_8

    .line 159
    :cond_7
    const-string v5, "onSwitchScene -> unityView changed"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 161
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 162
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 163
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 164
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$UnityInitReadyListener;->isModelReady()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 166
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v4}, Landroid/view/SurfaceView;->setScaleX(F)V

    .line 167
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setScaleY(F)V

    :cond_8
    return-void
.end method

.method public refreshBackgroundColor()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;

    if-eqz v0, :cond_0

    .line 184
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer$ProxySurfaceCallback;->drawBackground()V

    :cond_0
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setZOrderOnTop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client-SurfaceViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->thumbnailView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 242
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    if-eqz p0, :cond_2

    .line 243
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :cond_2
    return-void
.end method

.method public show()V
    .locals 2

    .line 190
    const-string v0, "Client-SurfaceViewPlayer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->setHidden(Z)V

    .line 192
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->myView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->backgroundView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 202
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->checkIfModelRendered()V

    return-void
.end method

.method public supportedTouchEvent(Z)V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supportedTouchEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client-SurfaceViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->unityView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 177
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/SurfaceViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method
