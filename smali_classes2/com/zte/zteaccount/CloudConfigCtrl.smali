.class public Lcom/zte/zteaccount/CloudConfigCtrl;
.super Ljava/lang/Object;
.source "CloudConfigCtrl.java"


# static fields
.field static final SP_CLOUD_CONFIG_FILE:Ljava/lang/String; = "cloud_config"

.field static final SP_KEY_CHECKED:Ljava/lang/String; = "checked"

.field private static sInstance:Lcom/zte/zteaccount/CloudConfigCtrl;


# instance fields
.field private mCurrentServer:Lcom/zte/aigc/common/ServerType;

.field private final mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v1, "cloud_config"

    invoke-direct {v0, p1, v1}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zteaccount/CloudConfigCtrl;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    .line 17
    invoke-direct {p0, p1}, Lcom/zte/zteaccount/CloudConfigCtrl;->initServerType(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/zte/zteaccount/CloudConfigCtrl;
    .locals 2

    const-class v0, Lcom/zte/zteaccount/CloudConfigCtrl;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/zte/zteaccount/CloudConfigCtrl;->sInstance:Lcom/zte/zteaccount/CloudConfigCtrl;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/zte/zteaccount/CloudConfigCtrl;

    invoke-direct {v1, p0}, Lcom/zte/zteaccount/CloudConfigCtrl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zte/zteaccount/CloudConfigCtrl;->sInstance:Lcom/zte/zteaccount/CloudConfigCtrl;

    .line 24
    :cond_0
    sget-object p0, Lcom/zte/zteaccount/CloudConfigCtrl;->sInstance:Lcom/zte/zteaccount/CloudConfigCtrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getServerAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/zte/zteaccount/CloudConfigCtrl;->get(Landroid/content/Context;)Lcom/zte/zteaccount/CloudConfigCtrl;

    move-result-object p0

    iget-object p0, p0, Lcom/zte/zteaccount/CloudConfigCtrl;->mCurrentServer:Lcom/zte/aigc/common/ServerType;

    iget-object p0, p0, Lcom/zte/aigc/common/ServerType;->address:Ljava/lang/String;

    return-object p0
.end method

.method public static getServerType(Landroid/content/Context;)Lcom/zte/aigc/common/ServerType;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/zte/zteaccount/CloudConfigCtrl;->get(Landroid/content/Context;)Lcom/zte/zteaccount/CloudConfigCtrl;

    move-result-object p0

    iget-object p0, p0, Lcom/zte/zteaccount/CloudConfigCtrl;->mCurrentServer:Lcom/zte/aigc/common/ServerType;

    return-object p0
.end method

.method private initServerType(Landroid/content/Context;)V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/zte/zteaccount/CloudConfigCtrl;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v1, "checked"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Lcom/zte/aigc/common/ServerType;->setCurrentServer(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/aigc/common/ServerType;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/zteaccount/CloudConfigCtrl;->mCurrentServer:Lcom/zte/aigc/common/ServerType;

    return-void
.end method


# virtual methods
.method public getServerTypes()[Lcom/zte/aigc/common/ServerType;
    .locals 0

    .line 47
    invoke-static {}, Lcom/zte/aigc/common/ServerType;->values()[Lcom/zte/aigc/common/ServerType;

    move-result-object p0

    return-object p0
.end method

.method public setCurrentServer(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/aigc/common/ServerType;
    .locals 1

    .line 33
    invoke-static {p1, p2}, Lcom/zte/aigc/common/ServerType;->setCurrentServer(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/aigc/common/ServerType;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/zteaccount/CloudConfigCtrl;->mCurrentServer:Lcom/zte/aigc/common/ServerType;

    .line 34
    iget-object p1, p0, Lcom/zte/zteaccount/CloudConfigCtrl;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v0, "checked"

    invoke-virtual {p1, v0, p2}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/zte/zteaccount/CloudConfigCtrl;->mCurrentServer:Lcom/zte/aigc/common/ServerType;

    return-object p0
.end method
