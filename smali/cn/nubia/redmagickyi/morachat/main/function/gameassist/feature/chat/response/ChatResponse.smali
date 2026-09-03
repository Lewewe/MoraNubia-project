.class public Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;
.super Ljava/lang/Object;
.source "ChatResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;,
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ListAction;,
        Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;
    }
.end annotation


# instance fields
.field private buttonActions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button_action"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;",
            ">;"
        }
    .end annotation
.end field

.field private clearQueueAndPlayCurrent:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clear_queue_play_current"
    .end annotation
.end field

.field private confirmContent:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confirm_content"
    .end annotation
.end field

.field private history:Ljava/lang/String;

.field private listActions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list_action"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ListAction;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private output:Ljava/lang/String;

.field private outputType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "output_type"
    .end annotation
.end field

.field private sceneId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scene_id"
    .end annotation
.end field

.field private showNotification:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_notification"
    .end annotation
.end field

.field private waitAsr:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wait_asr"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;
    .locals 2

    .line 201
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;

    return-object p0
.end method

.method public static fromJsonBundle(Landroid/os/Bundle;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;
    .locals 1

    .line 205
    const-string v0, "message"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;

    move-result-object p0

    return-object p0
.end method

.method public static isValid(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getOutput()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 221
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getButtonActions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getButtonActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 222
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getButtonActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 223
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getButtonActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    if-nez v1, :cond_4

    if-nez p0, :cond_4

    return v0

    :cond_1
    if-nez v1, :cond_4

    return v0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getListActions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getListActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    if-nez v1, :cond_4

    return v0

    :cond_3
    if-nez v1, :cond_4

    return v0

    :cond_4
    return v2
.end method


# virtual methods
.method public getButtonActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->buttonActions:Ljava/util/List;

    return-object p0
.end method

.method public getHistory()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->history:Ljava/lang/String;

    return-object p0
.end method

.method public getListActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ListAction;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->listActions:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->output:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputType()I
    .locals 0

    .line 68
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->outputType:I

    return p0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->sceneId:Ljava/lang/String;

    return-object p0
.end method

.method public isClearQueueAndPlayCurrent()Z
    .locals 1

    .line 96
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->clearQueueAndPlayCurrent:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConfirmContent()Z
    .locals 1

    .line 88
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->confirmContent:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowNotification()Z
    .locals 1

    .line 84
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->showNotification:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWaitingAsr()Z
    .locals 1

    .line 92
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->waitAsr:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatResponse{output=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->output:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', outputType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->outputType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', sceneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', history=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->history:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', showNotification=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->showNotification:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', confirmContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->confirmContent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', waitAsr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->waitAsr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', clearQueueAndPlayCurrent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->clearQueueAndPlayCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', buttonActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->buttonActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->listActions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
