.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$1;
.super Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;
.source "AccompanyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

.field final synthetic val$callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$Callback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$1;->val$callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$Callback;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    return-void
.end method


# virtual methods
.method public onChatCompleted(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;IZ)Z
    .locals 0

    const/4 p4, 0x1

    if-eqz p5, :cond_3

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1, p5}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 115
    invoke-virtual {p0, p1, p4, p4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    :cond_0
    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p2, p5}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 119
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    const/4 p5, 0x4

    invoke-virtual {p1, p5}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 120
    invoke-virtual {p0, p2, p4, p4}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$1;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    .line 122
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->isAccompanyEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 124
    const-string/jumbo p1, "\u8bf4\u7684"

    const-string/jumbo p2, "\u770b\u8d77\u6765"

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 125
    const-string/jumbo p3, "\u8bb2\u7684"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 126
    const-string/jumbo p3, "\u63cf\u8ff0\u7684"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 128
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onChatCompleted -> reason: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Window-AccompanyManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$1;->val$callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$Callback;

    invoke-interface {p0, p3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$Callback;->onAnalyzeCompleted(Ljava/lang/String;)V

    :cond_3
    return p4
.end method

.method public onChatFailed(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 0

    return-void
.end method
