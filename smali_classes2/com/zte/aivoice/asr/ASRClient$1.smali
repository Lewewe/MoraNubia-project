.class synthetic Lcom/zte/aivoice/asr/ASRClient$1;
.super Ljava/lang/Object;
.source "ASRClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/asr/ASRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$zte$aivoice$asr$ASRSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    invoke-static {}, Lcom/zte/aivoice/asr/ASRSource;->values()[Lcom/zte/aivoice/asr/ASRSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zte/aivoice/asr/ASRClient$1;->$SwitchMap$com$zte$aivoice$asr$ASRSource:[I

    :try_start_0
    sget-object v1, Lcom/zte/aivoice/asr/ASRSource;->Microsoft:Lcom/zte/aivoice/asr/ASRSource;

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/ASRSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/zte/aivoice/asr/ASRClient$1;->$SwitchMap$com$zte$aivoice$asr$ASRSource:[I

    sget-object v1, Lcom/zte/aivoice/asr/ASRSource;->Google:Lcom/zte/aivoice/asr/ASRSource;

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/ASRSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
