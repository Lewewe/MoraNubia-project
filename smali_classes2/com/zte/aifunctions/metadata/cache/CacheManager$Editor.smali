.class public Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aifunctions/metadata/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field private tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

.field final synthetic this$0:Lcom/zte/aifunctions/metadata/cache/CacheManager;


# direct methods
.method public constructor <init>(Lcom/zte/aifunctions/metadata/cache/CacheManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->this$0:Lcom/zte/aifunctions/metadata/cache/CacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/zte/aifunctions/metadata/cache/CacheManager;->access$000(Lcom/zte/aifunctions/metadata/cache/CacheManager;)Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    new-instance p1, Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    invoke-direct {p1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;-><init>()V

    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/zte/aifunctions/metadata/cache/CacheManager;->access$000(Lcom/zte/aifunctions/metadata/cache/CacheManager;)Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->clone()Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    :goto_0
    return-void
.end method


# virtual methods
.method public addData(Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;)Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->setData(Ljava/util/List;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;

    .line 70
    invoke-virtual {v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getVersion_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->setVersion_name(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getMeta_data()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->setMeta_data(Ljava/lang/String;)V

    return-object p0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public commit()Z
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    iget-object v1, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->this$0:Lcom/zte/aifunctions/metadata/cache/CacheManager;

    invoke-static {v1}, Lcom/zte/aifunctions/metadata/cache/CacheManager;->access$000(Lcom/zte/aifunctions/metadata/cache/CacheManager;)Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getSystemBootId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->setSystemUI_pid(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/zte/aifunctions/metadata/cache/CacheManager;->access$100()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->this$0:Lcom/zte/aifunctions/metadata/cache/CacheManager;

    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->tempCacheEntry:Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    invoke-static {v2, p0}, Lcom/zte/aifunctions/metadata/cache/CacheManager;->access$002(Lcom/zte/aifunctions/metadata/cache/CacheManager;Lcom/zte/aifunctions/metadata/cache/CacheEntry;)Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
