.class Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;
.super Landroid/os/Handler;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 186
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$000(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 187
    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$002(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;I)I

    if-eqz v1, :cond_0

    .line 189
    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {v2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$300(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 195
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$400(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/os/Handler;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 200
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_3

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->access$500(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->finishScrolling()V

    :goto_0
    return-void
.end method
