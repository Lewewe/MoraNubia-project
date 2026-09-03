.class public Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;
.super Ljava/lang/Object;
.source "SerialTTSResult.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;",
        ">;"
    }
.end annotation


# instance fields
.field private byteArrayList:[B

.field private serial:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;->serial:I

    .line 9
    iput-object p2, p0, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;->byteArrayList:[B

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;->serial:I

    iget p1, p1, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;->serial:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;->compareTo(Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;)I

    move-result p0

    return p0
.end method

.method public getByteArrayList()[B
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/SerialTTSResult;->byteArrayList:[B

    return-object p0
.end method
