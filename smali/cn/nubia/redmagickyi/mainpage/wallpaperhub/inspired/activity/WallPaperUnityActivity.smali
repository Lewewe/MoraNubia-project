.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;
.source "WallPaperUnityActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$BitmapThread;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_MARGIN_TOP:Ljava/lang/String; = "margin_top"

.field public static final SET_WALLPAPER_BACKGROUND:I = 0x0

.field public static final TAG:Ljava/lang/String; = "WallPaperUnityActivity"


# instance fields
.field bitmapThread:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$BitmapThread;

.field bitmapTostring:Z

.field private bm:Landroid/graphics/Bitmap;

.field private cancel:Landroid/view/View;

.field private config:Ljava/lang/String;

.field handler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;

.field private isUnityPlayerDestroyed:Z

.field private launcherImage:Landroid/widget/ImageView;

.field private loadingText:Landroid/widget/TextView;

.field private loadingView:Landroid/widget/LinearLayout;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field modleinitfinish:Z

.field private preview:Landroid/widget/Switch;

.field private rotate:Landroid/widget/ImageView;

.field private setting:Landroid/view/View;

.field private skinId:I

.field private strBitmapLandscape:Ljava/lang/String;

.field private strBitmapPort:Ljava/lang/String;

.field private tempBm:Landroid/graphics/Bitmap;

.field private unityView:Landroid/view/ViewGroup;

.field private wallpaperForgoundView:Landroid/view/View;

.field private wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->modleinitfinish:Z

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->config:Ljava/lang/String;

    .line 81
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->isUnityPlayerDestroyed:Z

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->skinId:I

    .line 309
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->handler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/widget/Switch;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->preview:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->launcherImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->loadingView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->wallpaperForgoundView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->isUnityPlayerDestroyed:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/app/WallpaperManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->wallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->bm:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->bm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->tempBm:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$502(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->tempBm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->strBitmapPort:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->strBitmapPort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->strBitmapLandscape:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->strBitmapLandscape:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->cancel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->setting:Landroid/view/View;

    return-object p0
.end method

.method private cancel()V
    .locals 0

    .line 495
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->onBackPressed()V

    return-void
.end method

.method private destroyUnity()V
    .locals 1

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->isUnityPlayerDestroyed:Z

    .line 398
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 105
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back_bg:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->cancel:Landroid/view/View;

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->cancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "margin_top"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->head_layout:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 114
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->setting:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->setting:Landroid/view/View;

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->setting:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->launcher_preview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->launcherImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wallpaper_foreground:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->wallpaperForgoundView:Landroid/view/View;

    .line 123
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_layout:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->loadingView:Landroid/widget/LinearLayout;

    .line 124
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_rotate:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->rotate:Landroid/widget/ImageView;

    .line 125
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_text:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->loadingText:Landroid/widget/TextView;

    .line 126
    sget v2, Lcn/nubia/redmagickyi/main/R$string;->wallpaper_loading_text:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->cancel:Landroid/view/View;

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 128
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->loadingText:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->setting:Landroid/view/View;

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 131
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->initLoadingAnimation()V

    .line 135
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->switch_preview:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->preview:Landroid/widget/Switch;

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->preview:Landroid/widget/Switch;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->setLauncherBitmapListener(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;)V

    return-void
.end method

.method private initWallPaper()V
    .locals 2

    .line 172
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getImageWallPaperCache(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->strBitmapPort:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getImageWallPaperCache(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->strBitmapLandscape:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->strBitmapPort:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->strBitmapLandscape:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->bitmapTostring:Z

    .line 177
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->handler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;)V

    return-void

    .line 181
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$BitmapThread;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$BitmapThread;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->bitmapThread:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$BitmapThread;

    .line 182
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$BitmapThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->bitmapThread:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$BitmapThread;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$BitmapThread;->start()V

    :cond_1
    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 252
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 p1, 0x0

    const/4 v1, 0x0

    move v2, p1

    .line 253
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 255
    const-string v4, "msgID"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_0

    .line 257
    :cond_0
    const-string v4, "config"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 264
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    const/16 v0, 0x7d0

    if-ne v2, v0, :cond_3

    .line 266
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->isUnityPlayerDestroyed:Z

    if-nez v0, :cond_3

    .line 267
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    :cond_3
    const/16 v0, 0x7d7

    if-ne v2, v0, :cond_5

    .line 270
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->isUnityPlayerDestroyed:Z

    if-nez v0, :cond_5

    .line 271
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->handler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;

    new-instance v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$3;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)V

    .line 294
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v4, 0x5dc

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x0

    .line 271
    :goto_1
    invoke-virtual {v0, v3, v4, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->skinId:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchWallPaperSkin(IZZ)Z

    .line 298
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v4

    invoke-virtual {v0, v4, p1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 299
    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getOpenAntiAliasing()Z

    move-result v4

    invoke-virtual {v0, v4, p1}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->setOpenAntiAliasing(ZZ)V

    .line 300
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->sendPreviewMessageToUnity(Z)V

    .line 302
    iput-boolean v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->modleinitfinish:Z

    .line 303
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->handler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;)V

    :cond_5
    const/16 p1, 0x7d8

    if-ne v2, p1, :cond_6

    .line 306
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->config:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method private setting()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->config:Ljava/lang/String;

    const-string v1, "WallPaperUnityActivity"

    if-eqz v0, :cond_1

    .line 500
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSystemApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->config:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->saveWallPaperConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_0
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->config:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->saveWallPaperConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 505
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "saveWallPaperConfig success, config = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->config:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 507
    :cond_1
    const-string v0, "no need to saveWallPaperConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_1
    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->skinId:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchWallPaperSkin(IZZ)Z

    .line 512
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaper(Landroid/content/Context;ZZ)V

    .line 513
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallPaperUnityActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 477
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 478
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 480
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTouch action = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallPaperUnityActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->isUnityPlayerDestroyed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 489
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 3

    .line 370
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->finish()V

    .line 372
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from_mainpage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    .line 376
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_enter:I

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->default_activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->overridePendingTransition(II)V

    .line 378
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->destroyUnity()V

    .line 379
    const-string p0, "WallPaperUnityActivity"

    const-string v0, "onBackPressed end"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initLoadingAnimation()V
    .locals 1

    .line 165
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 166
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->rotate:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 217
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back_bg:I

    if-ne p1, v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->cancel()V

    goto :goto_0

    .line 219
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->setting:I

    if-ne p1, v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->setting()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 461
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 462
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 463
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->handler:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->wallpaper_layout_unity:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "skin_id"

    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->skinId:I

    .line 91
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->initView()V

    .line 92
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez p1, :cond_1

    .line 93
    new-instance p1, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    invoke-direct {p1, p0, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 95
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->unityView:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    .line 96
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->unityview:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->unityView:Landroid/view/ViewGroup;

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 100
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 101
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->wallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 386
    const-string v0, "onDestroy begin"

    const-string v1, "WallPaperUnityActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->isUnityPlayerDestroyed:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onDestroy()V

    goto :goto_0

    .line 390
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->destroyUnity()V

    .line 392
    :goto_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onDestroy()V

    .line 393
    const-string p0, "onDestroy end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 445
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onLowMemory()V

    .line 446
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 226
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->setIntent(Landroid/content/Intent;)V

    .line 233
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    .line 234
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 410
    const-string v0, "WallPaperUnityActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->isUnityPlayerDestroyed:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onPause()V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_1

    .line 415
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    .line 417
    :cond_1
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onPause()V

    :goto_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 436
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 437
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->isUnityPlayerDestroyed:Z

    if-nez p1, :cond_0

    .line 438
    const-class p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->switchScene(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 424
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onResume()V

    .line 425
    const-string v0, "WallPaperUnityActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 427
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->initWallPaper()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    .line 431
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 403
    invoke-super {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onStop()V

    .line 404
    const-string p0, "WallPaperUnityActivity"

    const-string v0, "onStop"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 452
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 454
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

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

    .line 360
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 469
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->onWindowFocusChanged(Z)V

    .line 470
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method
