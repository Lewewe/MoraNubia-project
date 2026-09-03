.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;->val$this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 262
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;->val$itemView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->morachat_fs_chat_item_data_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    instance-of v0, p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivSend:Landroid/widget/ImageView;

    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-interface {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;->onUserItemImageClicked(Landroid/view/View;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_0
    return-void
.end method
