.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatItemListener"
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 798
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$1;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)V

    return-void
.end method


# virtual methods
.method public onCopyClicked(Ljava/lang/String;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/ClipboardUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 803
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_copy_success:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public onFeedbackThumbChanged(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 2

    .line 808
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$2600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->onFeedbackThumbChanged(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/feedback/FeedbackCallback;)V

    return-void
.end method

.method public onTTSClicked(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 836
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->isSaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 838
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->startTTS(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    goto :goto_0

    .line 840
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$SpeechManager;->stopTTS(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserItemErrorClicked(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 3

    .line 847
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>(ILjava/lang/String;)V

    .line 848
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachmentFull()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setAttachmentFull(Ljava/lang/String;)V

    .line 849
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Z

    return-void
.end method

.method public onUserItemImageClicked(Landroid/view/View;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 3

    .line 854
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isPicAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachment()Ljava/lang/String;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Landroid/app/Activity;

    move-result-object p0

    new-instance v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;

    invoke-direct {v2, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, v2, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper;->createSimpleImage(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageInfo;Landroid/view/View;Z)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->launch(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;)V

    :cond_1
    return-void
.end method

.method public onUserItemProcessingWord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 2

    .line 862
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$2600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->getRecordList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 863
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->isItemVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$ChatItemListener;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->onChatCompleted(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_0
    return-void
.end method
