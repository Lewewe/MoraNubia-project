.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;
.super Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->init()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1159
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    return-void
.end method


# virtual methods
.method public onChatCompleted(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;IZ)Z
    .locals 4

    .line 1235
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getChatSessionType(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    if-eq v0, v1, :cond_6

    const/4 p4, 0x3

    if-eq v0, p4, :cond_0

    return v2

    .line 1285
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 1288
    :cond_1
    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageContent(Ljava/lang/String;)V

    :goto_0
    if-eqz p5, :cond_4

    .line 1291
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1293
    invoke-virtual {p0, p1, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 1294
    invoke-virtual {p0, p2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 1295
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p3, p3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 1296
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p3, p3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    .line 1298
    :cond_2
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p2, p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p3, p3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    sget p4, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_speech_unknown_input:I

    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->toast(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 1301
    const-string p4, "chat_audio:"

    invoke-virtual {p1, p3, p4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0, p1, v3, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 1303
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p3, p3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    new-instance p4, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1$2;

    invoke-direct {p4, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;)V

    invoke-virtual {p0, p3, p1, p2, p4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->startText2TextSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1313
    :cond_4
    invoke-virtual {p0, p1, v3, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 1315
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->getRecordList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1316
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p3, p3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->isItemVisible(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1317
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onChatCompleted(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_5
    return v3

    :cond_6
    if-eqz p5, :cond_7

    .line 1272
    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageContent(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p0, p1, v3, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 1274
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p3, p3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    new-instance p4, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1$1;

    invoke-direct {p4, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;)V

    invoke-virtual {p0, p3, p1, p2, p4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->startText2TextSession(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/Runnable;)V

    :cond_7
    return v3

    :cond_8
    if-eqz p5, :cond_b

    if-eqz p1, :cond_9

    .line 1239
    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 1240
    invoke-virtual {p0, p1, v3, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    :cond_9
    if-eqz p2, :cond_e

    .line 1243
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1244
    invoke-virtual {p2, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 1245
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 1246
    invoke-virtual {p0, p2, v3, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 1248
    :cond_a
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1249
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    goto :goto_2

    .line 1253
    :cond_b
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1254
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setMsg(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setEmoCode(I)V

    .line 1256
    invoke-virtual {p0, p2, v3, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    goto :goto_2

    .line 1258
    :cond_c
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->getRecordList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1259
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setMsg(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setEmoCode(I)V

    .line 1261
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getContenView()Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p3, p3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->isItemVisible(I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 1262
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p3, p3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onChatCompleted(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    .line 1263
    invoke-virtual {p0, p2, v2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    goto :goto_2

    .line 1265
    :cond_d
    invoke-virtual {p0, p2, v3, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    :cond_e
    :goto_2
    return v3
.end method

.method public onChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1162
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->getChatSessionType(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eq p3, v1, :cond_e

    const/4 v3, 0x2

    if-eq p3, v3, :cond_d

    const/4 v3, 0x4

    if-eq p3, v3, :cond_a

    const/4 v0, 0x5

    if-eq p3, v0, :cond_7

    const/4 v0, 0x6

    if-eq p3, v0, :cond_3

    const/4 v0, 0x7

    if-eq p3, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 1223
    invoke-virtual {p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 1225
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1226
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    goto/16 :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 1210
    invoke-virtual {p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 1212
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1213
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 1215
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p0

    if-nez p0, :cond_11

    .line 1216
    :cond_6
    invoke-static {}, Lcom/zte/payment/BillingServiceManager;->getInstance()Lcom/zte/payment/BillingServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/payment/BillingServiceManager;->startUserLoginActivity()V

    goto/16 :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 1199
    invoke-virtual {p0, p1, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->removeRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V

    .line 1201
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1202
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    .line 1204
    :cond_9
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_session_error_message:I

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->toast(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    if-eqz v2, :cond_b

    .line 1185
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 1186
    invoke-virtual {p0, p1, v1, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 1187
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->access$3400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;->access$3600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    goto/16 :goto_1

    .line 1189
    :cond_b
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1190
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    .line 1192
    :cond_c
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_session_error_message:I

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->toast(Ljava/lang/String;)V

    goto :goto_1

    .line 1165
    :cond_d
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1166
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    goto :goto_1

    :cond_e
    if-eqz v2, :cond_f

    .line 1172
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 1173
    invoke-virtual {p0, p1, v1, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 1174
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->access$3400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;->access$3500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    goto :goto_1

    .line 1176
    :cond_f
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1177
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onEndExcute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    .line 1179
    :cond_10
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->toast(Ljava/lang/String;)V

    :cond_11
    :goto_1
    return-void
.end method

.method public onDataInserted(I)V
    .locals 1

    .line 1327
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onDataInserted(I)V

    :cond_0
    return-void
.end method

.method public onDataRangeChanged()V
    .locals 1

    .line 1348
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onDataRangeChanged()V

    :cond_0
    return-void
.end method

.method public onDataRemoved(I)V
    .locals 1

    .line 1334
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onDataRemoved(I)V

    :cond_0
    return-void
.end method

.method public onDataUpdated(I)V
    .locals 1

    .line 1341
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->onDataUpdated(I)V

    :cond_0
    return-void
.end method

.method public stopAudio2TextSession(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 1

    .line 1355
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->access$3400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->access$3400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;->access$3700(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;)V

    .line 1358
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->access$3400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;->access$3800(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;)V

    .line 1360
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->stopAudio2TextSession(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    return-void
.end method
