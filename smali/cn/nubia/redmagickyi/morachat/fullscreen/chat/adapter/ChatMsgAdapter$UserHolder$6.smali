.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$6;
.super Landroid/text/style/ReplacementSpan;
.source "ChatMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->buildTypingSpannable(Ljava/lang/String;I)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 520
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$6;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$6;->val$size:I

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 528
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$6;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->loadingWord:Landroid/view/View;

    iget p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$6;->val$size:I

    int-to-float p2, p2

    add-float/2addr p5, p2

    invoke-virtual {p1, p5}, Landroid/view/View;->setX(F)V

    .line 529
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$6;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->loadingWord:Landroid/view/View;

    int-to-float p1, p7

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 523
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$6;->val$size:I

    return p0
.end method
