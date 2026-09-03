.class Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;
.super Landroid/os/Handler;
.source "VideoEditorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/VideoEditorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;Lcn/nubia/redmagickyi/crop/VideoEditorHelper$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;-><init>(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 88
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$300(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$300(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$100(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$200(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$302(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;Landroid/view/View;)Landroid/view/View;

    .line 95
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorHelper$MyHandler;->this$0:Lcn/nubia/redmagickyi/crop/VideoEditorHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorHelper;->access$400(Lcn/nubia/redmagickyi/crop/VideoEditorHelper;)Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onFinish()V

    :cond_2
    :goto_0
    return-void
.end method
