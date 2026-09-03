.class public Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;
.super Ljava/lang/Object;
.source "ChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedMsgEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry$EXECUTE_STATUS;,
        Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry$FEEDBACK_STATUS;
    }
.end annotation


# static fields
.field public static final EXECUTE_STATUS_AUDIO2TEXT_BEGIN:I = 0x5

.field public static final EXECUTE_STATUS_AUDIO2TEXT_END:I = 0x6

.field public static final EXECUTE_STATUS_IMG2TEXT_BEGIN:I = 0x3

.field public static final EXECUTE_STATUS_IMG2TEXT_END:I = 0x4

.field public static final EXECUTE_STATUS_TEXT2TEXT_BEGIN:I = 0x1

.field public static final EXECUTE_STATUS_TEXT2TEXT_END:I = 0x2

.field public static final FEEDBACK_STATUS_DOWN:I = 0x2

.field public static final FEEDBACK_STATUS_NO:I = 0x0

.field public static final FEEDBACK_STATUS_UP:I = 0x1


# instance fields
.field private transient contenView:Landroid/widget/TextView;

.field private emoCode:I

.field private executStatus:I

.field private feedbackStatus:I

.field private transient isSaying:Z

.field private lineCount:I

.field private modelType:I

.field private msg:Ljava/lang/String;

.field private transient replacementSpan:Landroid/text/style/ReplacementSpan;

.field private tokens:I

.field private triggerCmd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->msg:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->triggerCmd:Ljava/lang/String;

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->feedbackStatus:I

    .line 230
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->modelType:I

    return-void
.end method


# virtual methods
.method public getContenView()Landroid/widget/TextView;
    .locals 0

    .line 258
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->contenView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getEmoCode()I
    .locals 0

    .line 314
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->emoCode:I

    return p0
.end method

.method public getExecutStatus()I
    .locals 0

    .line 250
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->executStatus:I

    return p0
.end method

.method public getFeedbackStatus()I
    .locals 0

    .line 290
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->feedbackStatus:I

    return p0
.end method

.method public getLineCount()I
    .locals 0

    .line 282
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->lineCount:I

    return p0
.end method

.method public getModelType()I
    .locals 0

    .line 306
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->modelType:I

    return p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    .line 234
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public getReplacementSpan()Landroid/text/style/ReplacementSpan;
    .locals 0

    .line 266
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->replacementSpan:Landroid/text/style/ReplacementSpan;

    return-object p0
.end method

.method public getTokens()I
    .locals 0

    .line 298
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->tokens:I

    return p0
.end method

.method public getTriggerCmd()Ljava/lang/String;
    .locals 0

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->triggerCmd:Ljava/lang/String;

    return-object p0
.end method

.method public isSaying()Z
    .locals 0

    .line 274
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->isSaying:Z

    return p0
.end method

.method public setContenView(Landroid/widget/TextView;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->contenView:Landroid/widget/TextView;

    return-void
.end method

.method public setEmoCode(I)V
    .locals 0

    .line 318
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->emoCode:I

    return-void
.end method

.method public setExecutStatus(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->executStatus:I

    return-void
.end method

.method public setFeedbackStatus(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->feedbackStatus:I

    return-void
.end method

.method public setLineCount(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->lineCount:I

    return-void
.end method

.method public setModelType(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->modelType:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->msg:Ljava/lang/String;

    return-void
.end method

.method public setReplacementSpan(Landroid/text/style/ReplacementSpan;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->replacementSpan:Landroid/text/style/ReplacementSpan;

    return-void
.end method

.method public setSaying(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->isSaying:Z

    return-void
.end method

.method public setTokens(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->tokens:I

    return-void
.end method

.method public setTriggerCmd(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->triggerCmd:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiveMsgBean{msg=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', triggerCmd=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->triggerCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', executStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->executStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contenView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->contenView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replacementSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->replacementSpan:Landroid/text/style/ReplacementSpan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->isSaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->lineCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feedbackStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->feedbackStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->tokens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->modelType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->emoCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
