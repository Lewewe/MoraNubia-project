.class Lcom/zte/aifunctions/metadata/MetaDataReader$1;
.super Landroid/content/BroadcastReceiver;
.source "MetaDataReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aifunctions/metadata/MetaDataReader;->registerAppInstallOrUninstallReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;


# direct methods
.method constructor <init>(Lcom/zte/aifunctions/metadata/MetaDataReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private update(Ljava/lang/String;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {v0}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$100(Lcom/zte/aifunctions/metadata/MetaDataReader;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {v0}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$200(Lcom/zte/aifunctions/metadata/MetaDataReader;)Lcom/zte/aifunctions/metadata/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheManager;->editor()Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {v1}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$300(Lcom/zte/aifunctions/metadata/MetaDataReader;)Lcom/zte/aifunctions/metadata/MetaDataParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/aifunctions/metadata/MetaDataParser;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {v2}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$300(Lcom/zte/aifunctions/metadata/MetaDataReader;)Lcom/zte/aifunctions/metadata/MetaDataParser;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/zte/aifunctions/metadata/MetaDataParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {v3}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$100(Lcom/zte/aifunctions/metadata/MetaDataReader;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v2, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;

    iget-object v3, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {v3}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$300(Lcom/zte/aifunctions/metadata/MetaDataReader;)Lcom/zte/aifunctions/metadata/MetaDataParser;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/zte/aifunctions/metadata/MetaDataParser;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->addData(Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;)Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheManager$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {p1}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$400(Lcom/zte/aifunctions/metadata/MetaDataReader;)Lcom/zte/aifunctions/metadata/IDataListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {p0}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$400(Lcom/zte/aifunctions/metadata/MetaDataReader;)Lcom/zte/aifunctions/metadata/IDataListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aifunctions/metadata/IDataListener;->onDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mAppInstallOrUninstallReceiver --> onReceive: action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiFunctionMetaDataReader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 65
    iget-object p2, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {p2}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$000(Lcom/zte/aifunctions/metadata/MetaDataReader;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->this$0:Lcom/zte/aifunctions/metadata/MetaDataReader;

    invoke-static {p2}, Lcom/zte/aifunctions/metadata/MetaDataReader;->access$000(Lcom/zte/aifunctions/metadata/MetaDataReader;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 66
    invoke-direct {p0, p1}, Lcom/zte/aifunctions/metadata/MetaDataReader$1;->update(Ljava/lang/String;)V

    nop

    :cond_3
    :goto_1
    return-void
.end method
