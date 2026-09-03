.class public Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "RedmagicStartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;,
        Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnIdentifyReg;,
        Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnAppStartListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RedmagicStartActivity"


# instance fields
.field private bm:Landroid/graphics/Bitmap;

.field private bottomShowImg:Landroid/widget/ImageView;

.field private bottomTexImg:Landroid/widget/ImageView;

.field private fromMainPage:Z

.field private fromQuickTile:Z

.field private is:Ljava/io/InputStream;

.field private layoutRoot:Landroid/view/View;

.field private popImg:Landroid/widget/ImageView;

.field private redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

.field private shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

.field private shouldRecycleBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private startBg:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 53
    new-instance v0, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    .line 54
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->shouldRecycleBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->fromQuickTile:Z

    iput-boolean v1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->fromMainPage:Z

    return-void
.end method

.method static synthetic access$001(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V
    .locals 0

    .line 46
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->hideBottomUIMenu()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->fromQuickTile:Z

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->fromMainPage:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;Ljava/lang/Class;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->switchIdentifyFragment(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;Ljava/lang/Class;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->switchVisualFragment(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    return-object p0
.end method

.method private recycleBitmap()V
    .locals 2

    const/4 v0, 0x1

    .line 391
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "first"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->shouldRecycleBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->bottomShowImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->bottomTexImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->popImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->layoutRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static shouldswitchServiceDescribe()Z
    .locals 3

    .line 92
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->enable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 95
    :cond_0
    const-string v0, "demi"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private switchIdentifyFragment(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$2;-><init>(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method

.method private switchServiceDescribeFragment(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;",
            ">;)V"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$1;-><init>(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method

.method private switchVisualFragment(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;",
            ">;)V"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$3;-><init>(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->showFragment(Ljava/lang/Class;Landroid/os/Bundle;Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    return-void
.end method


# virtual methods
.method public ClearWallPaper()V
    .locals 2

    .line 357
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->setPriority(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$4;-><init>(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public GoToLive()V
    .locals 2

    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 377
    const-string v1, "intent.action.redmagickyi.live"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public SettingUnityWallPaper()V
    .locals 3

    .line 352
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchWallPaperSkin(IZZ)Z

    .line 353
    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->setLiveWallPaper(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public SwitchImgGuide(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->shouldRecycleBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 384
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->bottomShowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->bottomTexImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->popImg:Landroid/widget/ImageView;

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_guide_popbg:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->layoutRoot:Landroid/view/View;

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->bg_guide:I

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public UpdateCareStatus(Z)V
    .locals 1

    .line 366
    const-string p0, "scence_work_study"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    const-string p0, "scence_life"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    const-string p0, "scence_systerm"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public goGameSapceCenter()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "first"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->shouldRecycleBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->finish()V

    :goto_0
    return-void
.end method

.method public hideBottomUIMenu()V
    .locals 1

    .line 112
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->hideBottomUIMenu()V

    :cond_0
    return-void
.end method

.method public initBg()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "image/3004_preview.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->is:Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 145
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->bm:Landroid/graphics/Bitmap;

    .line 146
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->startBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->is:Ljava/io/InputStream;

    if-eqz p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 149
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->is:Ljava/io/InputStream;

    if-eqz p0, :cond_0

    .line 152
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    .line 151
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->is:Ljava/io/InputStream;

    if-eqz p0, :cond_1

    .line 152
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 154
    :cond_1
    throw v0
.end method

.method public initView()V
    .locals 1

    .line 167
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_root:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->layoutRoot:Landroid/view/View;

    .line 168
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->app_start_pop_bg:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->popImg:Landroid/widget/ImageView;

    .line 169
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->app_start_bottom_image_show:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->bottomShowImg:Landroid/widget/ImageView;

    .line 170
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->app_start_bottom_text_show:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->bottomTexImg:Landroid/widget/ImageView;

    return-void
.end method

.method public isCareOpened()Z
    .locals 0

    .line 372
    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->HasCheckCareItem(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected isEnableActivityExitAnimation()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->fromMainPage:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->isEnableActivityExitAnimation()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onBackPressed()V
    .locals 0

    .line 175
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    .line 176
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->requestWindowFeature(I)Z

    .line 63
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->activity_redmagic_start:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_quick"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->fromQuickTile:Z

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_mainpage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->fromMainPage:Z

    .line 66
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->container:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->createChildFragmentMananger(I)V

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->initView()V

    .line 70
    const-string v0, "first"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMoraInter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->startupGuidanceVideo()V

    .line 75
    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->mask:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x7

    .line 76
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->setRequestedOrientationFromAndroid(I)V

    .line 77
    invoke-static {}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->shouldswitchServiceDescribe()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_guide_1painting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_guide_1wording:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->SwitchImgGuide(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 79
    const-class p1, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->switchServiceDescribeFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_guide_3painting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_guide_3wording:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->SwitchImgGuide(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 82
    const-class p1, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->switchIdentifyFragment(Ljava/lang/Class;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->goGameSapceCenter()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 181
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 202
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 203
    const-string v0, "ly"

    const-string v1, "88888888888888onRequestPermissionsResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getChildFragmentManager()Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/GameSpaceFragmentMananger;->getFragment()Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 190
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStop()V

    .line 160
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->shouldRecycleBitmap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->recycleBitmap()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onWindowFocusChanged(Z)V

    .line 105
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNeoApp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->access$001(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V

    :cond_0
    return-void
.end method

.method public startupGuidanceVideo()V
    .locals 2

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
