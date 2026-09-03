.class public Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper;
.super Ljava/lang/Object;
.source "AiFunctionMetaDataMapper.java"


# static fields
.field private static values:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper;->values:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMetaData(Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;Ljava/util/Map;)Lcom/zte/aifunctions/metadata/entry/MetaData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;",
            ">;>;)",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;->getPackage_name()[Ljava/lang/String;

    move-result-object v0

    .line 57
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 58
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 60
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/aifunctions/metadata/entry/MetaData;

    .line 61
    invoke-virtual {p0}, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;->getFunction_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/zte/aifunctions/metadata/entry/MetaData;->getFunctionKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAiFunctionPackagesName(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 44
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;

    .line 45
    invoke-virtual {v1}, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;->getPackage_name()[Ljava/lang/String;

    move-result-object v1

    .line 46
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 47
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 48
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static registerDataSetChangedListener(Lcom/zte/aifunctions/metadata/IDataListener;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/zte/aifunctions/metadata/MetaDataReader;->getInstance()Lcom/zte/aifunctions/metadata/MetaDataReader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/aifunctions/metadata/MetaDataReader;->registerDataSetChangedListener(Lcom/zte/aifunctions/metadata/IDataListener;)V

    return-void
.end method

.method public static final values()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/zte/aifunctions/presets/PresetAiFunctions;->values()Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/zte/aifunctions/metadata/MetaDataReader;->getInstance()Lcom/zte/aifunctions/metadata/MetaDataReader;

    move-result-object v1

    invoke-static {v0}, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper;->getAiFunctionPackagesName(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/aifunctions/metadata/MetaDataReader;->getData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 27
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;

    .line 29
    invoke-static {v3, v1}, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper;->findMetaData(Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;Ljava/util/Map;)Lcom/zte/aifunctions/metadata/entry/MetaData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 31
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper;->values:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper$1;

    invoke-direct {v1, v2}, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
