.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->startWords(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

.field final synthetic val$duration:I

.field final synthetic val$isNeedShowWords:Z

.field final synthetic val$words:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 90
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->val$words:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->val$duration:I

    iput-boolean p4, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->val$isNeedShowWords:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->val$words:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->val$duration:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$OperatorPanel;->showCaption(Ljava/lang/String;I)V

    .line 94
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->val$isNeedShowWords:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->stopWords()V

    :goto_0
    return-void
.end method
