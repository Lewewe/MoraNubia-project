.class Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;
.super Ljava/lang/Object;
.source "StreamTtsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioOutData"
.end annotation


# instance fields
.field final data:[B

.field final endTag:Z

.field final index:I


# direct methods
.method constructor <init>(Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;I[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;->index:I

    .line 540
    iput-object p3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;->data:[B

    .line 541
    iput-boolean p4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;->endTag:Z

    return-void
.end method
