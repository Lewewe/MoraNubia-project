.class public Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;
.super Ljava/lang/Object;
.source "CacheEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aifunctions/metadata/cache/CacheEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private meta_data:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->package_name:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->version_name:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->meta_data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    check-cast p1, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;

    .line 68
    iget-object v1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->package_name:Ljava/lang/String;

    iget-object v2, p1, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->package_name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->version_name:Ljava/lang/String;

    iget-object v2, p1, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->version_name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->meta_data:Ljava/lang/String;

    iget-object p1, p1, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->meta_data:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getMeta_data()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->meta_data:Ljava/lang/String;

    return-object p0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->package_name:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion_name()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->version_name:Ljava/lang/String;

    return-object p0
.end method

.method public setMeta_data(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->meta_data:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setVersion_name(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->version_name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data{package_name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', version_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->version_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', meta_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->meta_data:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
