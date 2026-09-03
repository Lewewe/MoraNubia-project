.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;->onNetStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1497
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1500
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->access$1200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1501
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2$1;->this$3:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager$2;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager$Audio2TextRetryManager;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$ChatManager;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;->access$1200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$3200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
