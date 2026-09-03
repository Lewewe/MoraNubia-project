.class Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guide/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$000(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$002(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;Z)Z

    .line 158
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$202(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;I)I

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->invalidate()V

    return-void
.end method

.method public onJustify()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$200(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$300(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$200(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroll(II)V

    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;I)V

    .line 141
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result p1

    .line 142
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$200(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$202(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;I)I

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$300(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->stopScrolling()V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$200(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)I

    move-result v0

    neg-int p1, p1

    if-ge v0, p1, :cond_1

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$202(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;I)I

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$300(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->stopScrolling()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->access$002(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;Z)Z

    .line 134
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->notifyScrollingListenersAboutStart()V

    return-void
.end method
