.class Lcn/nubia/redmagickyi/pose/pc/PoseActivity$10;
.super Ljava/lang/Object;
.source "PoseActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$10;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 378
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xbb9

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$10;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->removeMessages(I)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$10;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->removeMessages(I)V

    .line 381
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$10;->this$0:Lcn/nubia/redmagickyi/pose/pc/PoseActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity;->access$000(Lcn/nubia/redmagickyi/pose/pc/PoseActivity;)Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p2, v0, v1}, Lcn/nubia/redmagickyi/pose/pc/PoseActivity$PoseHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
