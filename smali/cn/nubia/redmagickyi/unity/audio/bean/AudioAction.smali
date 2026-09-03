.class public Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "AudioAction.java"


# static fields
.field public static final ACTION_ADJUST_VOLUME:I = 0x4

.field public static final ACTION_MUTE:I = 0x5

.field public static final ACTION_PAUSE:I = 0x3

.field public static final ACTION_PLAY:I = 0x0

.field public static final ACTION_RELEASE:I = 0x6

.field public static final ACTION_RESUME:I = 0x2

.field public static final ACTION_STOP:I = 0x1

.field public static final TYPE_BGM:I = 0x0

.field public static final TYPE_VOICE:I = 0x1


# instance fields
.field private action:I

.field private motionID:I

.field private params:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    const/16 v0, 0x7d9

    .line 22
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setMsgID(I)V

    .line 23
    iput p1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->type:I

    .line 24
    iput p2, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->action:I

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    iput p2, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->motionID:I

    .line 26
    iput-object p4, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->path:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->params:Ljava/lang/String;

    if-nez p5, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "params cannot be NULL when action type is"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 0

    .line 42
    iget p0, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->action:I

    return p0
.end method

.method public getMotionID()I
    .locals 0

    .line 50
    iget p0, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->motionID:I

    return p0
.end method

.method public getParams()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->params:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 34
    iget p0, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->type:I

    return p0
.end method

.method public setAction(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->action:I

    return-void
.end method

.method public setMotionID(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->motionID:I

    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->params:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->path:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAction{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motionID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->motionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', params=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->params:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
