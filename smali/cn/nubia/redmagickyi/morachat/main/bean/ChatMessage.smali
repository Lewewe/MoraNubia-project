.class public Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;
.super Ljava/lang/Object;
.source "ChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;,
        Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ATTACHMENT_TYPE;,
        Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$MSG_TYPE;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_TYPE_AUDIO:Ljava/lang/String; = "chat_audio:"

.field public static final ATTACHMENT_TYPE_FILE:Ljava/lang/String; = "chat_file:"

.field public static final ATTACHMENT_TYPE_IMG:Ljava/lang/String; = "chat_img:"

.field public static final MSG_TYPE_BOT:I = 0x2

.field public static final MSG_TYPE_HISTORY_TIP:I = 0x0

.field public static final MSG_TYPE_USER:I = 0x1


# instance fields
.field private attachment:Ljava/lang/String;

.field private createTime:J

.field private executeCode:I

.field private messageContent:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private messageType:I

.field private modifyTime:J

.field private receivedMsgEntry:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->createTime:J

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->modifyTime:J

    .line 50
    invoke-static {}, Lcom/zte/payment/common/PaymentUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->userId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>()V

    .line 55
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->executeCode:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    .line 57
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->executeCode:I

    .line 61
    :goto_1
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttachment()Ljava/lang/String;
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isPicAttachment()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    const-string v0, "chat_img:"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isFileAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    const-string v0, "chat_file:"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isAudioAttachment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    const-string v0, "chat_audio:"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    return-object p0
.end method

.method public getAttachmentFull()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    return-object p0
.end method

.method public getCreateTime()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->createTime:J

    return-wide v0
.end method

.method public getExecuteCode()I
    .locals 0

    .line 171
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->executeCode:I

    return p0
.end method

.method public getMessageContent()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageContent:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageId:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageType()I
    .locals 0

    .line 89
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageType:I

    return p0
.end method

.method public getModifyTime()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->modifyTime:J

    return-wide v0
.end method

.method public getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;
    .locals 0

    .line 65
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->receivedMsgEntry:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public isAudioAttachment()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    const-string v0, "chat_audio:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFileAttachment()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    const-string v0, "chat_file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPicAttachment()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    const-string v0, "chat_img:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    const-string v0, "chat_img:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chat_file:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chat_audio:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setAttachmentFull(Ljava/lang/String;)V

    return-void
.end method

.method public setAttachmentFull(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->createTime:J

    return-void
.end method

.method public setExecuteCode(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->executeCode:I

    return-void
.end method

.method public setMessageContent(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageContent:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageType:I

    return-void
.end method

.method public setModifyTime(J)V
    .locals 0

    .line 117
    iput-wide p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->modifyTime:J

    return-void
.end method

.method public setReceivedMsgEntry(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->receivedMsgEntry:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AIGCMsgData{messageId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->messageContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->modifyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executeCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->executeCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attachment=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->attachment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', receiveMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->receivedMsgEntry:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
