.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$HistoryTipHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChatMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryTipHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

.field public tvSystemMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;Landroid/view/View;)V
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

    .line 229
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$HistoryTipHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    .line 230
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 231
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_system_msg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$HistoryTipHolder;->tvSystemMsg:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bind(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$HistoryTipHolder;->tvSystemMsg:Landroid/widget/TextView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$HistoryTipHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object p0

    if-nez p2, :cond_0

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_history_tips_1:I

    goto :goto_0

    :cond_0
    sget p2, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_history_tips_2:I

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
