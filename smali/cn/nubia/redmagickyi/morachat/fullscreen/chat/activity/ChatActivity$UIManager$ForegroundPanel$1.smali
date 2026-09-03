.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->initView(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 664
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 670
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$2300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;Ljava/lang/String;)V

    .line 671
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$1600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    .line 672
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$2400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 673
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$2500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->notifyDataSetChanged()V

    .line 674
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel$1;->this$2:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;->access$2402(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatActivity$UIManager$ForegroundPanel;I)I

    :cond_0
    return-void
.end method
