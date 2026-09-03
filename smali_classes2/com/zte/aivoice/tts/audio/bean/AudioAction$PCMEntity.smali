.class public Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;
.super Ljava/lang/Object;
.source "AudioAction.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/audio/bean/AudioAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCMEntity"
.end annotation


# static fields
.field public static final TYPE_END:I = 0x3

.field public static final TYPE_HEAD:I = 0x1

.field public static final TYPE_MIDDLE:I = 0x2


# instance fields
.field public outputSimpleRate:I

.field public pcmData:[B

.field public sentenceCount:I

.field public type:I


# direct methods
.method public constructor <init>(I[BII)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->type:I

    .line 137
    iput-object p2, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->pcmData:[B

    .line 138
    iput p3, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->sentenceCount:I

    .line 139
    iput p4, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->outputSimpleRate:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;
    .locals 1

    .line 155
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PCMEntity{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pcmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->pcmData:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sentenceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->sentenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputSimpleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->outputSimpleRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
