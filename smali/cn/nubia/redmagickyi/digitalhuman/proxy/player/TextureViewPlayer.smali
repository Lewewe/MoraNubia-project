.class public Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;
.super Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;
.source "TextureViewPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;,
        Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Client-TextureViewPlayer"


# instance fields
.field private backgroundView:Landroid/view/TextureView;

.field private myView:Landroid/view/ViewGroup;

.field private parentView:Landroid/view/ViewGroup;

.field private sOriginalElevation:Ljava/lang/Float;

.field private scene:Ljava/lang/Integer;

.field private thumbnailView:Landroid/view/TextureView;

.field private unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

.field private unityView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;)V

    .line 38
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    .line 253
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->sOriginalElevation:Ljava/lang/Float;

    .line 42
    const-string p0, "Client-TextureViewPlayer"

    const-string p1, "create player"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->checkIfModelRendered()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;)Ljava/lang/Integer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->scene:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;)Landroid/view/TextureView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;)Landroid/view/TextureView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    return-object p0
.end method

.method private addView(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_2

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, p1, :cond_3

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private checkIfModelRendered()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->scene:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->onSwitchScene(Ljava/lang/Integer;)V

    .line 307
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->isModelRendered()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 310
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 314
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 315
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 320
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 323
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->isModelReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->onModelReady()V

    :cond_3
    :goto_0
    return-void
.end method

.method private createTextureView(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)Landroid/view/TextureView;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createSurfaceView, type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client-TextureViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 294
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 295
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 296
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 297
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 298
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;-><init>(Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 300
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/ViewGroup;Ljava/lang/Boolean;Z)V
    .locals 4

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

    const-string v1, "Client-TextureViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->parentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    if-nez v0, :cond_9

    .line 49
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->parentView:Landroid/view/ViewGroup;

    .line 50
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    .line 52
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_8

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    if-nez v0, :cond_2

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Background:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->createTextureView(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setId(I)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    if-nez v0, :cond_4

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Thumbnail:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->createTextureView(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setId(I)V

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    if-nez v0, :cond_6

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;->Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;

    invoke-direct {p0, v0, v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->createTextureView(Landroid/content/Context;Lcn/nubia/redmagickyi/digitalhuman/utils/SurfaceType;)Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    .line 73
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setId(I)V

    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_7
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->checkIfModelRendered()V

    :cond_8
    if-nez p3, :cond_9

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->addView(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    :cond_9
    if-eqz p3, :cond_a

    .line 85
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    if-eqz p3, :cond_a

    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, p1, p3, v0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->addView(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    :cond_a
    if-eqz p2, :cond_c

    .line 90
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    .line 93
    :cond_b
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->show()V

    goto :goto_4

    .line 91
    :cond_c
    :goto_3
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->hide(Z)V

    :goto_4
    return-void
.end method

.method public clearState()V
    .locals 2

    .line 276
    const-string v0, "Client-TextureViewPlayer"

    const-string v1, "clearState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->parentView:Landroid/view/ViewGroup;

    .line 278
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 281
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    if-eqz p0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->restoreState()V

    :cond_1
    return-void
.end method

.method public hide(Z)V
    .locals 2

    .line 218
    const-string v0, "Client-TextureViewPlayer"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->setHidden(Z)V

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->parentView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    .line 229
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    .line 230
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 235
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    if-eqz p1, :cond_3

    .line 236
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 238
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    if-eqz p1, :cond_4

    .line 242
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 244
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public onModelReady()V
    .locals 0

    .line 288
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->onModelReady()V

    return-void
.end method

.method public onSwitchScene(Ljava/lang/Integer;)V
    .locals 6

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSwitchScene, scene: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client-TextureViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->scene:Ljava/lang/Integer;

    .line 118
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 120
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v2, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v2, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v4, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_1

    .line 121
    :cond_0
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 122
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 123
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 124
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 125
    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v2, :cond_2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v2, :cond_2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v4, :cond_2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_3

    .line 132
    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 133
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 134
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 135
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 136
    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    if-eqz v0, :cond_5

    .line 141
    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v2, :cond_4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v2, :cond_4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v4, :cond_4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_5

    .line 143
    :cond_4
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 144
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 145
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 146
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 147
    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanConstants$Scene;->isAvatarScene(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 153
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {p1, v0, v2}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->getAvatarLayoutParams(FF)[F

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 155
    aget v0, p1, v3

    float-to-int v0, v0

    .line 156
    aget v2, p1, v2

    float-to-int v2, v2

    const/4 v4, 0x2

    .line 157
    aget v4, p1, v4

    move p1, v2

    move v2, v0

    goto :goto_0

    :cond_6
    move p1, v2

    .line 163
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    if-eqz v0, :cond_8

    .line 164
    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 165
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v5, v2, :cond_7

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, p1, :cond_7

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v5, :cond_7

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getScaleX()F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_8

    .line 166
    :cond_7
    const-string v5, "onSwitchScene -> unityView changed"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 168
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 169
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 170
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 171
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityInitReadyListener:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$UnityInitReadyListener;->isModelReady()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 173
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {p1, v4}, Landroid/view/TextureView;->setScaleX(F)V

    .line 174
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-virtual {p0, v4}, Landroid/view/TextureView;->setScaleY(F)V

    :cond_8
    return-void
.end method

.method public refreshBackgroundColor()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer$ProxyTextureCallback;->drawBackground()V

    :cond_0
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setZOrderOnTop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client-TextureViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->parentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getElevation()F

    move-result p1

    .line 260
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->sOriginalElevation:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 261
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->sOriginalElevation:Ljava/lang/Float;

    .line 263
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->parentView:Landroid/view/ViewGroup;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->sOriginalElevation:Ljava/lang/Float;

    if-eqz p1, :cond_2

    .line 266
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    const/4 p1, 0x0

    .line 268
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->sOriginalElevation:Ljava/lang/Float;

    :cond_2
    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 197
    const-string v0, "Client-TextureViewPlayer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;->setHidden(Z)V

    .line 199
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->backgroundView:Landroid/view/TextureView;

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->addView(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->thumbnailView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 207
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->addView(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 209
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->myView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->addView(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 213
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->checkIfModelRendered()V

    return-void
.end method

.method public supportedTouchEvent(Z)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supportedTouchEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client-TextureViewPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->unityView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 184
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/proxy/player/TextureViewPlayer;->callback:Lcn/nubia/redmagickyi/digitalhuman/proxy/player/IPlayer$Callback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method
