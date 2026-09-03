.class public Lcom/zte/aifunctions/metadata/cache/CacheEntry;
.super Ljava/lang/Object;
.source "CacheEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;
    }
.end annotation


# instance fields
.field private SystemUI_pid:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/zte/aifunctions/metadata/cache/CacheEntry;
    .locals 5

    .line 92
    new-instance v0, Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    invoke-direct {v0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getSystemUI_pid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->setSystemUI_pid(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->setData(Ljava/util/List;)V

    .line 96
    invoke-virtual {p0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;

    .line 97
    new-instance v2, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;

    invoke-virtual {v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getVersion_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;->getMeta_data()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->clone()Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    check-cast p1, Lcom/zte/aifunctions/metadata/cache/CacheEntry;

    .line 108
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->data:Ljava/util/List;

    iget-object p1, p1, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->data:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->data:Ljava/util/List;

    return-object p0
.end method

.method public getSystemUI_pid()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->SystemUI_pid:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/cache/CacheEntry$Data;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->data:Ljava/util/List;

    return-void
.end method

.method setSystemUI_pid(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->SystemUI_pid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheEntry{SystemUI_pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->SystemUI_pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aifunctions/metadata/cache/CacheEntry;->data:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
