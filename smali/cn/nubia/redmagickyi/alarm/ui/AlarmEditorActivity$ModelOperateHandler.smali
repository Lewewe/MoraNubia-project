.class Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;
.super Landroid/os/Handler;
.source "AlarmEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModelOperateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 843
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 846
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x138d

    if-eq v0, v1, :cond_2

    const/16 p1, 0x138e

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$700(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)V

    .line 864
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    iget-boolean p1, p1, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->isEditor:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$500(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$500(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAction_id()I

    move-result p1

    if-ltz p1, :cond_4

    .line 865
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->ScrollToPos()V

    goto :goto_0

    .line 848
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    .line 849
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 850
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 851
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getDuration()I

    move-result v3

    if-le p1, v3, :cond_3

    return-void

    .line 854
    :cond_3
    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;->access$600(Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    move-result-object v3

    add-int/lit8 p1, p1, 0x1e

    const/4 v4, 0x1

    invoke-virtual {v3, v2, p1, v4}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->setPlayProgress(IIZ)V

    .line 855
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 856
    iput v1, v3, Landroid/os/Message;->what:I

    .line 857
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 858
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 859
    iput p1, v3, Landroid/os/Message;->arg2:I

    const-wide/16 v0, 0x1e

    .line 860
    invoke-virtual {p0, v3, v0, v1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity$ModelOperateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_0
    return-void
.end method
