.class public Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;
.super Ljava/lang/Object;
.source "GameSceneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSceneSwitcher"

.field private static isRequestingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sInstance:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

.field private static topActivity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static topPackage:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityEventsCallback:Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;

.field private contentObserver:Landroid/database/ContentObserver;

.field private isRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRequestingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topPackage:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->listeners:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->contentObserver:Landroid/database/ContentObserver;

    .line 134
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->activityEventsCallback:Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 28
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topPackage:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 28
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->sInstance:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->sInstance:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    .line 43
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->sInstance:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isGameScene()Z
    .locals 5

    .line 50
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->getInstance()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topPackage:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 52
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 54
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topPackage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 55
    :cond_1
    invoke-static {}, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->getVisibleActivity()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;

    if-eqz v0, :cond_2

    .line 59
    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topPackage:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, v0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 60
    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, v0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkGameScene, isRequestingPermission: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRequestingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", topPackage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topPackage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", topActivity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GameSceneSwitcher"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topPackage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 66
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topPackage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "cn.nubia.gamelauncher"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRequestingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    .line 70
    :cond_3
    const-class v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRequestingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    .line 74
    :cond_4
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRequestingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "com.android.permissioncontroller.permission.ui.GrantPermissionsActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->topActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    :cond_5
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRequestingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    .line 80
    :cond_6
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "nubia_game_scene"

    invoke-static {v0, v4, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 81
    const-string v0, "checkGameScene, true"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRequestingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    .line 86
    :cond_7
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRequestingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1
.end method

.method private register()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "nubia_game_scene"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->activityEventsCallback:Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;

    const/16 v1, 0x80

    invoke-static {v0, p0, v1}, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->addCallBack(Ljava/lang/String;Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;I)Z

    return-void
.end method


# virtual methods
.method public addListener(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->register()V

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListener(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->unregister()V

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isRegisted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/activityevent/ActivityEventsManagerWrapper;->delCallBack(Ljava/lang/String;)Z

    return-void
.end method
