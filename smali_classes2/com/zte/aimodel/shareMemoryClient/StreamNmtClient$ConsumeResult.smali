.class Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;
.super Ljava/lang/Object;
.source "StreamNmtClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsumeResult"
.end annotation


# instance fields
.field private final data:[B

.field private final index:I

.field private final isFinal:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;)[B
    .locals 0

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->data:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetindex(Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;)I
    .locals 0

    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->index:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisFinal(Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->isFinal:Z

    return p0
.end method

.method public constructor <init>([BIZ)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->data:[B

    .line 171
    iput p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->index:I

    .line 172
    iput-boolean p3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->isFinal:Z

    return-void
.end method


# virtual methods
.method public data()[B
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->data:[B

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 191
    :cond_1
    check-cast p1, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;

    .line 192
    iget v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->index:I

    iget v3, p1, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->index:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->isFinal:Z

    iget-boolean v3, p1, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->isFinal:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->data:[B

    iget-object p1, p1, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->data:[B

    .line 194
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->isFinal:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public index()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->index:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->isFinal:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConsumeResult{data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->data:[B

    .line 205
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$ConsumeResult;->isFinal:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
