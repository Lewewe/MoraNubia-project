.class public Lcom/zte/aivoice/tts/audio/bean/AudioAction;
.super Ljava/lang/Object;
.source "AudioAction.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;
    }
.end annotation


# static fields
.field public static final ACTION_ADJUST_VOLUME:I = 0x4

.field public static final ACTION_MUTE:I = 0x5

.field public static final ACTION_PAUSE:I = 0x3

.field public static final ACTION_PLAY:I = 0x0

.field public static final ACTION_RESUME:I = 0x2

.field public static final ACTION_STOP:I = 0x1

.field public static final TYPE_BGM:I = 0x0

.field public static final TYPE_VOICE:I = 0x1


# instance fields
.field private action:I

.field private id:Ljava/lang/String;

.field private params:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private pcmEntity:Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 22
    sget-object v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_MUSIC:Lcn/nubia/redmagickyi/util/AudioStreamType;

    iget-object v0, v0, Lcn/nubia/redmagickyi/util/AudioStreamType;->key:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move-object v6, p2

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->id:Ljava/lang/String;

    .line 39
    iput p1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->type:I

    .line 40
    iput p3, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->action:I

    .line 41
    iput-object p4, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->path:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->pcmEntity:Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    .line 43
    iput-object p6, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->params:Ljava/lang/String;

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ID could not be null when action is ACTION_PLAY"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    .locals 7

    const/4 v4, 0x0

    .line 34
    iget-object v6, p4, Lcn/nubia/redmagickyi/util/AudioStreamType;->key:Ljava/lang/String;

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    .locals 7

    const/4 v5, 0x0

    .line 30
    iget-object v6, p4, Lcn/nubia/redmagickyi/util/AudioStreamType;->key:Ljava/lang/String;

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;
    .locals 1

    .line 117
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;
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

    .line 8
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p0

    return-object p0
.end method

.method public getAction()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->action:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getParams()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->params:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPcmEntity()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->pcmEntity:Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->type:I

    return p0
.end method

.method public setAction(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->action:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->id:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->params:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->path:Ljava/lang/String;

    return-void
.end method

.method public setPcmEntity(Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->pcmEntity:Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAction{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', params=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pcmEntity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->pcmEntity:Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
