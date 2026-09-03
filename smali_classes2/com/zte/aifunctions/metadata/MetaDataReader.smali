.class final Lcom/zte/aifunctions/metadata/MetaDataReader;
.super Ljava/lang/Object;
.source "MetaDataReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AiFunctionMetaDataReader"

.field private static sInstance:Lcom/zte/aifunctions/metadata/MetaDataReader;


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;",
            ">;>;"
        }
    .end annotation
.end field

.field private cacheManager:Lcom/zte/aifunctions/metadata/cache/CacheManager;

.field private listener:Lcom/zte/aifunctions/metadata/IDataListener;

.field private metaDataParser:Lcom/zte/aifunctions/metadata/MetaDataParser;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private targetPackagesName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->packageManager:Landroid/content/pm/PackageManager;

    .line 37
    new-instance v0, Lcom/zte/aifunctions/metadata/MetaDataParser;

    iget-object v1, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->packageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/zte/aifunctions/metadata/MetaDataParser;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->metaDataParser:Lcom/zte/aifunctions/metadata/MetaDataParser;

    .line 38
    new-instance v0, Lcom/zte/aifunctions/metadata/cache/CacheManager;

    invoke-direct {v0}, Lcom/zte/aifunctions/metadata/cache/CacheManager;-><init>()V

    iput-object v0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->cacheManager:Lcom/zte/aifunctions/metadata/cache/CacheManager;

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aifunctions/metadata/MetaDataReader;->registerAppInstallOrUninstallReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aifunctions/metadata/MetaDataReader;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->targetPackagesName:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/aifunctions/metadata/MetaDataReader;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->cache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/aifunctions/metadata/MetaDataReader;)Lcom/zte/aifunctions/metadata/cache/CacheManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->cacheManager:Lcom/zte/aifunctions/metadata/cache/CacheManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/aifunctions/metadata/MetaDataReader;)Lcom/zte/aifunctions/metadata/MetaDataParser;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->metaDataParser:Lcom/zte/aifunctions/metadata/MetaDataParser;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/aifunctions/metadata/MetaDataReader;)Lcom/zte/aifunctions/metadata/IDataListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->listener:Lcom/zte/aifunctions/metadata/IDataListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/zte/aifunctions/metadata/MetaDataReader;
    .locals 2

    const-class v0, Lcom/zte/aifunctions/metadata/MetaDataReader;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/zte/aifunctions/metadata/MetaDataReader;->sInstance:Lcom/zte/aifunctions/metadata/MetaDataReader;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-direct {v1}, Lcom/zte/aifunctions/metadata/MetaDataReader;-><init>()V

    sput-object v1, Lcom/zte/aifunctions/metadata/MetaDataReader;->sInstance:Lcom/zte/aifunctions/metadata/MetaDataReader;

    .line 46
    :cond_0
    sget-object v1, Lcom/zte/aifunctions/metadata/MetaDataReader;->sInstance:Lcom/zte/aifunctions/metadata/MetaDataReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerAppInstallOrUninstallReceiver(Landroid/content/Context;)V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/zte/aifunctions/metadata/MetaDataReader$1;

    invoke-direct {v1, p0}, Lcom/zte/aifunctions/metadata/MetaDataReader$1;-><init>(Lcom/zte/aifunctions/metadata/MetaDataReader;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateBatch(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;",
            ">;>;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->cacheManager:Lcom/zte/aifunctions/metadata/cache/CacheManager;

    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheManager;->editor()Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;

    move-result-object v0

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->metaDataParser:Lcom/zte/aifunctions/metadata/MetaDataParser;

    invoke-virtual {v2, v1}, Lcom/zte/aifunctions/metadata/MetaDataParser;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->metaDataParser:Lcom/zte/aifunctions/metadata/MetaDataParser;

    invoke-virtual {v3, v1, v2}, Lcom/zte/aifunctions/metadata/MetaDataParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 143
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 144
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v3, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;

    iget-object v4, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->metaDataParser:Lcom/zte/aifunctions/metadata/MetaDataParser;

    invoke-virtual {v4, v1}, Lcom/zte/aifunctions/metadata/MetaDataParser;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4, v2}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->addData(Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;)Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getData(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;",
            ">;>;"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->targetPackagesName:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->cache:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    iget-object p1, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->cacheManager:Lcom/zte/aifunctions/metadata/cache/CacheManager;

    invoke-virtual {p1}, Lcom/zte/aifunctions/metadata/cache/CacheManager;->readCacheFile()Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getSystemUI_pid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getSystemBootId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;

    .line 114
    invoke-virtual {v2}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->metaDataParser:Lcom/zte/aifunctions/metadata/MetaDataParser;

    invoke-virtual {v4, v3}, Lcom/zte/aifunctions/metadata/MetaDataParser;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {v2}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getVersion_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v4, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->metaDataParser:Lcom/zte/aifunctions/metadata/MetaDataParser;

    invoke-virtual {v2}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getMeta_data()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcom/zte/aifunctions/metadata/MetaDataParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 122
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/zte/aifunctions/metadata/MetaDataReader;->updateBatch(Ljava/util/List;Ljava/util/Map;)V

    .line 130
    iput-object v0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->cache:Ljava/util/Map;

    .line 132
    :cond_2
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->cache:Ljava/util/Map;

    return-object p0
.end method

.method public registerDataSetChangedListener(Lcom/zte/aifunctions/metadata/IDataListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/MetaDataReader;->listener:Lcom/zte/aifunctions/metadata/IDataListener;

    return-void
.end method
