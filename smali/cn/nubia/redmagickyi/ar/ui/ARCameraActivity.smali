.class public Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "ARCameraActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ROTATE_LAND_0:I = 0x1

.field public static final ROTATE_LAND_180:I = 0x3

.field public static final ROTATE_PORT_0:I = 0x0

.field public static final ROTATE_PORT_180:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ARCameraActivity"


# instance fields
.field private backLandscape:Landroid/view/View;

.field private backLandscape_180:Landroid/view/View;

.field private backPortrait:Landroid/view/View;

.field private backPortrait_180:Landroid/view/View;

.field private fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

.field private handler:Landroid/os/Handler;

.field private imageView:Landroid/widget/ImageView;

.field private isOnStop:Z

.field private isPortrait:I

.field private loadingText:Landroid/widget/TextView;

.field private loadingView:Landroid/widget/LinearLayout;

.field private mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

.field private rotate:Landroid/widget/ImageView;

.field private unitySurfaceCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isPortrait:I

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->handler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$2;-><init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->unitySurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isPortrait:I

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Lcn/nubia/redmagickyi/permission/PermissionUtil;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Landroid/view/SurfaceHolder$Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->unitySurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->loadingView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private hideLoadingView()V
    .locals 4

    .line 526
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->loadingView:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$8;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$8;-><init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 534
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->loadingView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initData()V
    .locals 3

    .line 101
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$1;-><init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)V

    const v2, 0x9c40

    invoke-direct {v0, v2, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-void
.end method

.method private initScene()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v0, 0x3f2

    .line 96
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 97
    const-string v0, "arCamera"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 98
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 3

    .line 121
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->activity_ar_camera:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->setContentView(I)V

    .line 122
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit_port:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait:Landroid/view/View;

    .line 123
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit_land:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape:Landroid/view/View;

    .line 125
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit_port_180:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait_180:Landroid/view/View;

    .line 127
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit_land_180:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape_180:Landroid/view/View;

    .line 129
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->image:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->initloadingview()V

    .line 133
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 135
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;ZLcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    sput-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 138
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-nez v0, :cond_1

    .line 139
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    .line 140
    sget-object v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->bindUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 142
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->unitySurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->requestFocus()Z

    .line 146
    new-instance v0, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->layout_big_image_fragment:I

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_3

    .line 447
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape_180:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 448
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape_180:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 451
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 453
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 454
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait_180:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f

    .line 457
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait_180:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 460
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait_180:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 461
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait_180:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 464
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 467
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape_180:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f

    .line 470
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape_180:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 473
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait_180:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 474
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait_180:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 477
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :cond_9
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 480
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 482
    :cond_a
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape_180:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_f

    .line 483
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape_180:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 486
    :cond_b
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_c

    .line 487
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_c
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait_180:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d

    .line 490
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backPortrait_180:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 492
    :cond_d
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e

    .line 493
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_e
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape_180:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f

    .line 496
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->backLandscape_180:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 499
    :cond_f
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 500
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->updateOperateUI()V

    :cond_10
    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 188
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 190
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v2, "msgID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1

    .line 194
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->initScene()V

    goto :goto_0

    :cond_1
    const/16 v2, 0x7d7

    if-ne v1, v2, :cond_2

    .line 196
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->hideLoadingView()V

    goto :goto_0

    :cond_2
    const/16 v2, 0x7db

    .line 197
    const-string v3, "ARCameraActivity"

    if-ne v1, v2, :cond_4

    .line 198
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 199
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    const-string v2, "image"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ar take photo path:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const-string v2, "big image view show:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v2, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$3;

    invoke-direct {v2, p0, v1}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$3;-><init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x7dc

    if-ne v1, v2, :cond_0

    .line 215
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->hideLoadingView()V

    .line 216
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isPortrait:I

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orientation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isPortrait:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$4;-><init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)V

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 228
    :cond_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 231
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARCameraActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ShowBigImage(Ljava/lang/String;)V
    .locals 14

    .line 384
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->unitySurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 385
    iget v6, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isPortrait:I

    const/4 v0, 0x0

    .line 387
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/CopyFileByUri;->getExifOrientation(Ljava/lang/String;)I

    move-result v5

    .line 388
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v5

    .line 389
    invoke-virtual {v12, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    .line 390
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 392
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->mainview:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 393
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 394
    iget-object v2, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v9, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    const-class v10, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    new-instance v11, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;

    move-object v2, v11

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;-><init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;Landroid/view/View;)V

    invoke-virtual {v9, v10, v1, v11}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 440
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->unitySurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p1, p0, v1, v0, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 312
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mUnityPlayer:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 314
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public initLoadingAnimation()V
    .locals 1

    .line 521
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 522
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->rotate:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public initloadingview()V
    .locals 2

    .line 513
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->loadingView:Landroid/widget/LinearLayout;

    .line 514
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_rotate:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->rotate:Landroid/widget/ImageView;

    .line 515
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_text:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->loadingText:Landroid/widget/TextView;

    .line 516
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_loading_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 517
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->initLoadingAnimation()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 236
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->fragmentMananger:Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->hideFragment()V

    goto :goto_0

    .line 278
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 507
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit_port:I

    if-eq p1, v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit_land:I

    if-eq p1, v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit_port_180:I

    if-eq p1, v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_exit_land_180:I

    if-ne p1, v0, :cond_1

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 298
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->initData()V

    .line 89
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 361
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    goto :goto_0

    .line 364
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->destroy(Lcom/unity3d/player/UnityPlayer;)V

    .line 366
    :goto_0
    const-string v0, "ARCameraActivity"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 284
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onLowMemory()V

    .line 285
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 348
    const-string v0, "ARCameraActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 354
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 355
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 263
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    .line 264
    const-string v0, "ARCameraActivity"

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 267
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 328
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 329
    invoke-static {p1, p2, p3}, Lcom/google/mediapipe/components/PermissionHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestPermissionsResult "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isOnStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARCameraActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-eqz v0, :cond_1

    .line 332
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isOnStop:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isOnStop:Z

    .line 334
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;-><init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;I[Ljava/lang/String;[I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 244
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 245
    const-string v0, "ARCameraActivity"

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isOnStop:Z

    .line 247
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$5;-><init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 372
    const-string v0, "ARCameraActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isOnStop:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 290
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onTrimMemory(I)V

    const/16 p0, 0xf

    if-ne p1, p0, :cond_0

    .line 292
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

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

    .line 319
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 303
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onWindowFocusChanged(Z)V

    .line 304
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method
