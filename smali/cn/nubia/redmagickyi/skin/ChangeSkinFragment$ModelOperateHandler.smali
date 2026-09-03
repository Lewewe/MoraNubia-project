.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;
.super Landroid/os/Handler;
.source "ChangeSkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModelOperateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1214
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1217
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x138d

    if-eq v0, v1, :cond_1

    const/16 p1, 0x138e

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAdapter:Lcn/nubia/redmagickyi/adapter/ActionAdapter;

    if-eqz p1, :cond_3

    .line 1235
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$1500(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    goto :goto_0

    .line 1219
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    .line 1220
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1221
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1222
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getDuration()I

    move-result v3

    if-le p1, v3, :cond_2

    return-void

    .line 1225
    :cond_2
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object v3, v3, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->actionAdapter:Lcn/nubia/redmagickyi/adapter/ActionAdapter;

    add-int/lit8 p1, p1, 0x1e

    const/4 v4, 0x1

    invoke-virtual {v3, v2, p1, v4}, Lcn/nubia/redmagickyi/adapter/ActionAdapter;->setPlayProgress(IIZ)V

    .line 1226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1227
    iput v1, v3, Landroid/os/Message;->what:I

    .line 1228
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1229
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 1230
    iput p1, v3, Landroid/os/Message;->arg2:I

    const-wide/16 v0, 0x1e

    .line 1231
    invoke-virtual {p0, v3, v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ModelOperateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_0
    return-void
.end method
