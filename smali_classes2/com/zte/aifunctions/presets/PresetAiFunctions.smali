.class public Lcom/zte/aifunctions/presets/PresetAiFunctions;
.super Ljava/lang/Object;
.source "PresetAiFunctions.java"


# static fields
.field private static final PRESETS_AI_FUNCTIONS_JSON:Ljava/lang/String; = "preset_ai_functions.json"

.field private static values:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/zte/aifunctions/presets/PresetAiFunctions;->values:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final values()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;",
            ">;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/zte/aifunctions/presets/PresetAiFunctions;->values:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/zte/aifunctions/presets/PresetAiFunctions;->values:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    new-instance v0, Lcom/zte/aifunctions/presets/PresetAiFunctions$1;

    invoke-direct {v0}, Lcom/zte/aifunctions/presets/PresetAiFunctions$1;-><init>()V

    invoke-virtual {v0}, Lcom/zte/aifunctions/presets/PresetAiFunctions$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "preset_ai_functions.json"

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/FileUtils;->getAssetData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 26
    sget-object v1, Lcom/zte/aifunctions/presets/PresetAiFunctions;->values:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_0
    sget-object v0, Lcom/zte/aifunctions/presets/PresetAiFunctions;->values:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
