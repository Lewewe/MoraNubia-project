.class synthetic Lcom/zte/aimodel/shareMemoryClient/StreamClient$1;
.super Ljava/lang/Object;
.source "StreamClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/shareMemoryClient/StreamClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zte$aimodel$sharedmemory$ChainType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 222
    invoke-static {}, Lcom/zte/aimodel/sharedmemory/ChainType;->values()[Lcom/zte/aimodel/sharedmemory/ChainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$1;->$SwitchMap$com$zte$aimodel$sharedmemory$ChainType:[I

    :try_start_0
    sget-object v1, Lcom/zte/aimodel/sharedmemory/ChainType;->ASR:Lcom/zte/aimodel/sharedmemory/ChainType;

    invoke-virtual {v1}, Lcom/zte/aimodel/sharedmemory/ChainType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$1;->$SwitchMap$com$zte$aimodel$sharedmemory$ChainType:[I

    sget-object v1, Lcom/zte/aimodel/sharedmemory/ChainType;->TTS:Lcom/zte/aimodel/sharedmemory/ChainType;

    invoke-virtual {v1}, Lcom/zte/aimodel/sharedmemory/ChainType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$1;->$SwitchMap$com$zte$aimodel$sharedmemory$ChainType:[I

    sget-object v1, Lcom/zte/aimodel/sharedmemory/ChainType;->NMT:Lcom/zte/aimodel/sharedmemory/ChainType;

    invoke-virtual {v1}, Lcom/zte/aimodel/sharedmemory/ChainType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$1;->$SwitchMap$com$zte$aimodel$sharedmemory$ChainType:[I

    sget-object v1, Lcom/zte/aimodel/sharedmemory/ChainType;->DUAL:Lcom/zte/aimodel/sharedmemory/ChainType;

    invoke-virtual {v1}, Lcom/zte/aimodel/sharedmemory/ChainType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
