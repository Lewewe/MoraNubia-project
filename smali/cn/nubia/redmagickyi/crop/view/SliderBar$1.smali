.class Lcn/nubia/redmagickyi/crop/view/SliderBar$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SliderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/view/SliderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/view/SliderBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 420
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {v1, v0, p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$000(Lcn/nubia/redmagickyi/crop/view/SliderBar;II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 421
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {p1, v3}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$102(Lcn/nubia/redmagickyi/crop/view/SliderBar;Z)Z

    .line 422
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$300(Lcn/nubia/redmagickyi/crop/view/SliderBar;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$202(Lcn/nubia/redmagickyi/crop/view/SliderBar;J)J

    .line 423
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->invalidate()V

    .line 424
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$400(Lcn/nubia/redmagickyi/crop/view/SliderBar;)Lcn/nubia/redmagickyi/crop/view/SliderBar$Listener;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$300(Lcn/nubia/redmagickyi/crop/view/SliderBar;)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-interface {p1, v2, p0}, Lcn/nubia/redmagickyi/crop/view/SliderBar$Listener;->onLongPress(II)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {v1, v0, p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$000(Lcn/nubia/redmagickyi/crop/view/SliderBar;II)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 426
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {p1, v3}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$102(Lcn/nubia/redmagickyi/crop/view/SliderBar;Z)Z

    .line 427
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$500(Lcn/nubia/redmagickyi/crop/view/SliderBar;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$202(Lcn/nubia/redmagickyi/crop/view/SliderBar;J)J

    .line 428
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->invalidate()V

    .line 429
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$400(Lcn/nubia/redmagickyi/crop/view/SliderBar;)Lcn/nubia/redmagickyi/crop/view/SliderBar$Listener;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/SliderBar$1;->this$0:Lcn/nubia/redmagickyi/crop/view/SliderBar;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/SliderBar;->access$500(Lcn/nubia/redmagickyi/crop/view/SliderBar;)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-interface {p1, v2, p0}, Lcn/nubia/redmagickyi/crop/view/SliderBar$Listener;->onLongPress(II)V

    :cond_1
    :goto_0
    return-void
.end method
